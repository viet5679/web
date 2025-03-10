
package model;

 // @author xu4nvi3t
public class Rating {
    private String description;
    private Products productId;
    private Users userId;
    private int numberStars;


    public Rating() {
    }

    public Rating(String description, Products productId, Users userId, int numberStars) {
        this.description = description;
        this.productId = productId;
        this.userId = userId;
        this.numberStars = numberStars;

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

}
