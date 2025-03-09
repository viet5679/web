package controller;

import dal.GendersDAO;
import dal.ProductsDAO;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Cart;
import model.Genders;
import model.Products;
import model.WishList;

@WebServlet(name = "HomeServlet", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        ProductsDAO p = new ProductsDAO();
        GendersDAO g = new GendersDAO();
        
        List<Genders> genders = g.getAllGender();
        if (genders != null && !genders.isEmpty()) {
            genders.forEach(gender -> {
                String name = gender.getName();
                if (name != null && !name.isEmpty()) {
                    gender.setName(Character.toLowerCase(name.charAt(0)) + name.substring(1));
                }
            });
        }

        Map<String, List<Products>> productLists = new HashMap<>();
        List<Products> allProducts = p.get12ProductByGid(0);
        productLists.put("all", (allProducts != null) ? allProducts : Collections.emptyList());

        if (genders != null) {
            for (Genders gender : genders) {
                List<Products> genderProducts = p.get12ProductByGid(gender.getId());
                productLists.put(gender.getName(), (genderProducts != null) ? genderProducts : Collections.emptyList());
            }
        }

        request.setAttribute("productLists", productLists);
        request.setAttribute("bestSeller", p.getBestSellerProduct());
        request.setAttribute("genderList", genders);
        request.setAttribute("newArrivals", p.getNewArrivalsProduct());
        request.setAttribute("saleProduct", p.getSaleProduct());
        
        
        // Lay so luong cookie gửi cho home
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
        WishList wishlist = new WishList(wishlistData, list);
        request.setAttribute("wishlist", wishlist);
        // Đếm số lượng sản phẩm
        int numWishListItem = 0;
        if (!wishlistData.isEmpty()) {
            String[] items = wishlistData.split("/");
            numWishListItem = items.length;
        }

        request.setAttribute("numWishListItem", numWishListItem);
        request.setAttribute("numCartItem", numCartItem);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response); // Gọi doGet nếu không có logic riêng cho POST
    }

    @Override
    public String getServletInfo() {
        return "Servlet for displaying the home page";
    }
}