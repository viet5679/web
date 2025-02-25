package dal;

// @author xu4nvi3t
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Slides;

public class SlidesDAO extends DBContext {

    public ArrayList<Slides> getAllSlides() {
        ArrayList<Slides> ListSlides = new ArrayList<>();
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM slides";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet rs = stm.executeQuery();
                while (rs.next()) {
                    Slides g = new Slides(rs.getInt(1), rs.getString(2),
                            rs.getString(3), rs.getString(4), 
                          rs.getString(5), rs.getString(6),
                          rs.getInt(7), rs.getString(8), rs.getString(9));
                    ListSlides.add(g);
                }
                return ListSlides;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
