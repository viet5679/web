package dal;

import utils.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.admin.BestSellingProduct;
import model.admin.TopUser;

public class DashboardDAO extends DBContext {

    private static final Logger LOGGER = Logger.getLogger(DashboardDAO.class.getName());

    // ------------------- HÀM LẤY SỐ LƯỢNG KHÁCH HÀNG -------------------
    public int getTotalCustomers() {
        String sql = "SELECT COUNT(DISTINCT user_id) FROM orders";
        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.err.println("Lỗi SQL getTotalCustomers: " + e.getMessage());
        }
        return 0;
    }

    public int getTotalProductSold() {
        String sql = "SELECT SUM(total_product) FROM orders";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.err.println("Lỗi SQL getTotalProductSold: " + e.getMessage());
        }

        return 0;
    }

// -------------------CÁC HÀM TÍNH TĂNG TRƯỞNG-------------------
    public double getRevenueGrowth() {
        String sql = "SELECT "
                + "(SELECT SUM(total_price) FROM orders WHERE MONTH(created_at) = MONTH(GETDATE()) AND YEAR(created_at) = YEAR(GETDATE())) AS CurrentMonth, "
                + "(SELECT SUM(total_price) FROM orders WHERE MONTH(created_at) = MONTH(DATEADD(MONTH, -1, GETDATE())) AND YEAR(created_at) = YEAR(DATEADD(MONTH, -1, GETDATE()))) AS LastMonth";
        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                return calculateGrowth(rs.getDouble("CurrentMonth"), rs.getDouble("LastMonth"));
            }
        } catch (SQLException e) {
            System.err.println("Lỗi SQL getRevenueGrowth: " + e.getMessage());
        }
        return 0.0;
    }

    public double getOrderGrowth() {
        String sql = "SELECT "
                + "(SELECT COUNT(*) FROM orders WHERE MONTH(created_at) = MONTH(GETDATE()) AND YEAR(created_at) = YEAR(GETDATE())) AS CurrentMonth, "
                + "(SELECT COUNT(*) FROM orders WHERE MONTH(created_at) = MONTH(DATEADD(MONTH, -1, GETDATE())) AND YEAR(created_at) = YEAR(DATEADD(MONTH, -1, GETDATE()))) AS LastMonth";
        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                return calculateGrowth(rs.getDouble("CurrentMonth"), rs.getDouble("LastMonth"));
            }
        } catch (SQLException e) {
            System.err.println("Lỗi SQL getOrderGrowth: " + e.getMessage());
        }
        return 0.0;
    }

    public double getCustomerGrowth() {
        String sql = "SELECT "
                + "(SELECT COUNT(DISTINCT user_id) FROM orders WHERE MONTH(created_at) = MONTH(GETDATE()) AND YEAR(created_at) = YEAR(GETDATE())) AS CurrentMonth, "
                + "(SELECT COUNT(DISTINCT user_id) FROM orders WHERE MONTH(created_at) = MONTH(DATEADD(MONTH, -1, GETDATE())) AND YEAR(created_at) = YEAR(DATEADD(MONTH, -1, GETDATE()))) AS LastMonth";
        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                return calculateGrowth(rs.getDouble("CurrentMonth"), rs.getDouble("LastMonth"));
            }
        } catch (SQLException e) {
            System.err.println("Lỗi SQL getCustomerGrowth: " + e.getMessage());
        }
        return 0.0;
    }

    public double getProductSoldGrowth() {
        String sql = "SELECT "
                + "SUM(CASE WHEN MONTH(created_at) = MONTH(GETDATE()) THEN total_product ELSE 0 END) AS CurrentMonth, "
                + "SUM(CASE WHEN MONTH(created_at) = MONTH(DATEADD(MONTH, -1, GETDATE())) THEN total_product ELSE 0 END) AS LastMonth "
                + "FROM orders "
                + "WHERE MONTH(created_at) IN (MONTH(GETDATE()), MONTH(DATEADD(MONTH, -1, GETDATE())))";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                return calculateGrowth(rs.getDouble("CurrentMonth"), rs.getDouble("LastMonth"));
            }
        } catch (SQLException e) {
            System.err.println("Lỗi SQL getProductSoldGrowth: " + e.getMessage());
        }

        return 0.0;
    }

// -------------------CÁC HÀM TÍNH/ĐẾM GIÁ TRỊ THEO SẢN PHẨM -------------------
    public Map<Integer, Integer> getOrderCountByProductId() {
        Map<Integer, Integer> orderCountByProductId = new HashMap<>();
        String sql = "SELECT od.product_id, COUNT(*) AS OrderCount FROM order_details od JOIN orders o ON od.order_id = o.id GROUP BY od.product_id";
        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                orderCountByProductId.put(rs.getInt("product_id"), rs.getInt("OrderCount"));
            }
        } catch (SQLException e) {
            System.err.println("Lỗi SQL getOrderCountByProductId: " + e.getMessage());
        }
        return orderCountByProductId;
    }

    public Map<Integer, Double> getTotalRevenueByProductId() {
        Map<Integer, Double> revenueByProductId = new HashMap<>();
        String sql = "SELECT od.product_id, SUM(od.price * od.quantity) AS TotalRevenue FROM order_details od JOIN orders o ON od.order_id = o.id GROUP BY od.product_id";
        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                revenueByProductId.put(rs.getInt("product_id"), rs.getDouble("TotalRevenue"));
            }
        } catch (SQLException e) {
            System.err.println("Lỗi SQL getTotalRevenueByProductId: " + e.getMessage());
        }
        return revenueByProductId;
    }

