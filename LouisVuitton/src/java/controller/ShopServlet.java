/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CategoriesDAO;
import dal.GendersDAO;
import dal.ProductsDAO;
import dal.SizesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import model.Cart;
import model.Categories;
import model.Genders;
import model.ProductSizes;
import model.Products;
import model.Sizes;
import model.WishList;

/**
 *
 * @author vuhuu
 */
public class ShopServlet extends HttpServlet {

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
        String[] gid_raw = request.getParameterValues("gid");
        String[] cid_raw = request.getParameterValues("cid");
        String[] sid_raw = request.getParameterValues("sid");
        String id_raw = request.getParameter("productId");
        String sort_by = request.getParameter("sort_by");
        String index_page = request.getParameter("index");

        List<Integer> selectedGid = new ArrayList<>();
        List<Integer> selectedCid = new ArrayList<>();
        List<Integer> selectedSid = new ArrayList<>();

        String price_low_raw = request.getParameter("price_low");
        String price_high_raw = request.getParameter("price_high");
        ProductsDAO pd = new ProductsDAO();
        GendersDAO gd = new GendersDAO();
        CategoriesDAO cd = new CategoriesDAO();
        SizesDAO sd = new SizesDAO();
        Double price_low, price_high;
        int id = 0;
        int index;

        try {
            if (gid_raw != null) {
                for (String g : gid_raw) {
                    selectedGid.add(Integer.parseInt(g.trim()));
                }
            }

            if (cid_raw != null) {
                for (String c : cid_raw) {
                    selectedCid.add(Integer.parseInt(c.trim()));
                }
            } else {

            }
            if (sid_raw != null) {
                for (String s : sid_raw) {
                    selectedSid.add(Integer.parseInt(s.trim()));
                }
            }

            if (price_low_raw == null) {
                price_low = 0.0;
            } else {
                price_low = Double.valueOf(price_low_raw);
            }
            if (price_high_raw == null) {
                price_high = 500.0;
            } else {
                price_high = Double.valueOf(price_high_raw);
            }
            if (id_raw == null) {
            } else {
                id = Integer.parseInt(id_raw);
            }

            if (index_page == null) {
                index = 1;
            } else {
                index = Integer.parseInt(index_page);
            }

            List<Genders> listG = gd.getAllGender();
            List<Categories> litsC = cd.getAllCategory();
            List<Sizes> listS = sd.getAllSize();
            List<ProductSizes> listps = pd.getProductsSizes(id);

            List<Products> allProducts = pd.getProductsByFilder(selectedGid, selectedCid, selectedSid, price_low, price_high);
            String text = request.getParameter("text");
            if ( text != null) {
                 List<Products> allProductsBySearch = pd.getProductsByFilderSearch(selectedGid, selectedCid, selectedSid, price_low, price_high, text);
                 allProducts = allProductsBySearch;
            }
            int count = allProducts.size();
            int endPage = count / 9;
            if (count % 9 != 0) {
                endPage++;
            }

            if (sort_by != null) {

                Collator collator = Collator.getInstance(new Locale("vi", "VN"));

                switch (sort_by) {
                    case "1":
                        allProducts.sort(Comparator.comparing(Products::getName, collator));
                        break;
                    case "2":
                        allProducts.sort(Comparator.comparing(Products::getName, collator).reversed());
                        break;
                    case "3":
                        allProducts.sort(Comparator.comparingDouble(Products::getTotalPay));
                        break;
                    case "4":
                        allProducts.sort(Comparator.comparingDouble(Products::getTotalPay).reversed());
                        break;
                    default:
                        allProducts.sort(Comparator.comparing(Products::getName, collator));
                        break;
                }
            }

            List<Products> list = productPage(index, allProducts);

            request.setAttribute("sort_by", sort_by);
            request.setAttribute("list", list);
            request.setAttribute("endP", endPage);
            request.setAttribute("lists", listS);
            request.setAttribute("litsc", litsC);
            request.setAttribute("data", listps);
            request.setAttribute("listg", listG);
            request.setAttribute("selectedGid", selectedGid);
            request.setAttribute("selectedCid", selectedCid);
            request.setAttribute("selectedSid", selectedSid);
            request.setAttribute("bestSeller", pd.getBestSellerProduct());

            // Lay so luong cookie gửi cho shop
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
            request.getRequestDispatcher("shop-left-sidebar-col-3.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public List<Products> productPage(int index, List<Products> list) {
        int max = list.size() / 9;

        List<Products> listP = new ArrayList();
        if (max + 1 == index) {
            for (int i = (index - 1) * 9; i < list.size(); i++) {
                listP.add(list.get(i));
            }
        } else {
            for (int i = (index - 1) * 9; i < ((index - 1) * 9) + 9; i++) {
                listP.add(list.get(i));
            }
        }

        return listP;
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
