/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import utils.DBContext;
import java.util.ArrayList;
import java.util.List;
import model.Rating;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author vuhuu
 */
public class RatingDAO extends DBContext {

        public List<Rating> getAllRatingWithId(int id) {
        List<Rating> list = new ArrayList();
        String sql = "select * from rating where product_id = ?";
        ProductsDAO pd = new ProductsDAO();
        UserDAO ud = new UserDAO();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Rating ra = new Rating(rs.getString(1), pd.getProductById(rs.getInt(2)), ud.getUserById(rs.getInt(3)), rs.getInt(4));
                list.add(ra);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void insertRating(Rating ra) {
        String sql = "INSERT INTO [dbo].[rating]\n"
                + "           ([description]\n"
                + "           ,[product_id]\n"
                + "           ,[user_id]\n"
                + "           ,[number_starts]\n"
                + "           ,[created_at]\n"
                + "           ,[updated_at])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,GETDATE()\n"
                + "           ,GETDATE())";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, ra.getDescription());
            st.setInt(2, ra.getProductId().getId());
            st.setInt(3, ra.getUserId().getId());
            st.setInt(4, ra.getNumberStars());
            st.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
