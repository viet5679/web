package dal;

// @author xu4nvi3t
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Genders;

public class GendersDAO extends DBContext {
    
    public Genders getGenderById(int id){
        String sql = "select * from genders where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                Genders ge = new Genders();
                ge.setId(rs.getInt(1));
                ge.setName(rs.getString(2));
                return ge;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public ArrayList<Genders> getAllGender() {
        ArrayList<Genders> ListGender = new ArrayList<>();
        if (connection != null) {
            try {
                String sqlQuery = "SELECT * FROM genders";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet rs = stm.executeQuery();
                while (rs.next()) {
                    Genders g = new Genders(rs.getInt(1), rs.getString(2),
                            rs.getString(3), rs.getString(4));
                    ListGender.add(g);
                }
                return ListGender;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }
    
    public static void main(String[] args) {
        GendersDAO g = new GendersDAO();
        List<Genders> listGender = g.getAllGender();
        for(Genders x : listGender){
            System.out.println(x.getName());
        }
    }
}
