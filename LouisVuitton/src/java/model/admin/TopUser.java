package model.admin;

// @author xu4nvi3t
public class TopUser {

    private String name;
    private String phone;
    private int orderCount;
    private double totalSpent;

    public TopUser(String name, String phone, int orderCount, double totalSpent) {
        this.name = name;
        this.phone = phone;
        this.orderCount = orderCount;
        this.totalSpent = totalSpent;
    }

    // Getters và Setters
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getOrderCount() {
        return orderCount;
    }

    public void setOrderCount(int orderCount) {
        this.orderCount = orderCount;
    }

    public double getTotalSpent() {
        return totalSpent;
    }

    public void setTotalSpent(double totalSpent) {
        this.totalSpent = totalSpent;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    
}
