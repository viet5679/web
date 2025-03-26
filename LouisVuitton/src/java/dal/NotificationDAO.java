package dal;

// @author xu4nvi3t
import model.admin.Alert;
import model.admin.Message;
import model.admin.Log;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import model.Notifications;

public class NotificationDAO extends DBContext {

    private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public List<Alert> getAlerts() throws Exception {
        List<Alert> alerts = new ArrayList<>();
        // 1. Đơn hàng mới đặt (trong vòng 24 giờ)
        String newOrderQuery = "SELECT TOP 5 * FROM orders WHERE created_at >= DATEADD(hour, -24, GETDATE()) ORDER BY created_at DESC";
        try (PreparedStatement stmt = connection.prepareStatement(newOrderQuery); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                String formattedDate = DATE_FORMAT.format(rs.getTimestamp("created_at"));
                alerts.add(new Alert(
                        rs.getInt("id"),
                        "New order #" + rs.getInt("id") + " has been placed",
                        "A new order has been placed on " + formattedDate + " with total price: " + rs.getDouble("total_price"),
                        rs.getTimestamp("created_at"),
                        "success"
                ));
            }
        }

        // 2. Đơn hàng bị hủy (status = 'cancelled')
        String cancelledQuery = "SELECT TOP 5 o.*, u.name AS user_name FROM orders o JOIN users u ON o.user_id = u.id WHERE o.status = 'cancelled' ORDER BY o.updated_at DESC";
        try (PreparedStatement stmt = connection.prepareStatement(cancelledQuery); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                String formattedDate = DATE_FORMAT.format(rs.getTimestamp("updated_at"));
                alerts.add(new Alert(
                        rs.getInt("id"),
                        "Order #" + rs.getInt("id") + " has been cancelled",
                        "Order #" + rs.getInt("id") + " has been cancelled by " + rs.getString("user_name") + " on " + formattedDate,
                        rs.getTimestamp("updated_at"),
                        "warn"
                ));
            }
        }

        // 3. Đánh giá thấp (number_starts < 3)
        String lowRatingQuery = "SELECT TOP 5 r.*, p.name AS product_name FROM rating r JOIN products p ON r.product_id = p.id WHERE r.number_starts < 3 ORDER BY r.created_at DESC";
        try (PreparedStatement stmt = connection.prepareStatement(lowRatingQuery); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                alerts.add(new Alert(
                        0, // Bỏ id vì không tồn tại
                        "Low rating for product: " + rs.getString("product_name"),
                        "Customer rated " + rs.getInt("number_starts") + " stars: " + rs.getString("description"),
                        rs.getTimestamp("created_at"),
                        "warn"
                ));
            }
        }

        // 4. Đơn hàng quá hạn (status = 'pending' và quá 7 ngày)
        String overdueQuery = "SELECT * FROM orders WHERE status = 'pending' AND created_at < DATEADD(day, -7, GETDATE())";
        try (PreparedStatement stmt = connection.prepareStatement(overdueQuery); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                String formattedDate = DATE_FORMAT.format(rs.getTimestamp("created_at"));
                alerts.add(new Alert(
                        rs.getInt("id"),
                        "Order #" + rs.getInt("id") + " is overdue",
                        "Please process this order placed on " + formattedDate,
                        rs.getTimestamp("created_at"),
                        "warn"
                ));
            }
        }
        return alerts;
    }

    public List<Message> getMessages() throws Exception {
        List<Message> messages = new ArrayList<>();

        //1. Ghi chú của đơn hàng mới đặt (trong vòng 24 giờ)
        String orderNoteQuery = "SELECT TOP 5 o.*, u.name AS user_name, u.avatar, u.updated_at AS user_updated_at "
                + "FROM orders o JOIN users u ON o.user_id = u.id "
                + "WHERE o.created_at >= DATEADD(hour, -24, GETDATE()) AND o.comments IS NOT NULL "
                + "ORDER BY o.created_at DESC";
        try (PreparedStatement stmt = connection.prepareStatement(orderNoteQuery); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                String status = "offline";
                if (rs.getTimestamp("user_updated_at") != null) {
                    long diff = new Date().getTime() - rs.getTimestamp("user_updated_at").getTime();
                    if (diff < 5 * 60 * 1000) { // Dưới 5 phút
                        status = "online";
                    }
                }
                List<String> files = Collections.emptyList();
                String note = rs.getString("comments");
                String messageContent = "Customer Note for Order #" + rs.getInt("id") + ": " + note;
                messages.add(new Message(
                        rs.getInt("id"),
                        rs.getString("user_name"),
                        rs.getString("avatar") != null ? rs.getString("avatar") : "assets/images/user/default.jpg",
                        messageContent,
                        rs.getTimestamp("created_at"),
                        status,
                        files
                ));
            }
        }
        return messages;
    }

    public List<Log> getLogs() throws Exception {
        List<Log> logs = new ArrayList<>();

        // 1. Đơn hàng được giao (status = 'delivered')
        String deliveredQuery = "SELECT TOP 5 * FROM orders WHERE status = 'delivered' ORDER BY updated_at DESC";
        try (PreparedStatement stmt = connection.prepareStatement(deliveredQuery); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                String formattedDate = DATE_FORMAT.format(rs.getTimestamp("updated_at"));
                logs.add(new Log(
                        rs.getInt("id"),
                        "Order #" + rs.getInt("id") + " delivered",
                        "Order has been delivered to the customer on " + formattedDate,
                        rs.getTimestamp("updated_at"),
                        Collections.emptyList()
                ));
            }
        }

        // 2. Đánh giá mới
        String ratingQuery = "SELECT TOP 5 r.*, p.name AS product_name FROM rating r JOIN products p ON r.product_id = p.id ORDER BY r.created_at DESC";
        try (PreparedStatement stmt = connection.prepareStatement(ratingQuery); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                logs.add(new Log(
                        0, // Bỏ id vì không tồn tại
                        "New rating for product: " + rs.getString("product_name"),
                        "Customer rated " + rs.getInt("number_starts") + " stars: " + rs.getString("description"),
                        rs.getTimestamp("created_at"),
                        Collections.emptyList()
                ));
            }
        }

        // 3. Phản hồi mới
        String feedbackQuery = "SELECT TOP 5 * FROM feedback ORDER BY created_at DESC";
        try (PreparedStatement stmt = connection.prepareStatement(feedbackQuery); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                int feedbackId;
                try {
                    feedbackId = rs.getInt("id");
                } catch (Exception e) {
                    feedbackId = 0;
                    System.err.println("Cột 'id' không tồn tại trong bảng feedback: " + e.getMessage());
                }
                logs.add(new Log(
                        feedbackId,
                        "New feedback from " + rs.getString("name"),
                        rs.getString("content"),
                        rs.getTimestamp("created_at"),
                        Collections.emptyList()
                ));
            }
        }
        return logs;
    }

    public boolean addNotification(int userId, int orderId, String message) {
        try {
            String sql = "INSERT INTO notifications (user_id, order_id, message, is_read) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, userId);
            stmt.setInt(2, orderId);
            stmt.setString(3, message);
            stmt.setBoolean(4, false); // ✅ Truyền giá trị `false` đúng cách
            stmt.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean markAllAsRead(int userId) {
        String sql = "UPDATE notifications SET is_read = 1 WHERE user_id = ?";

        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, userId);
            int affectedRows = stmt.executeUpdate();

            return affectedRows > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public int getUnreadNotificationCount(int userId) {
        String sql = "SELECT COUNT(*) FROM notifications WHERE user_id = ? AND status = 0";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<Notifications> getAllNotifications(int userId) {
        List<Notifications> notifications = new ArrayList<>();
        String sql = "SELECT id, order_id, message, is_read, created_at FROM notifications WHERE user_id = ? AND is_read = 0 ORDER BY created_at DESC";

        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                notifications.add(new Notifications(
                        rs.getInt("id"),
                        rs.getInt("order_id"),
                        rs.getString("message"),
                        rs.getInt("is_read"),
                        rs.getString("created_at")
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return notifications;
    }

}
