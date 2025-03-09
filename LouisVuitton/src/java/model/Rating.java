
package model;

 // @author xu4nvi3t
public class Rating {
    private int id;
    private String description;
    private Products productId;
    private Users userId;
    private int numberStars;
    private String createdAt;
    private String updatedAt;

    public Rating() {
    }

    public Rating(int id, String description, Products productId, Users userId, int numberStars, String createdAt, String updatedAt) {
        this.id = id;
        this.description = description;
        this.productId = productId;
        this.userId = userId;
        this.numberStars = numberStars;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Products getProductId() {
        return productId;
    }

    public void setProductId(Products productId) {
        this.productId = productId;
    }

    public Users getUserId() {
        return userId;
    }

    public void setUserId(Users userId) {
        this.userId = userId;
    }

    public int getNumberStars() {
        return numberStars;
    }

    public void setNumberStars(int numberStars) {
        this.numberStars = numberStars;
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

}
