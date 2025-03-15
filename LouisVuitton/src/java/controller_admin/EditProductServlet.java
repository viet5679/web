/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller_admin;

import dal.CategoriesDAO;
import dal.GendersDAO;
import dal.ProductsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import model.Categories;
import model.Genders;
import model.ProductGender;
import model.ProductImages;
import model.Products;

import jakarta.servlet.http.HttpServlet;

import jakarta.servlet.http.HttpServlet;

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
        String imageId = request.getParameter("imageId"); // Lấy imageId từ form

        // Xử lý tiếp theo với imageId
        System.out.println("Selected Image ID: " + imageId);
//        String id_raw = request.getParameter("id");
//        String name = request.getParameter("name");
//        String cid_raw = request.getParameter("opc");
//        String des = request.getParameter("description");
//        String subD = request.getParameter("subDescription");
//        String price_raw = request.getParameter("price");
//        String quantity_raw = request.getParameter("quantity");
//        String sale_raw = request.getParameter("sale");
//        int quantity, id;
//        double price, sale;
//        Collection<Part> parts = request.getParts();
//        String projectRoot = new File(request.getServletContext().getRealPath("/")).getParentFile().getParent();
//        String uploadDirWeb = projectRoot + File.separator + "web" + File.separator + "uploads-edit";
//        String uploadDirAdmin = projectRoot + File.separator + "web" + File.separator + "admin" + File.separator + "uploads-edit";
//        String uploadDirBuildWeb = projectRoot + File.separator + "build" + File.separator + "web" + File.separator + "uploads-edit";
//        String uploadDirBuildAdmin = projectRoot + File.separator + "build" + File.separator + "web" + File.separator + "admin" + File.separator + "uploads-edit";
//
//// Tạo thư mục nếu chưa có
//        new File(uploadDirWeb).mkdirs();
//        new File(uploadDirAdmin).mkdirs();
//        new File(uploadDirBuildWeb).mkdirs();
//        new File(uploadDirBuildAdmin).mkdirs();
//
//        List<String> file = new ArrayList<>();
//        for (Part part : parts) {
//            if (part.getName().startsWith("picture") && part.getSize() > 0) {
//                String originalFileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
//                String fileExt = originalFileName.substring(originalFileName.lastIndexOf("."));
//                String fileName = "img_" + System.currentTimeMillis() + fileExt;
//
//                // Đường dẫn lưu ảnh
//                String uploadPathWeb = uploadDirWeb + File.separator + fileName;
//                String uploadPathAdmin = uploadDirAdmin + File.separator + fileName;
//                String uploadPathBuildWeb = uploadDirBuildWeb + File.separator + fileName;
//                String uploadPathBuildAdmin = uploadDirBuildAdmin + File.separator + fileName;
//
//                try (InputStream input = part.getInputStream()) {
//                    byte[] fileData = input.readAllBytes();
//
//                    // Lưu vào các thư mục
//                    try (FileOutputStream outputWeb = new FileOutputStream(uploadPathWeb)) {
//                        outputWeb.write(fileData);
//                    }
//                    try (FileOutputStream outputAdmin = new FileOutputStream(uploadPathAdmin)) {
//                        outputAdmin.write(fileData);
//                    }
//                    try (FileOutputStream outputBuildWeb = new FileOutputStream(uploadPathBuildWeb)) {
//                        outputBuildWeb.write(fileData);
//                    }
//                    try (FileOutputStream outputBuildAdmin = new FileOutputStream(uploadPathBuildAdmin)) {
//                        outputBuildAdmin.write(fileData);
//                    }
//                } catch (IOException e) {
//                    e.printStackTrace();
//                }
//                file.add(fileName);
//            }
//        }
//        ProductsDAO pd = new ProductsDAO();
//        CategoriesDAO cd = new CategoriesDAO();
//        GendersDAO gd = new GendersDAO();
//        try {
//            id = Integer.parseInt(id_raw);
//            
//            quantity = Integer.parseInt(quantity_raw);
//            price = Double.parseDouble(price_raw);
//            sale = Double.parseDouble(sale_raw);
//
//            Products pro = pd.getProductById(id);
//            pro.setName(name);
//            pro.setDescription(des);
//            pro.setSubDescription(subD);
//            if (!file.isEmpty()) {
//                pro.setAvatar("uploads-add/" + file.get(0));
//            }
//
//            pro.setStockQuantity(quantity);
//            if (file.size() > 1) {
//                pro.setHoverAvatar("uploads-add/" + file.get(1));
//            }
//
//            pro.setPrice(price);
//            pro.setSale(sale);
//            pd.editProduct(pro);
//
//            ProductImages pi = pd.getImagesByPid(id);
//
//            for (String namePath : file) {
//                pi.setProductId(id);
//                pi.setPath("uploads-add/" + namePath);
//                pd.addPImg(pi);
//            }
//
//            ProductGender pg = new ProductGender();
//            Products pro1 = pd.getProductById(id);
//            Genders ge = gd.getGenderById(gid);
//            if (gid == 3) {
//                pg.setProductId(pro1);
//                pg.setGenderId(gd.getGenderById(1));
//                pd.addPGender(pg);
//                pg.setProductId(pro1);
//                pg.setGenderId(gd.getGenderById(2));
//                pd.addPGender(pg);
//            } else {
//                pg.setProductId(pro1);
//                pg.setGenderId(ge);
//                pd.addPGender(pg);
//            }
//            response.sendRedirect("pmanager");
//
//        } catch (NumberFormatException e) {
//            System.out.println(e);
//        }

    }

    /**
     * Returns a short description of the servlet.
     *
     *
     * /**
     * Returns a short description of the servlet. >>>>>>>
     * 7897f4d2f066a1a8274ac1a2b21c3ce0f01e18ad
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
