package dal;

// @author xu4nvi3t
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import model.ProductSizes;
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
                } else {
                    sql.append(" GROUP BY p.id, p.category_id, p.name, p.description, p.sub_description, \n"
                            + "         p.avatar, p.status, p.hot, p.total_ratings, p.total_stars, \n"
                            + "         p.stock_quantity, p.total_sold, p.created_at, p.updated_at, \n"
                            + "         p.hover_avatar, p.price, p.sale, p.total_pay, p.tag;");
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

    public List<Products> getProductsByFilder(List<Integer> gid, List<Integer> cid, List<Integer> sid, Double price_low, Double price_high) {
        List<Products> list = new ArrayList();
        String sql = " SELECT \n"
                + "   *\n"
                + "FROM products p\n"
                + "LEFT JOIN product_sizes ps ON p.id = ps.product_id\n"
                + "LEFT JOIN product_gender pg ON p.id = pg.product_id where 1 = 1";
        if (!gid.isEmpty()) {
            sql += " AND gender_id IN (" + gid.stream().map(String::valueOf).collect(Collectors.joining(",")) + ")";
        }
        if (!cid.isEmpty()) {
            sql += " AND category_id IN (" + cid.stream().map(String::valueOf).collect(Collectors.joining(",")) + ")";
        }
        if (!sid.isEmpty()) {
            sql += " AND size_id IN (" + sid.stream().map(String::valueOf).collect(Collectors.joining(",")) + ")";
        }
        if (price_low != null) {
            sql += "and total_pay >= " + price_low;
        }
        if (price_low != null) {
            sql += "and total_pay >= " + price_low;
        }
        CategoriesDAO ca = new CategoriesDAO();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            Map<Integer, Products> productMap = new HashMap<>();
            while (rs.next()) {
                int productId = rs.getInt("id");
                if (!productMap.containsKey(productId)) {
                    Products pro = new Products(
                            rs.getInt(1), ca.getCategoryById(rs.getInt(2)), rs.getString(3), rs.getString(4),
                            rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getInt(9),
                            rs.getInt(10), rs.getInt(11), rs.getInt(12), rs.getString(13), rs.getString(14),
                            rs.getString(15), rs.getDouble(16), rs.getDouble(17), rs.getDouble(18),
                            rs.getString(19)
                    );
                    productMap.put(productId, pro);
                }
            }
            list.addAll(productMap.values());
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public Products getProductById(int id) {
        String sql = "select * from products where id = ?";
        CategoriesDAO ca = new CategoriesDAO();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Products pro = new Products(rs.getInt(1), ca.getCategoryById(rs.getInt(2)), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getInt(11), rs.getInt(12), rs.getString(13), rs.getString(14), rs.getString(15), rs.getDouble(16), rs.getDouble(17), rs.getDouble(18), rs.getString(19));
                return pro;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<ProductSizes> getProductsSizes() {
        List<ProductSizes> list = new ArrayList();
        String sql = "select * from product_sizes ";
        SizesDAO si = new SizesDAO();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                ProductSizes ps = new ProductSizes(getProductById(rs.getInt(1)), si.getSizeById(rs.getInt(2)), rs.getInt(3), rs.getInt(4), rs.getString(5));
                list.add(ps);
            }
        } catch (Exception e) {
        }
        return list;
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
