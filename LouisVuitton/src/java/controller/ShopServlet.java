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
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.Categories;
import model.Genders;
import model.Product_sizes;
import model.Products;
import model.Sizes;

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductAllServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductAllServlet at " + request.getContextPath() + "</h1>");
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

        String[] gid_raw = request.getParameterValues("gid");
        String[] cid_raw = request.getParameterValues("cid");
        String[] sid_raw = request.getParameterValues("sid");
        String id_raw = request.getParameter("productId");

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
            System.out.println(price_low);
            System.out.println(price_high);
            if (id_raw == null) {
                System.out.println("loi");
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
            List<Products> listp = pd.getProductsByFilder(selectedGid, selectedCid, selectedSid, price_low, price_high);
            List<Products> list = productPage(index, listp);
            request.setAttribute("list", list);
            List<Product_sizes> listps = pd.getProductsSizes(id);
            int count = listp.size();
            int endPage = count / 9;
            if (count % 3 != 0) {
                endPage++;
            }

            List<Sizes> listS = sd.getAllSize();
            request.setAttribute("endP", endPage);
            request.setAttribute("lists", listS);
            request.setAttribute("litsc", litsC);
            request.setAttribute("data", listps);
            request.setAttribute("listg", listG);
            request.setAttribute("selectedGid", selectedGid);
            request.setAttribute("selectedCid", selectedCid);
            request.setAttribute("selectedSid", selectedSid);
//            request.setAttribute("listpa",  );
            request.getRequestDispatcher("shop-left-sidebar-col-3.jsp").forward(request, response);

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

    public static void main(String[] args) {
        ShopServlet s = new ShopServlet();
        ProductsDAO pd = new ProductsDAO();
        List<Integer> selectedGid = new ArrayList<>();
        List<Integer> selectedCid = new ArrayList<>();
        List<Integer> selectedSid = new ArrayList<>();
        List<Products> list = pd.getProductsByFilder(selectedGid, selectedCid, selectedSid, null, null);
        List<Products> list1 = s.productPage(4, list);

        for (Products products : list1) {
            System.out.println(products.getId());
        }
    }
}
