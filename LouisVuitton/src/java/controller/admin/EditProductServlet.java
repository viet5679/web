/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.CategoriesDAO;
import dal.ProductsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Categories;
import model.ProductImages;
import model.Products;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
/**
 *
 * @author vuhuu
 */
public class EditProductServlet extends HttpServlet {

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
            out.println("<title>Servlet EditProductServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditProductServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id_raw = request.getParameter("id");
        int id;
        ProductsDAO pd = new ProductsDAO();
        CategoriesDAO cd = new CategoriesDAO();
        try {
            id = Integer.parseInt(id_raw);
            Products pro = pd.getProductById(id);
            List<ProductImages> listI = pd.getImagesByPid(id);
            List<Categories> listC = cd.getAllCategory();
            String subDescription = pro.getSubDescription().replace("$", "\n");
            request.setAttribute("sub", subDescription);
            request.setAttribute("listC", listC);
            request.setAttribute("listI", listI);
            request.setAttribute("pro", pro);
            request.getRequestDispatcher("edit_product.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id_raw = request.getParameter("id");
        String name = request.getParameter("name");
        String cid_raw = request.getParameter("op");
        String des = request.getParameter("description");
        String subD = request.getParameter("subDescription");
        String price_raw = request.getParameter("price");
        String quantity_raw = request.getParameter("quantity");
        String sale_raw = request.getParameter("sale");

        int quantity, id;
        double price, sale;
        Collection<Part> parts = request.getParts();

        // Đường dẫn lưu ảnh vào 4 thư mục
        String projectRoot = new File(request.getServletContext().getRealPath("/")).getParentFile().getParent();
        String uploadDirWeb = projectRoot + File.separator + "web" + File.separator + "uploads-edit";
        String uploadDirAdmin = projectRoot + File.separator + "web" + File.separator + "admin" + File.separator + "uploads-edit";
        String uploadDirBuildWeb = projectRoot + File.separator + "build" + File.separator + "web" + File.separator + "uploads-edit";
        String uploadDirBuildAdmin = projectRoot + File.separator + "build" + File.separator + "web" + File.separator + "admin" + File.separator + "uploads-edit";

        // Tạo thư mục nếu chưa có
        new File(uploadDirWeb).mkdirs();
        new File(uploadDirAdmin).mkdirs();
        new File(uploadDirBuildWeb).mkdirs();
        new File(uploadDirBuildAdmin).mkdirs();

        // Danh sách file ảnh
        Map<String, List<String>> uploadedFiles = new HashMap<>();

        for (Part part : parts) {
            if (part.getSize() > 0) {
                String fieldName = part.getName(); // mainImage, hoverImage, picture

                String originalFileName = part.getSubmittedFileName();
                if (originalFileName != null) {
                    originalFileName = Paths.get(originalFileName).getFileName().toString();
                } else {
                    System.out.println("Không có file nào được tải lên.");
                    continue; // Bỏ qua phần xử lý file nếu không có file
                }

                String fileExt = originalFileName.substring(originalFileName.lastIndexOf("."));
                String fileName = "img_" + System.currentTimeMillis() + fileExt;

                // Đường dẫn lưu ảnh vào cả 4 thư mục
                String uploadPathWeb = uploadDirWeb + File.separator + fileName;
                String uploadPathAdmin = uploadDirAdmin + File.separator + fileName;
                String uploadPathBuildWeb = uploadDirBuildWeb + File.separator + fileName;
                String uploadPathBuildAdmin = uploadDirBuildAdmin + File.separator + fileName;

                try (InputStream input = part.getInputStream()) {
                    byte[] fileData = input.readAllBytes();

                    try (FileOutputStream outputWeb = new FileOutputStream(uploadPathWeb)) {
                        outputWeb.write(fileData);
                    }
                    try (FileOutputStream outputAdmin = new FileOutputStream(uploadPathAdmin)) {
                        outputAdmin.write(fileData);
                    }
                    try (FileOutputStream outputBuildWeb = new FileOutputStream(uploadPathBuildWeb)) {
                        outputBuildWeb.write(fileData);
                    }
                    try (FileOutputStream outputBuildAdmin = new FileOutputStream(uploadPathBuildAdmin)) {
                        outputBuildAdmin.write(fileData);
                    }

                    uploadedFiles.putIfAbsent(fieldName, new ArrayList<>());
                    uploadedFiles.get(fieldName).add("uploads-edit/" + fileName);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        ProductsDAO pd = new ProductsDAO();
        CategoriesDAO cd = new CategoriesDAO();
        try {
            id = Integer.parseInt(id_raw);

            quantity = Integer.parseInt(quantity_raw);
            price = Double.parseDouble(price_raw);
            sale = Double.parseDouble(sale_raw);

            Products pro = pd.getProductById(id);
            pro.setCategoryId(cd.getCategoryById(id));
            pro.setName(name);
            pro.setDescription(des);
            pro.setSubDescription(subD);
            if (uploadedFiles.containsKey("mainImg")) {
                pro.setAvatar(uploadedFiles.get("mainImg").get(0));
            }
            // Không cần else vì mặc định giữ ảnh cũ

            if (uploadedFiles.containsKey("hoverImg")) {
                pro.setHoverAvatar(uploadedFiles.get("hoverImg").get(0));
            }
            // Giữ ảnh cũ nếu không có ảnh mới
            pro.setStockQuantity(quantity);
            pro.setPrice(price);
            pro.setSale(sale);
            pd.editProduct(pro);

            List<String> newImagesList = new ArrayList<>();

            for (Map.Entry<String, List<String>> entry : uploadedFiles.entrySet()) {
                if (entry.getKey().equals("newimg")) { // Chỉ lấy ảnh có name = "newimg"
                    newImagesList.addAll(entry.getValue()); // ✅ Thêm toàn bộ danh sách ảnh vào newImagesList
                }
            }

            for (String string : newImagesList) {
                ProductImages pi = new ProductImages();
                pi.setProductId(id);
                pi.setPath(string);
                pd.insertImg(pi);
            }
            String deletedImagesJson = request.getParameter("deletedImages");
            List<String> deletedImageIds = new ArrayList<>();

            if (deletedImagesJson != null && !deletedImagesJson.isEmpty()) {
                JSONArray jsonArray = new JSONArray(deletedImagesJson);
                for (int i = 0; i < jsonArray.length(); i++) {
                    deletedImageIds.add(jsonArray.getString(i));
                }
            }

            if (!deletedImageIds.isEmpty()) {
                List<String> imagePathsToDelete = new ArrayList<>();

                // Lấy đường dẫn ảnh từ DB
                for (String imageId : deletedImageIds) {
                    String path = pd.getPath(Integer.parseInt(imageId));
                    if (path != null) {
                        imagePathsToDelete.add(path); // Lưu vào danh sách cần xóa
                    }
                    pd.deleteImg(Integer.parseInt(imageId));
                }

                // Xóa file trong thư mục
                for (String imagePath : imagePathsToDelete) {
                    File fileWeb = new File(uploadDirWeb + File.separator + imagePath);
                    File fileAdmin = new File(uploadDirAdmin + File.separator + imagePath);
                    File fileBuildWeb = new File(uploadDirBuildWeb + File.separator + imagePath);
                    File fileBuildAdmin = new File(uploadDirBuildAdmin + File.separator + imagePath);

                    if (fileWeb.exists()) {
                        fileWeb.delete();
                    }
                    if (fileAdmin.exists()) {
                        fileAdmin.delete();
                    }
                    if (fileBuildWeb.exists()) {
                        fileBuildWeb.delete();
                    }
                    if (fileBuildAdmin.exists()) {
                        fileBuildAdmin.delete();
                    }

                }
            }
            List<String> updatedImagesList = new ArrayList<>();

            // Lấy danh sách ảnh mới có name = "picture"
            for (Map.Entry<String, List<String>> entry : uploadedFiles.entrySet()) {
                if (entry.getKey().equals("picture")) {
                    updatedImagesList.addAll(entry.getValue());
                }
            }

            // Lấy danh sách ID của ảnh cần cập nhật
            String[] imageIds = request.getParameterValues("imageIds");

            // Kiểm tra nếu không có ảnh nào được cập nhật
            if (imageIds == null || imageIds.length == 0) {
                System.out.println("Không có ảnh nào được cập nhật!");
                imageIds = new String[0]; // Tránh NullPointerException
            } else {
                System.out.println("Danh sách imageIds nhận được (trước khi lọc): " + Arrays.toString(imageIds));
            }

            // Lọc bỏ các imageIds rỗng hoặc null
            List<String> filteredImageIds = new ArrayList<>();
            for (String id1 : imageIds) {
                if (id1 != null && !id1.trim().isEmpty()) { // Loại bỏ giá trị rỗng
                    filteredImageIds.add(id1.trim()); // Trim để tránh lỗi khoảng trắng
                }
            }

            // Chuyển danh sách đã lọc sang mảng
            imageIds = filteredImageIds.toArray(new String[0]);

            System.out.println("Danh sách imageIds sau khi lọc: " + Arrays.toString(imageIds));
            System.out.println("Danh sách ảnh cập nhật: " + updatedImagesList.size());

            // Kiểm tra số lượng ảnh và ID có khớp nhau không
            if (updatedImagesList.size() == imageIds.length) {
                for (int i = 0; i < updatedImagesList.size(); i++) {
                    try {
                        int imgId = Integer.parseInt(imageIds[i]); // Chuyển đổi ID thành số nguyên
                        ProductImages pi = new ProductImages();
                        pi.setImagesId(imgId); // Gán ID ảnh cũ
                        pi.setPath(updatedImagesList.get(i)); // Cập nhật đường dẫn mới
                        pd.updateImg(pi); // Gọi phương thức update ảnh
                        System.out.println("✅ Đã cập nhật ảnh ID: " + imgId + " -> " + updatedImagesList.get(i));
                    } catch (NumberFormatException e) {
                        System.out.println("❌ Lỗi chuyển đổi imageId: " + imageIds[i] + " (Không phải số nguyên hợp lệ)");
                    }
                }
            } else {
                System.out.println("⚠️ Số lượng imageIds (" + imageIds.length + ") không khớp với số lượng ảnh mới (" + updatedImagesList.size() + "). Không thể cập nhật!");
            }
            // Lưu message vào session
            request.getSession().setAttribute("successMessage", "Product updated successfully!");

            // Chuyển hướng trang
            response.sendRedirect("pmanager");

        } catch (NumberFormatException e) {
            System.out.println(e);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     *
     * /**
     * Returns a short description of the servlet. >>>>>>>
     * 7897f4d2f066a1a8274ac1a2b21c3ce0f01e18ad
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
