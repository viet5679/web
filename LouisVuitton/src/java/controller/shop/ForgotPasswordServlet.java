package controller.shop;

import dal.UserDAO;
import java.io.IOException;
import java.util.Properties;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.security.SecureRandom;
import java.util.Base64;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import utils.CartWishlistUtils;

@WebServlet(name = "ForgotPasswordServlet", urlPatterns = {"/forgot-password"})
public class ForgotPasswordServlet extends HttpServlet {

    private final UserDAO usersDAO = new UserDAO();

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CartWishlistUtils.prepareCartAndWishlistData(request);
        request.getRequestDispatcher("forgot-password.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CartWishlistUtils.prepareCartAndWishlistData(request);
        String email = request.getParameter("email");

        // Kiểm tra email có trong database không
        if (!usersDAO.isEmailExist(email)) {
            request.setAttribute("error", "Email does not exist!");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            return;
        }

        // Tạo token ngẫu nhiên
        String token = generateToken();

        // Lưu token vào database (có thời gian hết hạn 30 phút)
        if (!usersDAO.saveResetToken(email, token)) {
            request.setAttribute("error", "Error creating token!");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            return;
        }

        // Gửi email đặt lại mật khẩu
        boolean isSent = sendResetEmail(email, token);
        if (isSent) {
            request.setAttribute("mess", "Password reset email has been sent!");
        } else {
            request.setAttribute("error", "Error sending email!");
        }

        request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
    }

    // Hàm tạo token ngẫu nhiên
    private String generateToken() {
        SecureRandom random = new SecureRandom();
        byte[] bytes = new byte[24]; // 24 bytes => Base64 sẽ ra 32 ký tự
        random.nextBytes(bytes);
        return Base64.getUrlEncoder().withoutPadding().encodeToString(bytes);
    }

    // Hàm gửi email
    private boolean sendResetEmail(String email, String token) throws UnsupportedEncodingException {
        final String fromEmail = "louisvuittonstore102@gmail.com";
        final String appPassword = "bofb ktts chzo iath";

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, appPassword);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail, "No-Reply"));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
            message.setSubject("Reset Password");

            String resetLink = "http://localhost:8080/louisvuitton/change-password?token=" + token;
            String emailContent = "<div style='max-width: 600px; margin: auto; font-family: Arial, sans-serif;'>"
                    + "<table style='width: 100%; border-spacing: 0; text-align: left;'>"
                    + "<tr>"
                    + "  <td style='width: 40%; padding: 20px; text-align: center;'>"
                    + "    <img src='https://i.pinimg.com/originals/8c/4f/4b/8c4f4bd2ecb7348c1f690d1ad950e33e.jpg' alt='Logo Shop' style='max-width: 150px;'>"
                    + "    <h2 style='margin-top: 10px;'>LouisVuitton</h2>"
                    + "  </td>"
                    + "  <td style='width: 60%; padding: 20px;'>"
                    + "    <h3>Click vào nút dưới để đổi mật khẩu:</h3>"
                    + "    <a href='" + resetLink + "' style='display: inline-block; background-color: #007bff; "
                    + "       color: #fff; padding: 10px 20px; text-decoration: none; border-radius: 5px;'>Đổi mật khẩu</a>"
                    + "    <p style='margin-top: 20px; color: #777;'>"
                    + "       Nếu bạn không yêu cầu đặt lại mật khẩu, vui lòng bỏ qua email này."
                    + "    </p>"
                    + "  </td>"
                    + "</tr>"
                    + "</table>"
                    + "</div>";

            message.setContent(emailContent, "text/html; charset=UTF-8");
            Transport.send(message);
            return true;
        } catch (MessagingException e) {
            e.printStackTrace();
            return false;
        }
    }

}
