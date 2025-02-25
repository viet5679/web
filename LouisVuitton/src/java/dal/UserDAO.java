package dal;

// @author xu4nvi3t
import model.Users;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO extends DBContext {

    public Users checkUser(String email, String password) {
        String sql = "SELECT id, name, email, password, phone, gender, address, avatar, status, role, created_at, updated_at FROM users WHERE email = ? AND password = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Users user = new Users(rs.getInt("id"), rs.getString("name"), rs.getString("email"), rs.getString("password"), rs.getString("phone"), rs.getString("gender"), rs.getString("address"), rs.getString("avatar"), rs.getInt("status"), rs.getInt("role"), rs.getString("created_at"), rs.getString("updated_at"));
                System.out.println(sql);
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean updateUser(Users user) {
        String sql = "UPDATE users SET name=?, email=?, phone=?, address=? WHERE id=?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user.getName());
            stm.setString(2, user.getEmail());
            stm.setString(3, user.getPhone());
            stm.setString(4, user.getAddress());
            stm.setInt(5, user.getId());
            int rowsUpdated = stm.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

}
