package controller.shop;

import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import utils.CartWishlistUtils;
import utils.MaHoa;
import utils.Validation;

import java.security.SecureRandom;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.NotificationUtils;

/**
 *
 * @author adim
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
        try {
            NotificationUtils.loadNotifications(request.getSession());
        } catch (SQLException ex) {
            Logger.getLogger(AboutUsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("register.jsp").forward(request, response);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CartWishlistUtils.prepareCartAndWishlistData(request);
        try {
            NotificationUtils.loadNotifications(request.getSession());
        } catch (SQLException ex) {
            Logger.getLogger(AboutUsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmpassword");
        String firstname = request.getParameter("firstname").trim();
        String lastname = request.getParameter("lastname").trim();
        String name = firstname + " " + lastname;
        String phonenumber = request.getParameter("phonenumber");
        String address = request.getParameter("address");

        HttpSession session = request.getSession();

        if (!Validation.isValidEmail(email)) {
            session.setAttribute("error", "Invalid email");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        if (!MaHoa.toSHA1(password).equals(MaHoa.toSHA1(confirmPassword))) {
            session.setAttribute("error", "The confirmation password doesn't match");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        if (!Validation.isValidPhone(phonenumber)) {
            session.setAttribute("error", "Invalid phone number");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        UserDAO userDAO = new UserDAO();
        if (userDAO.isEmailExist(email)) {
            session.setAttribute("error", "Email already exists");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        // Tạo dãy số ngẫu nhiên
        int[] verificationCode = generateVerificationCode();

        // Lưu dãy số vào session
        session.setAttribute("verificationCode", verificationCode);

        // Lưu thông tin người dùng vào session
        session.setAttribute("userDetails", new String[]{
            email,
            password,
            firstname,
            lastname,
            phonenumber,
            address
        });

        // Gửi email với dãy số
        boolean isSent = sendVerificationEmail(email, verificationCode);
        if (isSent) {
            session.setAttribute("mess", "Verification email has been sent!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            session.setAttribute("error", "Error sending email!");
        request.getRequestDispatcher("register.jsp").forward(request, response);
        }

    }

    // Phương thức tạo dãy số ngẫu nhiên
    private int[] generateVerificationCode() {
        SecureRandom random = new SecureRandom();
        int[] verificationCode = new int[5];
        for (int i = 0; i < 5; i++) {
            verificationCode[i] = random.nextInt(10); // Tạo số từ 0 đến 9
        }
        return verificationCode;
    }

    // Phương thức gửi email
    private boolean sendVerificationEmail(String email, int[] verificationCode) throws UnsupportedEncodingException {
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
            message.setSubject("Verification Code");

            String emailContent = "Your verification code is: ";
            for (int code : verificationCode) {
                emailContent += code + " ";
            }

            message.setContent(emailContent, "text/plain; charset=UTF-8");
            Transport.send(message);
            return true;
        } catch (MessagingException e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
