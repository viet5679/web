package dal;

// @author xu4nvi3t
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import model.ProductImages;
import model.ProductSizes;
import model.Products;

public class ProductsDAO extends DBContext {
    

    public List<ProductImages> getImagesByPid(int pid) {
        List<ProductImages> list = new ArrayList();
        String sql = "  select * from products_images where product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                ProductImages pi = new ProductImages(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
                list.add(pi);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Products> getAll() {
        List<Products> list = new ArrayList<>();
        String sql = "SELECT * FROM products";
        CategoriesDAO ca = new CategoriesDAO();
        SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd"); // Định dạng gốc từ DB
        SimpleDateFormat outputFormat = new SimpleDateFormat("dd/MM/yyyy"); // Định dạng mong muốn

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String formattedDate1 = formatDate(rs.getString(13), inputFormat, outputFormat);
                String formattedDate2 = formatDate(rs.getString(14), inputFormat, outputFormat);
                String formattedDate3 = formatDate(rs.getString(15), inputFormat, outputFormat);

                Products pro = new Products(
                        rs.getInt(1),
                        ca.getCategoryById(rs.getInt(2)),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getInt(10),
                        rs.getInt(11),
                        rs.getInt(12),
                        formattedDate1, // Ngày tháng đã định dạng
                        formattedDate2,
                        formattedDate3,
                        rs.getDouble(16),
                        rs.getDouble(17),
                        rs.getDouble(18),
                        rs.getString(19)
                );

                list.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    private String formatDate(String dateStr, SimpleDateFormat inputFormat, SimpleDateFormat outputFormat) {
        try {
            if (dateStr != null && !dateStr.isEmpty()) {
                Date date = inputFormat.parse(dateStr); // Chuyển String -> Date
                return outputFormat.format(date); // Chuyển Date -> Chuỗi định dạng mong muốn
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dateStr; // Trả về nguyên bản nếu có lỗi
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
        if (price_high != null) {
            sql += "and total_pay <= " + price_high;
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

    public List<ProductSizes> getProductsSizes(int id) {
        List<ProductSizes> list = new ArrayList();
        String sql = "select * from product_sizes where product_size = " + id;
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

    public List<Products> getProductsByFilderSearch(List<Integer> gid, List<Integer> cid, List<Integer> sid, Double price_low, Double price_high, String text) {
        List<Products> list = new ArrayList<>();
        String sql = "SELECT p.*, c.name AS category_name "
                + "FROM products p "
                + "LEFT JOIN product_sizes ps ON p.id = ps.product_id "
                + "LEFT JOIN product_gender pg ON p.id = pg.product_id "
                + "LEFT JOIN dbo.categories c ON c.id = p.category_id "
                + "WHERE (p.name LIKE ? OR c.name LIKE ?)";  // Tìm kiếm theo tên sản phẩm hoặc tên danh mục

        // Thêm các điều kiện lọc khác (gender, category, size, price)
        if (!gid.isEmpty()) {
            sql += " AND pg.gender_id IN (" + gid.stream().map(String::valueOf).collect(Collectors.joining(",")) + ")";
        }

        if (!cid.isEmpty()) {
            sql += " AND category_id IN (" + cid.stream().map(String::valueOf).collect(Collectors.joining(",")) + ")";
        }

        if (!sid.isEmpty()) {
            sql += " AND size_id IN (" + sid.stream().map(String::valueOf).collect(Collectors.joining(",")) + ")";
        }

        if (price_low != null) {
            sql += " AND total_pay >= ?";
        }
        if (price_high != null) {
            sql += " AND total_pay <= ?";
        }

        CategoriesDAO ca = new CategoriesDAO();
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            // Thiết lập giá trị cho điều kiện LIKE
            String searchTerm = "%" + text + "%";
            st.setString(1, searchTerm);  // Tìm kiếm tên sản phẩm có chứa từ khóa
            st.setString(2, searchTerm);  // Tìm kiếm tên danh mục có chứa từ khóa

            // Thiết lập các tham số cho giá (nếu có)
            int paramIndex = 3;  // Bắt đầu từ tham số thứ ba vì hai tham số LIKE đã được thiết lập
            if (price_low != null) {
                st.setDouble(paramIndex++, price_low);
            }
            if (price_high != null) {
                st.setDouble(paramIndex++, price_high);
            }

            ResultSet rs = st.executeQuery();
            Map<Integer, Products> productMap = new HashMap<>();

            // Lặp qua kết quả trả về
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
            e.printStackTrace();
        }
        return list;
    }
}
