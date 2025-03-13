package utils;

import dal.ProductsDAO;
import jakarta.servlet.http.*;
import java.util.List;
import model.Cart;
import model.Products;
import model.WishList;

 // @author xu4nvi3t
public class CartWishlistUtils {
    private static final ProductsDAO pDAO = new ProductsDAO();

    // Xử lý dữ liệu cho cả Cart và Wishlist
    public static void prepareCartAndWishlistData(HttpServletRequest request) {
        List<Products> listProduct = pDAO.getAll();
        
        // Xử lý Cart
        String cartData = getCookieValue(request, "cart");
        Cart cart = new Cart(cartData, listProduct);
        request.setAttribute("cart", cart);
        request.setAttribute("numCartItem", countItems(cartData));

        // Xử lý Wishlist
        String wishlistData = getCookieValue(request, "wishlist");
        WishList wishlist = new WishList(wishlistData, listProduct);
        
        // kiểm tra giỏ hàng 
        if (cart == null || cart.getItems().isEmpty()) {
            request.setAttribute("message", "Your cart is empty.");
        }
        request.setAttribute("wishlist", wishlist);
        request.setAttribute("numWishListItem", countItems(wishlistData));
    }

    // Lấy giá trị cookie
    private static String getCookieValue(HttpServletRequest request, String cookieName) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(cookieName)) {
                    return cookie.getValue();
                }
            }
        }
        return "";
    }

    // Đếm số lượng item
    private static int countItems(String data) {
        return (!data.isEmpty()) ? data.split("/").length : 0;
    }
    
    
}
