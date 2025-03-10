/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.ProductSizes;
import model.Sizes;

/**
 *
 * @author vuhuu
 */
public class SizesDAO extends DBContext{
    public List<ProductSizes> getSizeByPid(int pid){
        List<ProductSizes> list = new ArrayList();
        String sql = "select * from product_sizes where product_id = ?";
        ProductsDAO pd = new ProductsDAO();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pid);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                ProductSizes ps = new ProductSizes(pd.getProductById(rs.getInt(1)), getSizeById(rs.getInt(2)), rs.getInt(3), rs.getInt(4), rs.getString(5));
                list.add(ps);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
        
    }
    public Sizes getSizeById(int id){
        String sql = "select * from sizes where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                Sizes si = new Sizes(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
                return si;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public List<Sizes> getAllSize(){
        List<Sizes> list = new ArrayList();
        String sql = "select * from sizes";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Sizes si = new Sizes(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
                list.add(si);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
}