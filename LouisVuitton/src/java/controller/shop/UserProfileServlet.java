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

        // Thư mục lưu ảnh trên server
        String uploadDir = request.getServletContext().getRealPath("/") + "assets/images/user";
        uploadDir = uploadDir.replace("\\build", ""); // Loại bỏ thư mục `build`

        File uploadFolder = new File(uploadDir);
        if (!uploadFolder.exists()) {
            uploadFolder.mkdirs(); // Tạo thư mục nếu chưa tồn tại
        }

// Xử lý file ảnh
        Part filePart = request.getPart("avatar");
        if (filePart != null && filePart.getSize() > 0) {
            // Lấy tên file gốc
            String fileName = filePart.getSubmittedFileName();

            // Kiểm tra định dạng file
            String fileExtension = fileName.substring(fileName.lastIndexOf("."));
            if (!fileExtension.matches("\\.(jpg|jpeg|png|gif)$")) {
                request.setAttribute("error", "Định dạng file không hợp lệ!");
                request.getRequestDispatcher("user-profile.jsp").forward(request, response);
                return;
            }

            // Tạo tên file mới tránh trùng lặp
            String newFileName = "avatar_" + user.getId() + "_" + System.currentTimeMillis() + fileExtension;
            String filePath = uploadDir + File.separator + newFileName;

            // Ghi file bằng InputStream để tránh lỗi format
            try (InputStream fileContent = filePart.getInputStream(); FileOutputStream fos = new FileOutputStream(filePath)) {
                byte[] buffer = new byte[1024];
                int bytesRead;
                while ((bytesRead = fileContent.read(buffer)) != -1) {
                    fos.write(buffer, 0, bytesRead);
                }
            }

            // Kiểm tra file có tồn tại không
            File checkFile = new File(filePath);
            if (checkFile.exists()) {
                System.out.println("✅ File uploaded successfully: " + filePath);
                // Lưu đường dẫn tương đối vào DB
                user.setAvatar("assets/images/user/" + newFileName);
            } else {
                System.out.println("❌ File upload failed!");
            }
        }

        // Cập nhật database
        UserDAO userDAO = new UserDAO();
        boolean isUpdated = userDAO.updateUser(user);

        if (isUpdated) {
            session.setAttribute("user", user);
            request.setAttribute("mess", "Cập nhật thành công!");
        } else {
            request.setAttribute("error", "Cập nhật thất bại!");
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
