
package model;

 // @author xu4nvi3t
public class Products {
    private int id;
    private Categories categoryId;
    private String name;
    private String description;
    private String subDescription;
    private String avatar;
    private int status;
    private int hot;
    private int totalRatings;
    private int totalStars;
    private int stockQuantity;
    private int totalSold;
    private String createdAt;
    private String updatedAt;
    private String hoverAvatar;
    private double price;
    private double sale;
    private double totalPay;
    private String tag;

    public Products() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Categories getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Categories categoryId) {
        this.categoryId = categoryId;
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

    public String getSubDescription() {
        return subDescription;
    }

    public void setSubDescription(String subDescription) {
        this.subDescription = subDescription;
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

    public int getTotalRatings() {
        return totalRatings;
    }

    public void setTotalRatings(int totalRatings) {
        this.totalRatings = totalRatings;
    }

    public int getTotalStars() {
        return totalStars;
    }

    public void setTotalStars(int totalStars) {
        this.totalStars = totalStars;
    }

    public int getStockQuantity() {
        return stockQuantity;
    }

    public void setStockQuantity(int stockQuantity) {
        this.stockQuantity = stockQuantity;
    }

    public int getTotalSold() {
        return totalSold;
    }

    public void setTotalSold(int totalSold) {
        this.totalSold = totalSold;
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

    public String getHoverAvatar() {
        return hoverAvatar;
    }

    public void setHoverAvatar(String hoverAvatar) {
        this.hoverAvatar = hoverAvatar;
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

    public double getTotalPay() {
        return totalPay;
    }

    public void setTotalPay(double totalPay) {
        this.totalPay = totalPay;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public Products(int id, Categories categoryId, String name, String description, String subDescription, String avatar, int status, int hot, int totalRatings, int totalStars, int stockQuantity, int totalSold, String createdAt, String updatedAt, String hoverAvatar, double price, double sale, double totalPay, String tag) {
        this.id = id;
        this.categoryId = categoryId;
        this.name = name;
        this.description = description;
        this.subDescription = subDescription;
        this.avatar = avatar;
        this.status = status;
        this.hot = hot;
        this.totalRatings = totalRatings;
        this.totalStars = totalStars;
        this.stockQuantity = stockQuantity;
        this.totalSold = totalSold;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.hoverAvatar = hoverAvatar;
        this.price = price;
        this.sale = sale;
        this.totalPay = totalPay;
        this.tag = tag;
    }


}