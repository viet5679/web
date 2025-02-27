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
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean updateUser(Users user) {
        String sql = "UPDATE users SET name=?, email=?, phone=?, address=?, gender=? WHERE id=?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user.getName());
            stm.setString(2, user.getEmail());
            stm.setString(3, user.getPhone());
            stm.setString(4, user.getAddress());
            stm.setString(5, user.getGender());
            stm.setInt(6, user.getId());
            System.out.println(user.getAddress());
            System.out.println(user.getGender());
            int rowsUpdated = stm.executeUpdate();
            System.out.println(sql);
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean insertUser(String name, String password, String email, String phone, String address) {
        String sql = "INSERT INTO users (name, password, email, phone, address, avatar, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?, GETDATE(), GETDATE())";

        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, password);
            stmt.setString(3, email);
            stmt.setString(4, phone);
            stmt.setString(5, address);
            stmt.setString(6, "assets/images/user/default.jpg");
            stmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Kiểm tra email có tồn tại không
    public boolean isEmailExist(String email) {
        String sql = "SELECT 1 FROM Users WHERE email = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            return rs.next(); // Nếu có kết quả => email tồn tại
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Lưu reset token vào database
    public boolean saveResetToken(String email, String token) {
        String sql = "UPDATE Users SET reset_token = ?, token_expiry = DATEADD(MINUTE, 30, GETDATE()) WHERE email = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, token);
            stmt.setString(2, email);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public String getEmailByToken(String token) {
        String sql = "SELECT email FROM Users WHERE reset_token = ? AND token_expiry > GETDATE()";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, token);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getString("email");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void updatePassword(String email, String newPassword) {
        String sql = "UPDATE Users SET password = ?, reset_token = NULL, token_expiry = NULL WHERE email = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, newPassword);
            stmt.setString(2, email);
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
