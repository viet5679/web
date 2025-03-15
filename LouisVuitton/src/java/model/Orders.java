
package model;

 // @author xu4nvi3t
import java.util.List;


public class Orders {
    private int id;
    private Users user;
    private double totalPrice;
    private int totalProduct;
    private String status;
    private String createdAt;
    private String updatedAt;
    private String name;
    private String phone;
    private String address;
    private String comments;

    public Orders() {
    }
    
    private List<OrderDetails> orderDetails;

    public Orders(int id, Users user, double totalPrice,int totalProduct, String status, String createdAt, String updatedAt, String name, String phone, String address, String comments) {
        this.id = id;
        this.user = user;
        this.totalPrice = totalPrice;
        this.totalProduct = totalProduct;
        this.status = status;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.comments = comments;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getTotalProduct() {
        return totalProduct;
    }

    public void setTotalProduct(int totalProduct) {
        this.totalProduct = totalProduct;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public String getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(String updatedAt) {
        this.updatedAt = updatedAt;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }
    
    public List<OrderDetails> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetails> orderDetails) {
        this.orderDetails = orderDetails;
    }
    
}
