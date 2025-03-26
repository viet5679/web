
package utils;

 // @author xu4nvi3t

import dal.NotificationDAO;
import model.Notifications;
import java.sql.SQLException;
import java.util.List;
import jakarta.servlet.http.HttpSession;

public class NotificationUtils {

    private static final NotificationDAO notificationDAO = new NotificationDAO();

    public static void loadNotifications(HttpSession session) throws SQLException {
        Integer userId = (Integer) session.getAttribute("userId");
        if (userId != null) {
            int unreadCount = notificationDAO.getUnreadNotificationCount(userId);
            List<Notifications> notifications = notificationDAO.getAllNotifications(userId);
            
            session.setAttribute("unreadNotifications", unreadCount);
            session.setAttribute("notifications", notifications);
        }
    }
}

