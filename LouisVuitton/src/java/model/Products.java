
package model;

 // @author xu4nvi3t
public class Products {
    private int id;
    private Categories category_id;
    private String name;
    private String description;
    private String sub_description;
    private String avatar;
    private int status;
    private int hot;
    private int total_ratings;
    private int total_stars;
    private int stock_quantity;
    private int total_sold;
    private String created_at;
    private String updated_at;
    private String hover_avatar;
    private double price;
    private double sale;
    private double total_pay;

    public Products() {
    }

    public Products(int id, Categories category_id, String name, String description, String sub_description, String avatar, int status, int hot, int total_ratings, int total_starts, int stock_quantity, int total_sold, String created_at, String updated_at, String hover_avatar, double price, double sale, double total_pay) {
        this.id = id;
        this.category_id = category_id;
        this.name = name;
        this.description = description;
        this.sub_description = sub_description;
        this.avatar = avatar;
        this.status = status;
        this.hot = hot;
        this.total_ratings = total_ratings;
        this.total_stars = total_starts;
        this.stock_quantity = stock_quantity;
        this.total_sold = total_sold;
        this.created_at = created_at;
        this.updated_at = updated_at;
        this.hover_avatar = hover_avatar;
        this.price = price;
        this.sale = sale;
        this.total_pay = total_pay;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Categories getCategory_id() {
        return category_id;
    }

    public void setCategory_id(Categories category_id) {
        this.category_id = category_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSub_description() {
        return sub_description;
    }

    public void setSub_description(String sub_description) {
        this.sub_description = sub_description;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getHot() {
        return hot;
    }

    public void setHot(int hot) {
        this.hot = hot;
    }

    public int getTotal_ratings() {
        return total_ratings;
    }

    public void setTotal_ratings(int total_ratings) {
        this.total_ratings = total_ratings;
    }

    public int getTotal_stars() {
        return total_stars;
    }

    public void setTotal_stars(int total_starts) {
        this.total_stars = total_stars;
    }

    public int getStock_quantity() {
        return stock_quantity;
    }

    public void setStock_quantity(int stock_quantity) {
        this.stock_quantity = stock_quantity;
    }

    public int getTotal_sold() {
        return total_sold;
    }

    public void setTotal_sold(int total_sold) {
        this.total_sold = total_sold;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(String updated_at) {
        this.updated_at = updated_at;
    }

    public String getHover_avatar() {
        return hover_avatar;
    }

    public void setHover_avatar(String hover_avatar) {
        this.hover_avatar = hover_avatar;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getSale() {
        return sale;
    }

    public void setSale(double sale) {
        this.sale = sale;
    }

    public double getTotal_pay() {
        return total_pay;
    }

    public void setTotal_pay(double total_pay) {
        this.total_pay = total_pay;
    }
    
    

}