// -------------------CÁC HÀM LẤY GIÁ TRỊ THEO THÁNG -------------------
    public Map<Integer, Double> getMonthlyRevenue() {
        Map<Integer, Double> revenueByMonth = new HashMap<>();

        // Khởi tạo doanh thu cho 12 tháng
        for (int i = 1; i <= 12; i++) {
            revenueByMonth.put(i, 0.0);
        }

        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return revenueByMonth;
        }

        String sql = "SELECT MONTH(o.created_at) AS month, SUM(o.total_price) AS revenue "
                + "FROM orders o "
                + "WHERE YEAR(o.created_at) = YEAR(GETDATE()) "
                + "GROUP BY MONTH(o.created_at)";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                int month = rs.getInt("month");
                double revenue = rs.getDouble("revenue");
                revenueByMonth.put(month, revenue);
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Lỗi khi lấy doanh thu theo tháng", e);
        }

        return revenueByMonth;
    }

    public Map<Integer, Integer> getMonthlyOrderCount() {
        Map<Integer, Integer> ordersByMonth = new HashMap<>();

        // Khởi tạo số lượng đơn hàng cho 12 tháng
        for (int i = 1; i <= 12; i++) {
            ordersByMonth.put(i, 0);
        }

        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return ordersByMonth;
        }

        String sql = "SELECT MONTH(created_at) AS month, COUNT(*) AS order_count "
                + "FROM orders "
                + "WHERE YEAR(created_at) = YEAR(GETDATE()) "
                + "GROUP BY MONTH(created_at)";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                int month = rs.getInt("month");
                int count = rs.getInt("order_count");
                ordersByMonth.put(month, count);
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Lỗi khi lấy số lượng đơn hàng theo tháng", e);
        }

        return ordersByMonth;
    }

    public Map<Integer, Integer> getMonthlyCustomerCount() {
        Map<Integer, Integer> customersByMonth = new HashMap<>();

        // Khởi tạo số lượng khách hàng cho 12 tháng
        for (int i = 1; i <= 12; i++) {
            customersByMonth.put(i, 0);
        }

        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return customersByMonth;
        }

        String sql = "SELECT MONTH(o.created_at) AS month, COUNT(DISTINCT o.user_id) AS customer_count "
                + "FROM orders o "
                + "WHERE YEAR(o.created_at) = YEAR(GETDATE()) "
                + "GROUP BY MONTH(o.created_at)";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                int month = rs.getInt("month");
                int count = rs.getInt("customer_count");
                customersByMonth.put(month, count);
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Lỗi khi lấy số lượng khách hàng theo tháng", e);
        }

        return customersByMonth;
    }

    public Map<Integer, Integer> getMonthlyProductSold() {
        Map<Integer, Integer> productSoldByMonth = new HashMap<>();

        // Khởi tạo tất cả tháng với giá trị 0
        for (int i = 1; i <= 12; i++) {
            productSoldByMonth.put(i, 0);
        }

        String sql = "SELECT MONTH(created_at) AS month, SUM(total_product) AS total_sold "
                + "FROM orders "
                + "WHERE YEAR(created_at) = YEAR(GETDATE()) "
                + "GROUP BY MONTH(created_at)";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                int month = rs.getInt("month");
                int totalSold = rs.getInt("total_sold");
                productSoldByMonth.put(month, totalSold);
            }
        } catch (SQLException e) {
            System.err.println("Lỗi SQL getMonthlyProductSold: " + e.getMessage());
        }

        return productSoldByMonth;
    }

    // ------------------- HÀM TÍNH TỶ LỆ TĂNG TRƯỞNG -------------------
    private double calculateGrowth(double current, double previous) {
        if (previous == 0) {
            return current > 0 ? 100.0 : 0.0;
        }
        return ((current - previous) / previous) * 100.0;
    }

    // ------------------------ HÀM LẤY CÁC BẢNG SAU BIỂU ĐỒ ---------------------------------
    public List<BestSellingProduct> getBestSellingProducts() {
        List<BestSellingProduct> list = new ArrayList<>();
        String sql = "SELECT p.name, p.sale, p.stock_quantity, SUM(od.quantity) AS total_sold "
                + "FROM order_details od "
                + "JOIN products p ON od.product_id = p.id "
                + "GROUP BY p.name, p.sale, p.stock_quantity "
                + "ORDER BY total_sold DESC ";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new BestSellingProduct(
                        rs.getString("name"),
                        rs.getInt("total_sold"),
                        rs.getInt("sale"),
                        rs.getInt("stock_quantity")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<TopUser> getTopUsers() {
        List<TopUser> list = new ArrayList<>();
        String sql = "SELECT TOP 5 u.name AS name, u.phone, COUNT(o.id) AS order_count, SUM(o.total_price) AS total_spent "
                + "FROM users u "
                + "JOIN orders o ON u.id = o.user_id "
                + "GROUP BY u.name, u.phone "
                + "ORDER BY total_spent DESC";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    String name = rs.getString("name");
                    String phone = rs.getString("phone");
                    int orderCount = rs.getInt("order_count");
                    double totalSpent = rs.getDouble("total_spent");
                    list.add(new TopUser(name, phone, orderCount, totalSpent));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

}
