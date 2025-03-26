package controller.shop;

import dal.ProductsDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.CartWishlistUtils;
import utils.NotificationUtils;

@WebServlet(name = "CartServlet", urlPatterns = {"/cart"})
public class CartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CartWishlistUtils.prepareCartAndWishlistData(request);
        try {
            NotificationUtils.loadNotifications(request.getSession());
        } catch (SQLException ex) {
            Logger.getLogger(AboutUsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CartWishlistUtils.prepareCartAndWishlistData(request);
        try {
            NotificationUtils.loadNotifications(request.getSession());
        } catch (SQLException ex) {
            Logger.getLogger(AboutUsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        String id_raw = request.getParameter("productId");
        String quantity_raw = request.getParameter("quantity");
        String action = request.getParameter("action");

        if (id_raw == null || id_raw.isEmpty()) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.getWriter().write("{\"error\": \"Missing productId\"}");
            return;
        }

        int id;
        int quantity = 1;
        try {
            id = Integer.parseInt(id_raw);

            if (quantity_raw != null && !quantity_raw.isEmpty()) {
                quantity = Integer.parseInt(quantity_raw);
            }

            if (quantity < 1) {
                quantity = 1;
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.getWriter().write("{\"error\": \"Invalid productId or quantity\"}");
            return;
        }

        // Lấy giỏ hàng từ cookie
        Cookie[] cookies = request.getCookies();
        String cartData = "";
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("cart".equals(cookie.getName())) {
                    cartData = cookie.getValue();
                    break;
                }
            }
        }

        StringBuilder updatedCart = new StringBuilder();
        boolean isProductInCart = false;
        int totalItems = 0;

        if (!cartData.isEmpty()) {
            String[] items = cartData.split("/");
            for (String item : items) {
                String[] parts = item.split(":");
                if (parts.length == 2) {
                    int existingId = Integer.parseInt(parts[0]);
                    int existingQuantity = Integer.parseInt(parts[1]);

                    if (existingId == id) {
                        isProductInCart = true;
                        if ("addToCart".equals(action)) {
                            existingQuantity += quantity;
                        } else if ("updateCart".equals(action)) {
                            existingQuantity = quantity;
                        } else if ("remove".equals(action)) {
                            continue;
                        }

                        if (existingQuantity > 0) {
                            updatedCart.append(existingId).append(":").append(existingQuantity).append("/");
                            totalItems += existingQuantity;
                        }
                    } else {
                        updatedCart.append(item).append("/");
                        totalItems += existingQuantity;
                    }
                }
            }
        }

        if (!isProductInCart && !"remove".equals(action)) {
            updatedCart.append(id).append(":").append(quantity).append("/");
            totalItems += quantity;
        }

        Cookie newCookie;
        if (updatedCart.length() == 0) {
            newCookie = new Cookie("cart", "");
            newCookie.setMaxAge(0);
        } else {
            if (updatedCart.length() > 0 && updatedCart.charAt(updatedCart.length() - 1) == '/') {
                updatedCart.deleteCharAt(updatedCart.length() - 1);
            }
            newCookie = new Cookie("cart", updatedCart.toString());
            newCookie.setMaxAge(7 * 24 * 60 * 60);
        }

        response.addCookie(newCookie);

        // **Trả về JSON để cập nhật giỏ hàng ngay lập tức**
        response.setContentType("application/json");
        response.getWriter().write("{\"success\": true, \"cartCount\": " + totalItems + "}");
    }

    @Override
    public String getServletInfo() {
        return "Servlet for adding/removing products from cart";
    }
}
