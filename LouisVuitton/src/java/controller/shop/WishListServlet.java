/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.shop;

import dal.ProductsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import model.Products;
import utils.NotificationUtils;

/**
 *
 * @author adim
 */
@WebServlet(name = "WishListServlet", urlPatterns = {"/wishlist"})
public class WishListServlet extends HttpServlet {

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
            out.println("<title>Servlet WishListServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet WishListServlet at " + request.getContextPath() + "</h1>");
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
        // Lấy số lượng cookie CART
        ProductsDAO pDAO = new ProductsDAO();
        List<Products> listProduct = pDAO.getAll();
        Cookie[] cookieArr = request.getCookies();
        String cartData = "";
        if (cookieArr != null) {
            for (Cookie o : cookieArr) {
                if (o.getName().equals("cart")) {
                    cartData += o.getValue();
                }
            }
        }
        Cart cart = new Cart(cartData, listProduct);
        request.setAttribute("cart", cart);

        // Đếm số lượng sản phẩm
        int numCartItem = 0;
        if (!cartData.isEmpty()) {
            String[] items = cartData.split("/");
            numCartItem = items.length;
        }

        // Lấy dữ liệu từ cookie wishlist
        Cookie[] WishList = request.getCookies();
        String wishlistData = "";
        if (WishList != null) {
            for (Cookie o : WishList) {
                if (o.getName().equals("wishlist")) {
                    wishlistData = o.getValue();
                    break;
                }
            }
        }

        // Tạo danh sách sản phẩm từ wishlist
        List<Products> wishlistProducts = new ArrayList<>();
        if (!wishlistData.isEmpty()) {
            String[] wishlistIds = wishlistData.split("/"); // Tách danh sách ID từ cookie
            for (String id : wishlistIds) {
                try {
                    int productId = Integer.parseInt(id); // Chuyển ID sang số nguyên
                    for (Products p : listProduct) {
                        if (p.getId() == productId) { // Kiểm tra sản phẩm có trong database không
                            wishlistProducts.add(p);
                            break;
                        }
                    }
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                }
            }
        }

        try {
            NotificationUtils.loadNotifications(request.getSession());
        } catch (SQLException ex) {
            Logger.getLogger(AboutUsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.setAttribute("wishlistProducts", wishlistProducts);
        request.setAttribute("numWishListItem", wishlistProducts.size());
        request.setAttribute("numCartItem", numCartItem);
        request.getRequestDispatcher("wishlist.jsp").forward(request, response);
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
        String id_raw = request.getParameter("productId");
        String action = request.getParameter("action"); // Lấy action từ request

        if (id_raw == null || id_raw.isEmpty()) {
            response.sendRedirect("wishlist.jsp");
            return;
        }

        int id;
        try {
            id = Integer.parseInt(id_raw);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("wishlist.jsp");
            return;
        }

        // Lấy wishlist từ cookie
        Cookie[] cookies = request.getCookies();
        String wishlistData = "";
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("wishlist".equals(cookie.getName())) {
                    wishlistData = cookie.getValue();
                    cookie.setMaxAge(0); // Xóa cookie cũ
                    response.addCookie(cookie);
                }
            }
        }

        StringBuilder updatedWishList = new StringBuilder();
        boolean isExist = false;

        if (!wishlistData.isEmpty()) {
            String[] items = wishlistData.split("/");
            for (String item : items) {
                int existingId;
                try {
                    existingId = Integer.parseInt(item);
                    if (existingId == id) {
                        isExist = true; // Sản phẩm đã tồn tại
                    } else {
                        updatedWishList.append(existingId).append("/");
                    }
                } catch (NumberFormatException e) {
                    continue; // Bỏ qua lỗi chuyển đổi
                }
            }
        }

        boolean isRemoved = false;
        if ("delete".equals(action)) { // Nếu là xóa sản phẩm
            isRemoved = isExist;
        } else { // Nếu là thêm sản phẩm
            if (!isExist) {
                updatedWishList.append(id).append("/");
            }
        }

        // Xóa dấu `/` cuối cùng nếu có
        if (updatedWishList.length() > 0 && updatedWishList.charAt(updatedWishList.length() - 1) == '/') {
            updatedWishList.deleteCharAt(updatedWishList.length() - 1);
        }

        // Cập nhật lại cookie
        Cookie newCookie = new Cookie("wishlist", updatedWishList.toString());
        newCookie.setMaxAge(30 * 24 * 60 * 60); // Lưu 30 ngày
        response.addCookie(newCookie);

        // Phản hồi JSON để cập nhật giao diện mà không cần reload trang
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write("{\"status\": \"success\", \"isWishlisted\": " + (!isExist) + ", \"isRemoved\": " + isRemoved + "}");
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
