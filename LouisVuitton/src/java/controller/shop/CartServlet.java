package controller.shop;

import dal.ProductsDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utils.CartWishlistUtils;

@WebServlet(name = "CartServlet", urlPatterns = {"/cart"})
public class CartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductsDAO pDAO = new ProductsDAO();
        CartWishlistUtils.prepareCartAndWishlistData(request);
        request.setAttribute("newArrivals", pDAO.getNewArrivalsProduct());
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CartWishlistUtils.prepareCartAndWishlistData(request);
        String id_raw = request.getParameter("productId");
        String quantity_raw = request.getParameter("quantity");
        String action = request.getParameter("action");

        if (id_raw == null || id_raw.isEmpty()) {
            response.sendRedirect("cart.jsp");
            return;
        }
        int id;
        int quantity = 1; // Mặc định là 1 nếu không có số lượng
        try {
            id = Integer.parseInt(id_raw);

            if (quantity_raw != null && !quantity_raw.isEmpty()) {
                quantity = Integer.parseInt(quantity_raw);
            }

            // Kiểm tra số lượng hợp lệ
            if (quantity < 1) {
                quantity = 1; // Không cho phép số lượng < 1
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("cart.jsp");
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
                            existingQuantity += quantity; // Cộng dồn số lượng
                        } else if ("updateCart".equals(action)) {
                            existingQuantity = quantity; // Cập nhật số lượng
                        } else if ("remove".equals(action)) {
                            continue; // Xóa sản phẩm khỏi giỏ hàng
                        }

                        if (existingQuantity > 0) {
                            updatedCart.append(existingId).append(":").append(existingQuantity).append("/");
                        }
                    } else {
                        updatedCart.append(item).append("/");
                    }
                }
            }
        }

        // Nếu sản phẩm chưa có trong giỏ hàng và không phải hành động "remove", thì thêm vào
        if (!isProductInCart && !"remove".equals(action)) {
            updatedCart.append(id).append(":").append(quantity).append("/");
        }

        // Xử lý cookie
        Cookie newCookie;
        if (updatedCart.length() == 0) {
            newCookie = new Cookie("cart", "");
            newCookie.setMaxAge(0); // Xóa cookie
        } else {
            // Xóa dấu `/` cuối nếu có
            if (updatedCart.length() > 0 && updatedCart.charAt(updatedCart.length() - 1) == '/') {
                updatedCart.deleteCharAt(updatedCart.length() - 1);
            }
            newCookie = new Cookie("cart", updatedCart.toString());
            newCookie.setMaxAge(7 * 24 * 60 * 60); // Lưu 7 ngày
        }

        response.addCookie(newCookie);
        response.sendRedirect("cart.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Servlet for adding/removing products from cart";
    }
}
