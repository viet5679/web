package dal;

// @author xu4nvi3t

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Categories;

public class CategoriesDAO extends DBContext {
    
    public ArrayList<Categories> getAll() {
        ArrayList<Categories> listCategory = new ArrayList<>();
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM categories";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet rs = stm.executeQuery();
                while (rs.next()) {
                    Categories c = new Categories(rs.getInt(1), rs.getString(2),
                            rs.getInt(3), rs.getString(4), rs.getString(5));
                    listCategory.add(c);
                }
                return listCategory;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }
    
    public ArrayList<Categories> getAllCategory() {
        ArrayList<Categories> listCategory = new ArrayList<>();
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM categories where status = 1";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet rs = stm.executeQuery();
                while (rs.next()) {
                    Categories c = new Categories(rs.getInt(1), rs.getString(2),
                            rs.getInt(3), rs.getString(4), rs.getString(5));
                    listCategory.add(c);
                }
                return listCategory;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }
    
    public boolean disableCategory(String categoryId) {
        String sql = "UPDATE categories SET status = 0 WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, categoryId);
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean enableCategory(String categoryId) {
        String sql = "UPDATE categories SET status = 1 WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, categoryId);
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteCategory(int categoryID) {
        String sql = "DELETE FROM categories WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, categoryID);
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public Categories getCategoryById(int id) {
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM Categories WHERE id = ?";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                stm.setInt(1, id);
                ResultSet rs = stm.executeQuery();
                while (rs.next()) {
                    Categories c = new Categories(rs.getInt(1), rs.getString(2),
                            rs.getInt(3), rs.getString(4), rs.getString(5));
                    return c;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public void insert(Categories c) {
        String sql = "INSERT INTO [dbo].[categories]\n"
                + "           ([id]\n"
                + "           ,[name]\n"
                + "           ,[status]\n"
                + "           ,[created_at]\n"
                + "           ,[updated_at])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,1\n"
                + "           ,getdate()\n"
                + "           ,getdate())";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, c.getId());
            ps.setString(2, c.getName());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
