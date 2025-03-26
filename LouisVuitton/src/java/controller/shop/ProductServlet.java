/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.shop;

import dal.OrderDAO;
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
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.ProductImages;
import model.Products;
import model.Rating;
import model.Users;
import utils.CartWishlistUtils;
import utils.NotificationUtils;

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
        try {
            NotificationUtils.loadNotifications(request.getSession());
        } catch (SQLException ex) {
            Logger.getLogger(AboutUsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        String id_raw = request.getParameter("id");
        int id, cid;
        ProductsDAO pd = new ProductsDAO();
        RatingDAO rd = new RatingDAO();
        OrderDAO orderDAO = new OrderDAO();

        try {
            id = Integer.parseInt(id_raw);
            Products p = pd.getProductById(id);
            cid = p.getCategoryId().getId();          
            System.out.println(cid);
            // Kiểm tra nếu sản phẩm không tồn tại
            if (p == null) {
                response.sendRedirect("home");
                return;
            }

            // Lấy dữ liệu sản phẩm
            String str = p.getSubDescription();
            List<String> subDescription = (str != null) ? Arrays.asList(str.split("\\$")) : new ArrayList<>();
            List<ProductImages> listI = (pd.getImagesByPid(id) != null) ? pd.getImagesByPid(id) : new ArrayList<>();
            List<Rating> listR = (rd.getAllRatingWithId(id) != null) ? rd.getAllRatingWithId(id) : new ArrayList<>();

            // Kiểm tra xem user đã mua hàng chưa
            boolean hasPurchased = false;
            Users user = (Users) request.getSession().getAttribute("user");
            if (user != null) {
                hasPurchased = orderDAO.hasUserPurchasedProduct(user.getId(), id);
            }
            List<Products> listP = pd.getAllProductWithSameCategories(cid);
            for (Products products : listP) {
                System.out.println(products.getId());
            }
            // Gán dữ liệu vào request
            request.setAttribute("relatedProduct", listP);
            request.setAttribute("listR", listR);
            request.setAttribute("sub", subDescription);
            request.setAttribute("listI", listI);
            request.setAttribute("p", p);
            request.setAttribute("bestSeller", pd.getBestSellerProduct());
            request.setAttribute("hasPurchased", hasPurchased);  // Thêm biến này

            request.getRequestDispatcher("product-full-width.jsp").forward(request, response);

        } catch (NumberFormatException e) {
            response.sendRedirect("error.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Error loading product details.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
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
        CartWishlistUtils.prepareCartAndWishlistData(request);
        try {
            NotificationUtils.loadNotifications(request.getSession());
        } catch (SQLException ex) {
            Logger.getLogger(AboutUsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        HttpSession session = request.getSession();
        ProductsDAO pd = new ProductsDAO();
        RatingDAO rd = new RatingDAO();

        // Check if the user is logged in
        Users user = (Users) session.getAttribute("user");
        if (user == null) {
            response.sendRedirect("login");
            return;
        }

        try {
            // Retrieve data from the form
            String pid_raw = request.getParameter("pid");
            String rating_raw = request.getParameter("rating");
            String comment = request.getParameter("comment");

            // Convert data types
            int pid = Integer.parseInt(pid_raw);
            int rating = Integer.parseInt(rating_raw);

            // Validate rating range
            if (rating < 1 || rating > 5) {
                request.setAttribute("error", "Rating must be between 1 and 5.");
                request.setAttribute("pid", pid);
                request.getRequestDispatcher("product.jsp").forward(request, response);
                return;
            }

            // Check if the product exists
            Products product = pd.getProductById(pid);
            if (product == null) {
                request.setAttribute("error", "Product not found.");
                request.getRequestDispatcher("product.jsp").forward(request, response);
                return;
            }

            // Insert the review into the database
            Rating ra = new Rating(comment, product, user, rating);
            rd.insertRating(ra);

            // Redirect back to the product page after a successful review
            response.sendRedirect("product?id=" + pid);

        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid data format.");
            request.setAttribute("pid", request.getParameter("pid")); // Truyền lại pid
            request.getRequestDispatcher("product.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "An error occurred while submitting your review.");
            request.setAttribute("pid", request.getParameter("pid"));
            request.getRequestDispatcher("product.jsp").forward(request, response);
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
