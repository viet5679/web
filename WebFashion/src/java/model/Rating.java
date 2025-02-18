
package model;

 // @author xu4nvi3t
public class Rating {
    private int id;
    private String description;
    private Products product_id;
    private Users user_id;
    private int number_stars;
    private String created_at;
    private String updated_at;

    public Rating() {
    }

    public Rating(int id, String description, Products product_id, Users user_id, int number_stars, String created_at, String updated_at) {
        this.id = id;
        this.description = description;
        this.product_id = product_id;
        this.user_id = user_id;
        this.number_stars = number_stars;
        this.created_at = created_at;
        this.updated_at = updated_at;
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

    public Products getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Products product_id) {
        this.product_id = product_id;
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
