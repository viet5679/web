/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.shop;

import dal.OrderDAO;
import dal.OrderDetailsDAO;
import dal.ProductsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import model.Item;
import model.OrderDetails;
import model.Orders;
import model.Products;
import model.Users;
import utils.CartWishlistUtils;
import utils.NotificationUtils;

/**
 *
 * @author adim
 */
@WebServlet(name = "CheckoutServlet", urlPatterns = {"/checkout"})
public class CheckoutServlet extends HttpServlet {

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
            out.println("<title>Servlet CheckoutServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckoutServlet at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
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

        // Kiểm tra user đã đăng nhập chưa
        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        // Lấy thông tin từ form
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String province = request.getParameter("provinceName");
        String district = request.getParameter("districtName");
        String ward = request.getParameter("wardName");
        String street = request.getParameter("street");
        String comments = request.getParameter("comments");

        // Ghép địa chỉ đầy đủ
        String address = street + ", " + ward + ", " + district + ", " + province;

        ProductsDAO pDAO = new ProductsDAO();
        List<Products> list = pDAO.getAll();
        // Lấy dữ liệu giỏ hàng từ cookie
        Cookie[] cookieArr = request.getCookies();
        String cartData = "";
        if (cookieArr != null) {
            for (Cookie o : cookieArr) {
                if (o.getName().equals("cart")) {
                    cartData = o.getValue();
                }
            }
        }
        Cart cart = new Cart(cartData, list);
        request.setAttribute("cart", cart);

        try {
            // Tạo đơn hàng
            Orders order = new Orders();
            order.setUser(user);
            order.setName(name);
            order.setPhone(phone);
            order.setAddress(address);
            order.setComments(comments);
            order.setTotalPrice(cart.getTotalMoney());
            order.setTotalProduct(cart.getItems().size());
            order.setStatus("Pending");

            // Lưu đơn hàng vào DB
            OrderDAO orderDAO = new OrderDAO();
            int orderId = orderDAO.addOrder(order);
            order.setId(orderId); // Gán ID vừa tạo

            // Thêm chi tiết đơn hàng
            OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO();
            for (Item item : cart.getItems()) {
                OrderDetails orderDetails = new OrderDetails();
                orderDetails.setOrder(order);
                orderDetails.setProduct(item.getProduct());
                orderDetails.setQuantity(item.getQuantity());
                orderDetails.setPrice(item.getPrice());

                // Tính toán giảm giá và tổng tiền 2 chữ số sau dấu ,
                double discount = Math.max(0, item.getProduct().getPrice() - item.getProduct().getTotalPay());
                discount = Math.round(discount * 100.0) / 100.0;
                double totalPrice = item.getQuantity() * (item.getPrice() - discount);
                orderDetails.setTotalPrice(Math.round(totalPrice * 100.0) / 100.0);
                orderDetails.setDiscount(discount);
                orderDetails.setName(item.getProduct().getName());
                orderDetails.setAvatar(item.getProduct().getAvatar());
                orderDetails.setStatus("Pending");

                orderDetailsDAO.addOrderDetail(orderDetails);
            }

            // Xóa cookie giỏ hàng sau khi đặt hàng thành công
            Cookie cartCookie = new Cookie("cart", "");
            cartCookie.setMaxAge(0);
            response.addCookie(cartCookie);

            // Set attribute để hiển thị thông báo đặt hàng thành công
            request.setAttribute("orderSuccess", true);
            request.getRequestDispatcher("checkout.jsp").forward(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(CheckoutServlet.class.getName()).log(Level.SEVERE, null, ex);
            response.sendRedirect("error.jsp");
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
