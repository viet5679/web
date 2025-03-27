package dal;

// @author xu4nvi3t

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Orders;

public class OrderDAO extends DBContext {
        
    public boolean hasUserPurchasedProduct(int uid, int pid) {
        String sql = "SELECT * FROM users u "
                + "JOIN orders o ON o.user_id = u.id "
                + "JOIN order_details od ON od.order_id = o.id "
                + "WHERE u.id = ? AND od.product_id = ? AND o.status = 'Delivered'";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, uid);
            st.setInt(2, pid);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0; // Nếu có ít nhất một dòng thì trả về true
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false; // Nếu lỗi hoặc không có sản phẩm nào thì trả về false
    }
    
    public void updateStatus(int id, String status) {
        String sql = "UPDATE [dbo].[orders]\n"
                + "   SET\n"
                + "      [status] = ?\n"
                + "      \n"
                + " WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, status);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (Exception e) {
        }
        
    }
    
    public void updateStatusReject(int id) {
        String sql = "UPDATE [dbo].[orders]\n"
                + "   SET\n"
                + "      [status] = 'Canceled'\n"
                + "      \n"
                + " WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (Exception e) {
        }
        
    }

    public List<Orders> getAllO() {
        List<Orders> list = new ArrayList();
        String sql = "select * from orders";
        UserDAO ud = new UserDAO();

        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Orders od = new Orders(rs.getInt(1), ud.getUserById(rs.getInt(2)), rs.getDouble(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11));
                list.add(od);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    private static final Logger LOGGER = Logger.getLogger(OrderDAO.class.getName());
    // Thêm đơn hàng vào bảng orders
    public int addOrder(Orders order) throws SQLException {
        String insertSQL = "INSERT INTO orders (user_id, name, phone, address, comments, total_price, total_product, status, created_at, updated_at) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, GETDATE(), GETDATE())";

        PreparedStatement ps = connection.prepareStatement(insertSQL);
        ps.setInt(1, order.getUser().getId());
        ps.setString(2, order.getName());
        ps.setString(3, order.getPhone());
        ps.setString(4, order.getAddress());
        ps.setString(5, order.getComments());
        ps.setDouble(6, order.getTotalPrice());
        ps.setInt(7, order.getTotalProduct());
        ps.setString(8, order.getStatus());

        int affectedRows = ps.executeUpdate();
        if (affectedRows == 0) {
            throw new SQLException("Creating order failed, no rows affected.");
        }

        // Truy vấn ID của đơn hàng mới nhất của user
        String selectSQL = "SELECT MAX(id) FROM orders WHERE user_id = ?";
        PreparedStatement psSelect = connection.prepareStatement(selectSQL);
        psSelect.setInt(1, order.getUser().getId());

        ResultSet rs = psSelect.executeQuery();
        if (rs.next()) {
            return rs.getInt(1); // Lấy ID đơn hàng vừa tạo
        } else {
            throw new SQLException("Failed to retrieve order ID.");
        }
    }

    // Lấy danh sách đơn hàng theo User ID
    public List<Orders> getOrdersByUserId(int userId) throws SQLException {
        List<Orders> orders = new ArrayList<>();
        String sql = "SELECT * FROM orders WHERE user_id = ? ORDER BY created_at DESC";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, userId);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            Orders order = new Orders();
            order.setId(rs.getInt("id"));
            order.setName(rs.getString("name"));
            order.setPhone(rs.getString("phone"));
            order.setAddress(rs.getString("address"));
            order.setComments(rs.getString("comments"));
            order.setTotalPrice(rs.getDouble("total_price"));
            order.setTotalProduct(rs.getInt("total_product"));
            order.setStatus(rs.getString("status"));
            order.setCreatedAt(rs.getString("created_at"));
            orders.add(order);
        }
        return orders;
    }

    public Orders getOrderById(int orderId) throws SQLException {
        String sql = "SELECT * FROM orders WHERE id = ?";
        UserDAO uDAO = new UserDAO();
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, orderId);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Orders order = new Orders(
                        rs.getInt("id"),
                        uDAO.getUserById(rs.getInt("user_id")), // Lấy thông tin user
                        rs.getDouble("total_price"),
                        rs.getInt("total_product"),
                        rs.getString("status"),
                        rs.getString("created_at"),
                        rs.getString("updated_at"),
                        rs.getString("name"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getString("comments")
                );
                return order;
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
            throw e;
        }
        return null;
    }

    public void updateOrderStatus(int orderId, String status) throws SQLException {
        String sql = "UPDATE orders SET status = ? WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, status);
            ps.setInt(2, orderId);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
    // Lấy totalRevenue và  totalOrder cho Dashboard
    public int getTotalOrders() {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return 0;
        }

        String sql = "SELECT COUNT(*) FROM Orders";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                return rs.getInt(1);
            }
            return 0;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching total orders", e);
            return 0;
        }
    }

    public double getTotalRevenue() {
        if (connection == null) {
            LOGGER.severe("Database connection is null");
            return 0;
        }

        String sql = "SELECT SUM(total_price) FROM orders WHERE MONTH(created_at) = MONTH(GETDATE()) and status = 'Delivered'";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                return rs.getDouble(1);
            }
            return 0;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error fetching total revenue", e);
            return 0;
        }
    }
}
