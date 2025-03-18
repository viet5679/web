/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.shop;

import dal.ProductsDAO;
import dal.RatingDAO;
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.List;
import model.ProductImages;
import model.Products;
import model.Rating;
import model.Users;
import utils.CartWishlistUtils;

/**
 *
 * @author vuhuu
 */
@WebServlet(name = "ProductServlet", urlPatterns = {"/product"})
public class ProductServlet extends HttpServlet {

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
            out.println("<title>Servlet ProductServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

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
        String id_raw = request.getParameter("id");
        int id;
        ProductsDAO pd = new ProductsDAO();
        RatingDAO rd = new RatingDAO();
        try {
            id = Integer.parseInt(id_raw);
            Products p = pd.getProductById(id);
            String str = p.getSubDescription();
            List<String> subDescription = Arrays.asList(str.split("\\$"));
            List<ProductImages> listI = pd.getImagesByPid(id);
            List<Rating> listR = rd.getAllRatingWithId(id);
            request.setAttribute("listR", listR);
            request.setAttribute("sub", subDescription);
            request.setAttribute("listI", listI);
            request.setAttribute("p", p);
            request.setAttribute("bestSeller", pd.getBestSellerProduct());
            request.getRequestDispatcher("product-full-width.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println(e);
        }

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
        String pid_raw = request.getParameter("pid");
        String uid_raw = request.getParameter("uid");

        String rating_raw = request.getParameter("rating");
        String comment = request.getParameter("comment");

        int rating, pid, uid;
        RatingDAO rd = new RatingDAO();
        ProductsDAO pd = new ProductsDAO();
        UserDAO ud = new UserDAO();
        
        try {
            rating = Integer.parseInt(rating_raw);
            pid = Integer.parseInt(pid_raw);
            uid = Integer.parseInt(uid_raw);
            Products product = pd.getProductById(pid);
            Users user = ud.getUserById(uid);

            System.out.println("Product: " + product);
            System.out.println("User: " + user);
            Rating ra = new Rating(comment, pd.getProductById(pid), ud.getUserById(uid), rating);
            rd.insertRating(ra);

            response.sendRedirect("product?id=" + pid);

        } catch (Exception e) {
            System.out.println(e);
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
