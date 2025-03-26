package controller.shop;

import jakarta.websocket.*;
import jakarta.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@ServerEndpoint("/notifications")
public class NotificationSocket {

    // Lưu danh sách userId và session
    private static final Map<Integer, Session> userSessions = new ConcurrentHashMap<>();

    @OnOpen
    public void onOpen(Session session) {
        System.out.println("🔌 Client connected: " + session.getId());
    }

    @OnMessage
    public void onMessage(String message, Session session) {
        try {
            int userId = Integer.parseInt(message);

            // Nếu userId đã có session trước đó, đóng session cũ trước khi thay thế
            if (userSessions.containsKey(userId)) {
                try {
                    userSessions.get(userId).close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            // Lưu session mới
            userSessions.put(userId, session);
            System.out.println("✅ User " + userId + " đã kết nối WebSocket!");
            System.out.println("👥 Danh sách user online: " + userSessions.keySet());

        } catch (Exception e) {
            System.err.println("❌ Lỗi nhận userId từ WebSocket: " + message);
        }
    }

    @OnClose
    public void onClose(Session session) {
        // Xóa session khi client ngắt kết nối
        userSessions.values().remove(session);
        System.out.println("🔴 Client disconnected: " + session.getId());
    }

    // Gửi thông báo đến đúng userId
    public static void sendNotification(int userId, String message) {
        if (userSessions.containsKey(userId)) {
            try {
                userSessions.get(userId).getBasicRemote().sendText(message);
                System.out.println("📢 Gửi thông báo tới userId " + userId + ": " + message);
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("⚠ Không tìm thấy userId " + userId + " trên WebSocket!");
        }
    }
}
