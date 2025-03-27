package controller.shop;

import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.CartWishlistUtils;
import utils.MaHoa;
import utils.NotificationUtils;

/**
 *
 * @author adim
 */
@WebServlet(name = "ChangePasswordServlet", urlPatterns = {"/change-password"})
public class ChangePasswordServlet extends HttpServlet {

    private final UserDAO usersDAO = new UserDAO();

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
            out.println("<title>Servlet ChangePasswordServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangePasswordServlet at " + request.getContextPath() + "</h1>");
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String token = request.getParameter("token");
        if (token == null || token.isEmpty() || usersDAO.getEmailByToken(token) == null) {
            response.sendRedirect("forgot-password.jsp?error=invalid_token"); // Chuyển hướng về forgot-password.jsp nếu token không hợp lệ
            return;
        }
        try {
            NotificationUtils.loadNotifications(request.getSession());
        } catch (SQLException ex) {
            Logger.getLogger(AboutUsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        CartWishlistUtils.prepareCartAndWishlistData(request);
        request.getRequestDispatcher("change-password.jsp").forward(request, response);
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
        try {
            NotificationUtils.loadNotifications(request.getSession());
        } catch (SQLException ex) {
            Logger.getLogger(AboutUsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        String token = request.getParameter("token");
        String newPassword = request.getParameter("new_password");
        String newPasswordEncry = MaHoa.toSHA1(newPassword);

        // Kiểm tra token có hợp lệ không
        if (token == null || newPassword == null || newPassword.isEmpty()) {
            request.setAttribute("error", "Invalid information!");
            request.getRequestDispatcher("change-password.jsp").forward(request, response);
            return;
        }

        String email = usersDAO.getEmailByToken(token);
        if (email != null) {
            // Cập nhật mật khẩu mới đồng thời reset lại cả token
            usersDAO.updatePassword(email, newPasswordEncry);
            request.setAttribute("successMess", "Login now");
            request.getRequestDispatcher("change-password.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Token is invalid or expired!");
            request.getRequestDispatcher("change-password.jsp").forward(request, response);
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
