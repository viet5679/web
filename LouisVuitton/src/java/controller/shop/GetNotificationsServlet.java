package controller.shop;

import com.google.gson.Gson;
import dal.NotificationDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import java.util.Collections;
import model.Notifications;
import model.Users;

@WebServlet(name = "GetNotificationsServlet", urlPatterns = {"/notification"})
public class GetNotificationsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(false); // Không tạo session mới
        Users user = new Users();

        if (session == null) {
            System.out.println("Session là null!");
        } else {
            Object userObj = session.getAttribute("user");
            if (userObj == null) {
                System.out.println("User từ session: null");
            } else {
                user = (Users) userObj;
                System.out.println("Lấy user từ session thành công! ID: " + user.getId());
            }
        }

        NotificationDAO notiDAO = new NotificationDAO();
        List<Notifications> notifications = notiDAO.getAllNotifications(user.getId());

        Gson gson = new Gson();
        String json = gson.toJson(Collections.singletonMap("notifications", notifications));

        try (PrintWriter out = response.getWriter()) {
            out.write(json);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Người dùng chưa đăng nhập");
            return;
        }

        Users user = (Users) session.getAttribute("user");
        NotificationDAO notiDAO = new NotificationDAO();
        boolean success = notiDAO.markAllAsRead(user.getId());

        // Trả về JSON response
        try (PrintWriter out = response.getWriter()) {
            out.print("{\"status\": \"" + (success ? "success" : "error") + "\"}");
        }
    }
}
