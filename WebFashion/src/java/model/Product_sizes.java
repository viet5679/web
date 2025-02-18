
package model;

 // @author xu4nvi3t
public class Product_sizes {
    private Products product_id;
    private Sizes size_id;
    private int stock_quantity;
    private int total_sold;
    private String created_at;

    public Product_sizes() {
    }

    public Product_sizes(Products product_id, Sizes size_id, int stock_quantity, int total_sold, String created_at) {
        this.product_id = product_id;
        this.size_id = size_id;
        this.stock_quantity = stock_quantity;
        this.total_sold = total_sold;
        this.created_at = created_at;
    }

    public Products getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Products product_id) {
        this.product_id = product_id;
    }

    public Sizes getSize_id() {
        return size_id;
    }

    public void setSize_id(Sizes size_id) {
        this.size_id = size_id;
    }

    public int getStock_quantity() {
        return stock_quantity;
    }

    public void setStock_quantity(int stock_quantity) {
        this.stock_quantity = stock_quantity;
    }

    public int getTotal_sold() {
        return total_sold;
    }

    public void setTotal_sold(int total_sold) {
        this.total_sold = total_sold;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }
    
    
}
