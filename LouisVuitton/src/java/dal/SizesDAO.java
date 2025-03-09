/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Sizes;

/**
 *
 * @author vuhuu
 */
public class SizesDAO extends DBContext{
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