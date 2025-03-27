/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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
@WebServlet(name = "VerifyCodeServlet", urlPatterns = {"/verify-code"})
public class VerifyCodeServlet extends HttpServlet {

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
            out.println("<title>Servlet VerifyCodeServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet VerifyCodeServlet at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("verify-code.jsp").forward(request, response);
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
        String code = request.getParameter("code");

        // Kiểm tra xem code có null hay không
        if (code == null || code.isEmpty()) {
            HttpSession session = request.getSession();
            session.setAttribute("error", "Please enter verification code!");
            request.getRequestDispatcher("verify-code.jsp").forward(request, response);
            return;
        }

        HttpSession session = request.getSession();
        int[] verificationCode = (int[]) session.getAttribute("verificationCode");

        // Chuyển code nhập vào thành mảng số
        int[] inputCode = new int[5];
        for (int i = 0; i < 5; i++) {
            if (i < code.length()) {
                inputCode[i] = Character.getNumericValue(code.charAt(i));
            } else {
                // Nếu code nhập vào ngắn hơn 5 ký tự, hãy xử lý
                session.setAttribute("error", "Verification code must be 5 digits!");
                request.getRequestDispatcher("verify-code.jsp").forward(request, response);
                return;
            }
        }

        // Kiểm tra dãy số nhập vào
        boolean isMatch = true;
        for (int i = 0; i < 5; i++) {
            if (inputCode[i] != verificationCode[i]) {
                isMatch = false;
                break;
            }
        }

        if (isMatch) {
            // Lấy thông tin người dùng từ session
            String[] userDetails = (String[]) session.getAttribute("userDetails");

            if (userDetails != null) {
                String email = userDetails[0];
                String password = userDetails[1];
                String firstname = userDetails[2];
                String lastname = userDetails[3];
                String phonenumber = userDetails[4];
                String address = userDetails[5];

                // Băm mật khẩu
                String passwordEncry = MaHoa.toSHA1(password);

                // Lưu người dùng vào database
                UserDAO userDAO = new UserDAO();
                boolean success = userDAO.insertUser(firstname + " " + lastname, passwordEncry, email, phonenumber, address);

                if (success) {
                    // Đăng ký thành công
                    session.setAttribute("registeredUser", email);
                    session.setAttribute("mess", "Registration successful!");
                    System.out.println("ĐĂNG KÝ THÀNH CÔNG");
                    request.getRequestDispatcher("verify-code.jsp").forward(request, response);
                } else {
                    // Đăng ký thất bại
                    session.setAttribute("error", "Registration failed. Please try again!");
                    request.getRequestDispatcher("verify-code.jsp").forward(request, response);
                }

                // Xóa thông tin người dùng và code xác minh khỏi session
                session.removeAttribute("userDetails");
                session.removeAttribute("verificationCode");
            } else {
                session.setAttribute("error", "Invalid request!");
                request.getRequestDispatcher("verify-code.jsp").forward(request, response);
            }
        } else {
            session.setAttribute("error", "Verification code does not match!");
            request.getRequestDispatcher("verify-code.jsp").forward(request, response);
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
