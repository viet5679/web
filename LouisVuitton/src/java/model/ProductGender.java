
package model;

 // @author xu4nvi3t
public class ProductGender {
    private Products productId;
    private Genders genderId;

    public ProductGender() {
    }

    public Products getProductId() {
        return productId;
    }

    public void setProductId(Products productId) {
        this.productId = productId;
    }

    public Genders getGenderId() {
        return genderId;
    }

    public void setGenderId(Genders genderId) {
        this.genderId = genderId;
    }

    public ProductGender(Products productId, Genders genderId) {
        this.productId = productId;
        this.genderId = genderId;
    }

    
}
