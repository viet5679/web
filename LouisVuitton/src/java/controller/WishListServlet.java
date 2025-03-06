/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.ProductsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Cart;
import model.Products;

/**
 *
 * @author adim
 */
@WebServlet(name="WishListServlet", urlPatterns={"/wishlist"})
public class WishListServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<h1>Servlet WishListServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        ProductsDAO pDAO = new ProductsDAO();
        List<Products> list = pDAO.getAll();
        Cookie[] cookieArr = request.getCookies();
        String wishlistData = "";
        if (cookieArr != null) {
            for (Cookie o : cookieArr) {
                if (o.getName().equals("wishlist")) {
                    wishlistData += o.getValue();
                }
            }
        }
        Cart cart = new Cart(wishlistData, list);
        request.setAttribute("wishlist", cart);
        // Đếm số lượng sản phẩm
        int numCartItem = 0;
        if (!wishlistData.isEmpty()) {
            String[] items = wishlistData.split("/");
            numCartItem = items.length;
        }

        request.setAttribute("numWishListItem", numCartItem);
        request.getRequestDispatcher("wishlist.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        ProductsDAO pDAO = new ProductsDAO();
        List<Products> list = pDAO.getAll();
        String id_raw = request.getParameter("productId");

        if (id_raw == null || id_raw.isEmpty()) {
            response.sendRedirect("wishlist.jsp");
            return;
        }

        int id;
        try {
            id = Integer.parseInt(id_raw);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("cart.jsp");
            return;
        }

        // Lấy giỏ hàng từ cookie
        Cookie[] cookies = request.getCookies();
        String wishlistData = "";
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("wishlist")) {
                    wishlistData = cookie.getValue();
                    cookie.setMaxAge(0); // Xóa cookie cũ
                    response.addCookie(cookie);
                }
            }
        }

        // Xử lý giỏ hàng
        StringBuilder updatedCart = new StringBuilder();
        boolean isUpdated = false;

        if (!wishlistData.isEmpty()) {
            String[] items = wishlistData.split("/");
            for (String item : items) {
                int existingId = Integer.parseInt(item);
                updatedCart.append(existingId).append("/");
            }
        }

        // Xóa dấu `/` cuối chuỗi nếu có
        if (updatedCart.length() > 0 && updatedCart.charAt(updatedCart.length() - 1) == '/') {
            updatedCart.deleteCharAt(updatedCart.length() - 1);
        }

        // Cập nhật lại cookie
        if (updatedCart.length() > 0) {
            Cookie newCookie = new Cookie("wishlist", updatedCart.toString());
            newCookie.setMaxAge(30 * 24 * 60 * 60); // Lưu 30 ngày
            response.addCookie(newCookie);
        }

        response.sendRedirect("wishlist.jsp");
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
