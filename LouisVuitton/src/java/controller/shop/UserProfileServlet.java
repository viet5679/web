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
import jakarta.servlet.http.Part;
import java.io.File;
import model.Users;
import utils.CartWishlistUtils;
import jakarta.servlet.annotation.MultipartConfig;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.NotificationUtils;

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
/**
 *
 * @author adim
 */
@WebServlet(name = "UserProfileServlet", urlPatterns = {"/profile"})
public class UserProfileServlet extends HttpServlet {

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
            out.println("<title>Servlet UserProfileServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserProfileServlet at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("user-profile.jsp").forward(request, response);
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

        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("user");
        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        // Lấy thông tin từ form
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");

        user.setName(firstName + " " + lastName);
        user.setAddress(address);
        user.setEmail(email);
        user.setPhone(phone);
        user.setGender(gender);

        // Lấy thư mục gốc của dự án
        String projectRoot = new File(request.getServletContext().getRealPath("/")).getParentFile().getParent();

// Định nghĩa 4 thư mục lưu ảnh
        String uploadDirWeb = projectRoot + File.separator + "web" + File.separator + "assets" + File.separator + "images" + File.separator + "user";
        String uploadDirAdmin = projectRoot + File.separator + "web" + File.separator + "admin" + File.separator + "assets" + File.separator + "images" + File.separator + "user";
        String uploadDirBuildWeb = projectRoot + File.separator + "build" + File.separator + "web" + File.separator + "assets" + File.separator + "images" + File.separator + "user";
        String uploadDirBuildAdmin = projectRoot + File.separator + "build" + File.separator + "web" + File.separator + "admin" + File.separator + "assets" + File.separator + "images" + File.separator + "user";

// Tạo thư mục nếu chưa có
        new File(uploadDirWeb).mkdirs();
        new File(uploadDirAdmin).mkdirs();
        new File(uploadDirBuildWeb).mkdirs();
        new File(uploadDirBuildAdmin).mkdirs();

// Xử lý file ảnh
        Part part = request.getPart("avatar");
        if (part != null && part.getSize() > 0) {
            // Lấy tên file gốc và tạo tên file mới
            String originalFileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
            String fileExt = originalFileName.substring(originalFileName.lastIndexOf(".")); // Lấy đuôi file (.jpg, .png,...)
            String fileName = "img_" + System.currentTimeMillis() + fileExt; // Đặt tên file mới

            // Đường dẫn lưu file
            String uploadPathWeb = uploadDirWeb + File.separator + fileName;
            String uploadPathAdmin = uploadDirAdmin + File.separator + fileName;
            String uploadPathBuildWeb = uploadDirBuildWeb + File.separator + fileName;
            String uploadPathBuildAdmin = uploadDirBuildAdmin + File.separator + fileName;

            try (InputStream input = part.getInputStream()) {
                byte[] fileData = input.readAllBytes();

                // Lưu vào thư mục `web/assets/images/user`
                try (FileOutputStream outputWeb = new FileOutputStream(uploadPathWeb)) {
                    outputWeb.write(fileData);
                }

                // Lưu vào thư mục `web/admin/assets/images/user`
                try (FileOutputStream outputAdmin = new FileOutputStream(uploadPathAdmin)) {
                    outputAdmin.write(fileData);
                }

                // Lưu vào thư mục `build/web/assets/images/user`
                try (FileOutputStream outputBuildWeb = new FileOutputStream(uploadPathBuildWeb)) {
                    outputBuildWeb.write(fileData);
                }

                // Lưu vào thư mục `build/web/admin/assets/images/user`
                try (FileOutputStream outputBuildAdmin = new FileOutputStream(uploadPathBuildAdmin)) {
                    outputBuildAdmin.write(fileData);
                }

            } catch (IOException e) {
                e.printStackTrace();
            }

            // Cập nhật đường dẫn ảnh trong user
            user.setAvatar("assets/images/user/" + fileName);

            // Lưu đường dẫn file vào request (nếu cần hiển thị lại trong JSP)
            request.setAttribute("uploadedFile", "assets/images/user/" + fileName);
        } else {
        }

        // Cập nhật database
        UserDAO userDAO = new UserDAO();
        boolean isUpdated = userDAO.updateUser(user);

        if (isUpdated) {
            session.setAttribute("user", user);
            request.setAttribute("mess", "Update successful!");
        } else {
            request.setAttribute("error", "Update failed!");
        }

        request.getRequestDispatcher("user-profile.jsp").forward(request, response);
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
