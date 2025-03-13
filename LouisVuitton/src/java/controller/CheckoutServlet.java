/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

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
//        HttpSession session = request.getSession();
//        Users user = (Users) session.getAttribute("user");
//        if (user == null) {
//            response.sendRedirect("login");
//            return;
//        }
        CartWishlistUtils.prepareCartAndWishlistData(request);
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
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("user");
        // Lấy thông tin từ form thanh toán
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String comments = request.getParameter("comments");

        ProductsDAO pDAO = new ProductsDAO();
        List<Products> list = pDAO.getAll();
        Cookie[] cookieArr = request.getCookies();
        String cartData = "";
        if (cookieArr != null) {
            for (Cookie o : cookieArr) {
                if (o.getName().equals("cart")) {
                    cartData += o.getValue();
                }
            }
        }
        Cart cart = new Cart(cartData, list);
        request.setAttribute("cart", cart);
        try {
            // Tạo đơn hàng mới
            Orders order = new Orders();
            order.setUser(user);
            order.setName(name);
            order.setPhone(phone);
            order.setAddress(address);
            order.setComments(comments);
            order.setTotalPrice(cart.getTotalMoney());
            order.setTotalProduct(cart.getItems().size());
            order.setStatus("Pending"); // Trạng thái "Đang chờ xử lý"

            // Lưu đơn hàng vào DB và lấy order_id
            OrderDAO orderDAO = new OrderDAO();
            int orderId = orderDAO.addOrder(order);
            order.setId(orderId); // Gán ID cho order

            // Thêm từng sản phẩm vào bảng OrderDetails
            OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO();
            for (Item item : cart.getItems()) {
                OrderDetails orderDetails = new OrderDetails();
                orderDetails.setOrder(order);
                orderDetails.setProduct(item.getProduct());
                orderDetails.setQuantity(item.getQuantity());
                orderDetails.setPrice(item.getPrice());

                // Tính giảm giá chính xác hơn
                double d = 0;
                d += item.getProduct().getPrice() - item.getProduct().getTotalPay();
                if (d < 0) {
                    d = 0; // Đảm bảo không bị âm
                }
                double discount = Math.round(d * 100.0) / 100.0; // Làm tròn để không bị thừa nhiều số 
                orderDetails.setDiscount(discount);
                double totalPrice = item.getQuantity() * (item.getPrice() - discount);
                orderDetails.setTotalPrice(Math.round(totalPrice * 100.0) / 100.0);
                orderDetails.setName(item.getProduct().getName());
                orderDetails.setAvatar(item.getProduct().getAvatar());
                orderDetails.setStatus("Pending");

                orderDetailsDAO.addOrderDetail(orderDetails); // Lưu vào DB
            }

            // Xóa cookie giỏ hàng
            Cookie cartCookie = new Cookie("cart", "");
            cartCookie.setMaxAge(0);
            response.addCookie(cartCookie);

            // Sau khi thêm OrderDetails thành công
            session.setAttribute("orderSuccess", true);
            response.sendRedirect("checkout.jsp");

//            // Chuyển hướng đến trang lịch sử đặt hàng
//            response.sendRedirect("order-history");
        } catch (SQLException ex) {
            Logger.getLogger(CheckoutServlet.class.getName()).log(Level.SEVERE, null, ex);
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
