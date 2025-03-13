
package model;

 // @author xu4nvi3t
public class OrderDetails {
    private Orders order;
    private Products product;
    private double price;
    private int quantity;
    private double discount;
    private double totalPrice;
    private String name;
    private String avatar;
    private String status;
    private String createAt;
    private String updateAt;

    public OrderDetails() {
    }

    public OrderDetails( Orders order, Products product, double price, int quantity, double discount, double totalPrice, String name, String avatar, String status, String createAt, String updateAt) {
        this.order = order;
        this.product = product;
        this.price = price;
        this.quantity = quantity;
        this.discount = discount;
        this.totalPrice = totalPrice;
        this.name = name;
        this.avatar = avatar;
        this.status = status;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public Orders getOrder() {
        return order;
    }

    public void setOrder(Orders order) {
        this.order = order;
    }

    public Products getProduct() {
        return product;
    }

    public void setProduct(Products product) {
        this.product = product;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCreateAt() {
        return createAt;
    }

    public void setCreateAt(String createAt) {
        this.createAt = createAt;
    }

    public String getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(String updateAt) {
        this.updateAt = updateAt;
    }
    
    
}
