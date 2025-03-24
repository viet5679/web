package dal;

// @author xu4nvi3t
import utils.DBContext;
import model.Users;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDAO extends DBContext {
    
    public List<Users> getUsersByRole(int roleId) {
        List<Users> users = new ArrayList<>();
        String query = "SELECT * FROM Users WHERE role = ?";

        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, roleId);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Users user = new Users();
                user.setId(rs.getInt("id"));
                user.setEmail(rs.getString("email"));
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setGender(rs.getString("gender"));
                user.setRole(rs.getInt("role"));
                user.setAvatar(rs.getString("avatar"));
                user.setAddress(rs.getString("Address"));
                user.setPhone(rs.getString("Phone"));
                user.setStatus(rs.getInt("status"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
    
    public boolean disableUser(String userId) {
        String sql = "UPDATE users SET status = 2 WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, userId);
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean enableUser(String userId) {
        String sql = "UPDATE users SET status = 1 WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, userId);
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public Users getUserById(int id) {
        String sql = "select * from users where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Users u = new Users(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getString(9), rs.getString(10), rs.getInt(11), rs.getString(12));
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Users checkUser(String email, String password) {
        String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Users user = new Users(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getString(9), rs.getString(10), rs.getInt(11), rs.getString(12));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean updateUser(Users user) {
        String sql = "UPDATE Users SET name=?, address=?, email=?, phone=?, gender=?, avatar=? WHERE id=?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getAddress());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getPhone());
            stmt.setString(5, user.getGender());
            stmt.setString(6, user.getAvatar()); // Ảnh từ input ẩn
            stmt.setInt(7, user.getId());

            int rowsUpdated = stmt.executeUpdate();
            System.out.println("Rows updated: " + rowsUpdated);
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace(); // In lỗi SQL ra console
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
