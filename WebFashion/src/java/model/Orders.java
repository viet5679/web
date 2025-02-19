
package model;

 // @author xu4nvi3t
public class Orders {
    private int id;
    private double price;
    private Users user_id;
    private int number_stars;
    private double total_price;
    private double total_product;
    private int status;
    private double total_discount;
    private String note;
    private String created_at;
    private String updated_at;

    public Orders() {
    }

    public Orders(int id, double price, Users user_id, int number_stars, double total_price, double total_product, int status, double total_discount, String note, String created_at, String updated_at) {
        this.id = id;
        this.price = price;
        this.user_id = user_id;
        this.number_stars = number_stars;
        this.total_price = total_price;
        this.total_product = total_product;
        this.status = status;
        this.total_discount = total_discount;
        this.note = note;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Users getUser_id() {
        return user_id;
    }

    public void setUser_id(Users user_id) {
        this.user_id = user_id;
    }

    public int getNumber_stars() {
        return number_stars;
    }

    public void setNumber_stars(int number_stars) {
        this.number_stars = number_stars;
    }

    public double getTotal_price() {
        return total_price;
    }

    public void setTotal_price(double total_price) {
        this.total_price = total_price;
    }

    public double getTotal_product() {
        return total_product;
    }

    public void setTotal_product(double total_product) {
        this.total_product = total_product;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public double getTotal_discount() {
        return total_discount;
    }

    public void setTotal_discount(double total_discount) {
        this.total_discount = total_discount;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
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
    
    
}
