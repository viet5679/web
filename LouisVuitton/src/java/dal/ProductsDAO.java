package dal;

// @author xu4nvi3t
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Products;

public class ProductsDAO extends DBContext {

    // get product by Cid
    public ArrayList<Products> getAllProductByCid(int cid) {
        ArrayList<Products> listProduct = new ArrayList<>();
        CategoriesDAO cg = new CategoriesDAO();
        if (connection != null) {
            try {
                StringBuilder sql = new StringBuilder("SELECT * FROM products WHERE 1=1");
                if (cid != 0) {
                    sql.append(" AND category_id = ").append(cid);
                }
                PreparedStatement stm = connection.prepareStatement(sql.toString());
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    Products p = new Products(res.getInt(1), cg.getCategoryById(res.getInt(2)), res.getString(3),
                            res.getString(4), res.getString(5), res.getString(6),
                            res.getInt(7), res.getInt(8), res.getInt(9),
                            res.getInt(10), res.getInt(11), res.getInt(12),
                            res.getString(13), res.getString(14), res.getString(15),
                            res.getDouble(16), res.getDouble(17),
                            res.getDouble(18), res.getString(19));
                    listProduct.add(p);
                }
                return listProduct;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    // get product by gid (gender id)
    public ArrayList<Products> getAllProductByGid(int gid) {
        ArrayList<Products> listProduct = new ArrayList<>();
        CategoriesDAO cg = new CategoriesDAO();
        if (connection != null) {
            try {
                StringBuilder sql = new StringBuilder("SELECT * FROM products p\n"
                        + "JOIN product_gender pg on p.id = pg.product_id");
                if (gid != 0) {
                    sql.append(" AND pg.gender_id = ").append(gid);
                }
                PreparedStatement stm = connection.prepareStatement(sql.toString());
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    Products p = new Products(res.getInt(1), cg.getCategoryById(res.getInt(2)), res.getString(3),
                            res.getString(4), res.getString(5), res.getString(6),
                            res.getInt(7), res.getInt(8), res.getInt(9),
                            res.getInt(10), res.getInt(11), res.getInt(12),
                            res.getString(13), res.getString(14), res.getString(15),
                            res.getDouble(16), res.getDouble(17),
                            res.getDouble(18), res.getString(19));
                    listProduct.add(p);
                }
                return listProduct;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    // Get 8 best seller
    public ArrayList<Products> getBestSellerProduct() {
        ArrayList<Products> listProduct = new ArrayList<>();
        CategoriesDAO cg = new CategoriesDAO();
        if (connection != null) {
            try {
                String sqlQuery = "SELECT TOP 8 * FROM products\n"
                        + "WHERE 1=1\n"
                        + "ORDER BY total_sold DESC;";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    Products p = new Products(res.getInt(1), cg.getCategoryById(res.getInt(2)), res.getString(3),
                            res.getString(4), res.getString(5), res.getString(6),
                            res.getInt(7), res.getInt(8), res.getInt(9),
                            res.getInt(10), res.getInt(11), res.getInt(12),
                            res.getString(13), res.getString(14), res.getString(15),
                            res.getDouble(16), res.getDouble(17),
                            res.getDouble(18), res.getString(19));
                    listProduct.add(p);
                }
                return listProduct;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    // Select top 5 product best sale 
    public ArrayList<Products> getSaleProduct() {
        ArrayList<Products> listProduct = new ArrayList<>();
        CategoriesDAO cg = new CategoriesDAO();
        if (connection != null) {
            try {
                String sqlQuery = "SELECT TOP 5 * FROM Products ORDER BY sale;";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    Products p = new Products(res.getInt(1), cg.getCategoryById(res.getInt(2)), res.getString(3),
                            res.getString(4), res.getString(5), res.getString(6),
                            res.getInt(7), res.getInt(8), res.getInt(9),
                            res.getInt(10), res.getInt(11), res.getInt(12),
                            res.getString(13), res.getString(14), res.getString(15),
                            res.getDouble(16), res.getDouble(17),
                            res.getDouble(18), res.getString(19));
                    listProduct.add(p);
                }
                return listProduct;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    // Select top 4 product new arrivals
    public ArrayList<Products> getNewArrivalsProduct() {
        ArrayList<Products> listProduct = new ArrayList<>();
        CategoriesDAO cg = new CategoriesDAO();
        if (connection != null) {
            try {
                String sqlQuery = "SELECT TOP 4 * FROM products ORDER BY id DESC;";
                PreparedStatement stm = connection.prepareStatement(sqlQuery);
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    Products p = new Products(res.getInt(1), cg.getCategoryById(res.getInt(2)), res.getString(3),
                            res.getString(4), res.getString(5), res.getString(6),
                            res.getInt(7), res.getInt(8), res.getInt(9),
                            res.getInt(10), res.getInt(11), res.getInt(12),
                            res.getString(13), res.getString(14), res.getString(15),
                            res.getDouble(16), res.getDouble(17),
                            res.getDouble(18), res.getString(19));
                    listProduct.add(p);
                }
                return listProduct;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    // Get 12 product by gender_id
    public ArrayList<Products> get12ProductByGid(int gender_id) {
        ArrayList<Products> listProduct = new ArrayList<>();
        CategoriesDAO cg = new CategoriesDAO();
        if (connection != null) {
            try {
                StringBuilder sql = new StringBuilder("SELECT TOP 12 p.* FROM products p JOIN product_gender pg ON p.id = pg.product_id WHERE 1=1");
                if (gender_id != 0) {
                    sql.append(" AND pg.gender_id = ").append(gender_id);
                }
                PreparedStatement stm = connection.prepareStatement(sql.toString());
                ResultSet res = stm.executeQuery();
                while (res.next()) {
                    Products p = new Products(res.getInt(1), cg.getCategoryById(res.getInt(2)), res.getString(3),
                            res.getString(4), res.getString(5), res.getString(6),
                            res.getInt(7), res.getInt(8), res.getInt(9),
                            res.getInt(10), res.getInt(11), res.getInt(12),
                            res.getString(13), res.getString(14), res.getString(15),
                            res.getDouble(16), res.getDouble(17),
                            res.getDouble(18), res.getString(19));
                    listProduct.add(p);
                }
                return listProduct;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }
    
    // Get all product with size
//    public ArrayList<Product_sizes> getAllProductWithSizeByCid(int cid) {
//        ArrayList<Product_sizes> listProduct = new ArrayList<>();
//        CategoriesDAO cg = new CategoriesDAO();
//        if (connection != null) {
//            try {
//                StringBuilder sql = new StringBuilder("SELECT p.*, s.name AS size FROM products p JOIN product_sizes ps ON p.id = ps.product_id JOIN sizes s ON ps.size_id = s.id WHERE 1=1");
//                if (cid != 0) {
//                    sql.append(" AND category_id = ").append(cid);
//                }
//                PreparedStatement stm = connection.prepareStatement(sql.toString());
//                ResultSet res = stm.executeQuery();
//                while (res.next()) {
//                    Product_sizes p = new Product_sizes(res.getInt(1), cg.getCategoryById(res.getInt(2)), res.getString(3),
//                            res.getString(4), res.getString(5), res.getString(6),
//                            res.getInt(7), res.getInt(8), res.getInt(9),
//                            res.getInt(10), res.getInt(11), res.getInt(12),
//                            res.getString(13), res.getString(14), res.getString(15),
//                            res.getDouble(16), res.getDouble(17),
//                            res.getDouble(1));
//                    listProduct.add(p);
//                }
//                return listProduct;
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
//        return null;
//    }
}
