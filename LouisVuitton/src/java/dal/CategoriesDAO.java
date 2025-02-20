
package dal;

 // @author xu4nvi3t
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Categories;


public class CategoriesDAO extends DBContext{
    public ArrayList<Categories> getAllCategory() {
        ArrayList<Categories> listCategory = new ArrayList<>();
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM Categories";
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

    public Categories getCategoryById(int id) {
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM Categories WHERE CategoryID = ?";
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

    public Categories getCategoryByProductGenderId(int pid) {
        if (connection != null) {
            try {
                String sqlQuery = "SELECT C.CategoryID, C.CategoryName, C.Description "
                        + "FROM Categories C "
                        + "JOIN Products P ON C.CategoryID = P.CategoryID "
                        + "WHERE P.ProductID = ?";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                stm.setInt(1, pid);
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
}
