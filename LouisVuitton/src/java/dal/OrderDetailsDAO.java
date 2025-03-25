package dal;

// @author xu4nvi3t

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.OrderDetails;
import java.sql.*;
import model.Orders;
import model.Products;

public class OrderDetailsDAO extends DBContext {

    // Thêm sản phẩm vào OrderDetails
    public void addOrderDetail(OrderDetails orderDetail) throws SQLException {
        String sql = "INSERT INTO order_details (order_id, product_id, price, quantity, discount, total_price, name, avatar, status, created_at, updated_at) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, GETDATE(), GETDATE())";

        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, orderDetail.getOrder().getId());
        ps.setInt(2, orderDetail.getProduct().getId());
        ps.setDouble(3, orderDetail.getPrice());
        ps.setInt(4, orderDetail.getQuantity());
        ps.setDouble(5, orderDetail.getDiscount());
        ps.setDouble(6, orderDetail.getTotalPrice());
        ps.setString(7, orderDetail.getName());
        ps.setString(8, orderDetail.getAvatar());
        ps.setString(9, orderDetail.getStatus());
        ps.executeUpdate();

    }

    public List<OrderDetails> getOrderDetailsByOrderId(int orderId) throws SQLException {
        String sql = "SELECT * FROM order_details WHERE order_id = ?";

        List<OrderDetails> orderDetails = new ArrayList<>();
        OrderDAO orderDAO = new OrderDAO();
        ProductsDAO productDAO = new ProductsDAO();

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, orderId);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OrderDetails detail = new OrderDetails();
                // Lấy thông tin Order và Product
                Orders order = orderDAO.getOrderById(rs.getInt("order_id"));
                Products product = productDAO.getProductById(rs.getInt("product_id"));
                detail.setOrder(order);
                detail.setProduct(product);
                detail.setPrice(rs.getDouble("price"));
                detail.setQuantity(rs.getInt("quantity"));
                detail.setDiscount(rs.getDouble("discount"));
                detail.setTotalPrice(rs.getDouble("total_price"));
                detail.setName(rs.getString("name"));
                detail.setAvatar(rs.getString("avatar"));
                detail.setStatus(rs.getString("status"));
                detail.setCreateAt(rs.getString("created_at"));
                detail.setUpdateAt(rs.getString("updated_at"));
                orderDetails.add(detail);
            }
        } catch (SQLException e) {
            System.out.println("Error " + e.getMessage());
            throw e;
        }
        return orderDetails;
    }
}
