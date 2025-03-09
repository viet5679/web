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
import model.WishList;

/**
 *
 * @author adim
 */
@WebServlet(name = "ContactUsServlet", urlPatterns = {"/contact-us"})
public class ContactUsServlet extends HttpServlet {

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
            out.println("<title>Servlet ContactUsServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ContactUsServlet at " + request.getContextPath() + "</h1>");
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
        // Lay so luong cookie gửi cho home
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

        Cookie[] cookieWishList = request.getCookies();
        String wishlistData = "";
        if (cookieWishList != null) {
            for (Cookie o : cookieWishList) {
                if (o.getName().equals("wishlist")) {
                    wishlistData += o.getValue();
                }
            }
        }
        WishList wishlist = new WishList(wishlistData, listProduct);
        request.setAttribute("wishlist", wishlist);
        // Đếm số lượng sản phẩm
        int numWishListItem = 0;
        if (!wishlistData.isEmpty()) {
            String[] items = wishlistData.split("/");
            numWishListItem = items.length;
        }

        request.setAttribute("numWishListItem", numWishListItem);
        request.setAttribute("numCartItem", numCartItem);
        request.getRequestDispatcher("contact-us.jsp").forward(request, response);
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
        processRequest(request, response);
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
