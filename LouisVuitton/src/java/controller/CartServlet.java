package controller;

import dal.ProductsDAO;
import java.io.IOException;
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

@WebServlet(name = "CartServlet", urlPatterns = {"/cart"})
public class CartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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

        // Đếm số lượng sản phẩm trong giỏ hàng
        int numCartItem = cart.getItems().size();

        Cookie[] cookieWishList = request.getCookies();
        String wishlistData = "";
        if (cookieWishList != null) {
            for (Cookie o : cookieWishList) {
                if (o.getName().equals("wishlist")) {
                    wishlistData += o.getValue();
                }
            }
        }
        WishList wishlist = new WishList(wishlistData, list);
        request.setAttribute("wishlist", wishlist);

        // Đếm số lượng sản phẩm trong wishlist
        int numWishListItem = wishlist.getItems().size();

        // kiểm tra giỏ hàng 
        if (cart == null || cart.getItems().isEmpty()) {
            request.setAttribute("message", "Your cart is empty.");
        }
        request.setAttribute("numWishListItem", numWishListItem);
        request.setAttribute("numCartItem", numCartItem);
        request.setAttribute("newArrivals", pDAO.getNewArrivalsProduct());
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductsDAO pDAO = new ProductsDAO();
        List<Products> list = pDAO.getAll();
        String id_raw = request.getParameter("productId");
        String quantity_raw = request.getParameter("quantity");

        if (id_raw == null || id_raw.isEmpty() || quantity_raw == null || quantity_raw.isEmpty()) {
            response.sendRedirect("cart.jsp");
            return;
        }

        int id;
        int quantity;
        try {
            id = Integer.parseInt(id_raw);
            quantity = Integer.parseInt(quantity_raw);

            if (quantity <= 0) {
                // Nếu quantity <= 0, coi như là xóa sản phẩm
                quantity = 0;
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
                if (cookie.getName().equals("cart")) {
                    cartData = cookie.getValue();
                    break; // Tìm thấy cookie thì thoát vòng lặp
                }
            }
        }

        // Xử lý giỏ hàng
        StringBuilder updatedCart = new StringBuilder();
        boolean isProductExists = false;

        if (!cartData.isEmpty()) {
            String[] items = cartData.split("/");
            for (String item : items) {
                String[] parts = item.split(":");
                if (parts.length == 2) {
                    int existingId = Integer.parseInt(parts[0]);
                    int existingQuantity = Integer.parseInt(parts[1]);

                    if (existingId == id) {
                        // Cộng dồn số lượng nếu trùng ID
                        int newQuantity = existingQuantity + quantity;
                        if (newQuantity > 0) {
                            updatedCart.append(existingId).append(":").append(newQuantity).append("/");
                        }
                        isProductExists = true;
                    } else {
                        // Giữ nguyên các sản phẩm khác
                        updatedCart.append(item).append("/");
                    }
                }
            }
        }

// Thêm sản phẩm mới nếu chưa tồn tại và quantity > 0
        if (!isProductExists && quantity > 0) {
            updatedCart.append(id).append(":").append(quantity).append("/");
        }

        // Xóa dấu `/` cuối chuỗi nếu có
        if (updatedCart.length() > 0 && updatedCart.charAt(updatedCart.length() - 1) == '/') {
            updatedCart.deleteCharAt(updatedCart.length() - 1);
        }

        // Cập nhật lại cookie
        String updatedCartString = updatedCart.toString();
        Cookie newCookie = new Cookie("cart", updatedCartString);
        newCookie.setMaxAge(30 * 24 * 60 * 60); // Lưu 30 ngày
        response.addCookie(newCookie);
        response.sendRedirect("cart.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Servlet for adding/removing products from cart";
    }
}
