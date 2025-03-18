/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import com.google.gson.Gson;
import dal.DashboardDAO;
import dal.OrderDAO;
import dal.ProductsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;
import model.admin.BestSellingProduct;
import model.admin.TopUser;

/**
 *
 * @author adim
 */
@WebServlet(name = "DashboardServlet", urlPatterns = {"/admin/dashboard"})
public class DashboardServlet extends HttpServlet {

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
            out.println("<title>Servlet DashboardServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DashboardServlet at " + request.getContextPath() + "</h1>");
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
        String path = request.getServletPath();

        if (!"/admin/dashboard".equals(path)) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Page not found");
            return;
        }
        DashboardDAO db = new DashboardDAO();
        OrderDAO od = new OrderDAO();

        Map<Integer, Double> monthlyRevenue = db.getMonthlyRevenue();
        Map<Integer, Integer> monthlyOrders = db.getMonthlyOrderCount();
        Map<Integer, Integer> monthlyCustomers = db.getMonthlyCustomerCount();
        Map<Integer, Integer> orderCountByProductId = db.getOrderCountByProductId();
        Map<Integer, Double> totalRevenueByProductId = db.getTotalRevenueByProductId();

        int totalCustomers = db.getTotalCustomers();
        int totalOrders = od.getTotalOrders();
        double totalRevenue = od.getTotalRevenue();
        int totalProductSold = db.getTotalProductSold();

        double revenueGrowth = db.getRevenueGrowth();
        double orderGrowth = db.getOrderGrowth();
        double customerGrowth = db.getCustomerGrowth();
        double productSoldGrowth = db.getProductSoldGrowth();

        Gson gson = new Gson();

        double[] revenueData = new double[12];
        double[] ordersData = new double[12];
        double[] customersData = new double[12];
        

        for (int i = 0; i < 12; i++) {
            revenueData[i] = monthlyRevenue.getOrDefault(i + 1, 0.0);
            ordersData[i] = monthlyOrders.getOrDefault(i + 1, 0);
            customersData[i] = monthlyCustomers.getOrDefault(i + 1, 0);
        }

        request.setAttribute("revenueData", gson.toJson(revenueData));
        request.setAttribute("ordersData", gson.toJson(ordersData));
        request.setAttribute("customersData", gson.toJson(customersData));
        request.setAttribute("orderCountByProductId", orderCountByProductId);
        request.setAttribute("totalRevenueByProductId", totalRevenueByProductId);

        request.setAttribute("totalCustomers", totalCustomers);
        request.setAttribute("totalOrders", totalOrders);
        request.setAttribute("totalRevenue", totalRevenue);
        request.setAttribute("totalProductSold", totalProductSold);

        request.setAttribute("revenueGrowth", revenueGrowth);
        request.setAttribute("orderGrowth", orderGrowth);
        request.setAttribute("customerGrowth", customerGrowth);
        request.setAttribute("productSoldGrowth", productSoldGrowth);

        List<BestSellingProduct> bestSellingProducts = db.getBestSellingProducts();
        request.setAttribute("bestSellingProducts", bestSellingProducts);

        List<TopUser> topUsers = db.getTopUsers();
        request.setAttribute("topUsers", topUsers);

        // Forward to JSP
        request.getRequestDispatcher("index.jsp").forward(request, response);

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
