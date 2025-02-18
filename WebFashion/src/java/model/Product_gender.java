
package model;

 // @author xu4nvi3t
public class Product_gender {
    private Products product_id;
    private Genders gender_id;

    public Product_gender() {
    }

    public Product_gender(Products product_id, Genders gender_id) {
        this.product_id = product_id;
        this.gender_id = gender_id;
    }

    public Products getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Products product_id) {
        this.product_id = product_id;
    }

    public Genders getGender_id() {
        return gender_id;
    }

    public void setGender_id(Genders gender_id) {
        this.gender_id = gender_id;
    }
    
    
}
