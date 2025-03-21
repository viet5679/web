/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.NotificationDAO;
import jakarta.servlet.ServletException;
import model.admin.Alert;
import model.admin.Log;
import model.admin.Message;

/**
 *
 * @author adim
 */

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import java.io.IOException;
import java.util.List;

@WebFilter("/admin/*") // Áp dụng cho tất cả các request
public class NotificationServlet implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        NotificationDAO notiDAO = new NotificationDAO();
        try {
            // Lấy dữ liệu thông báo
            List<Alert> alerts = notiDAO.getAlerts();
            List<Message> messages = notiDAO.getMessages();
            List<Log> logs = notiDAO.getLogs();

            // Đặt dữ liệu vào request attribute
            request.setAttribute("alerts", alerts);
            request.setAttribute("messages", messages);
            request.setAttribute("logs", logs);

            // Tiếp tục xử lý request
            chain.doFilter(request, response);
        } catch (Exception e) {
            throw new ServletException("Error retrieving notifications", e);
        }
    }

    @Override
    public void destroy() {
        // Cleanup if needed
    }
}