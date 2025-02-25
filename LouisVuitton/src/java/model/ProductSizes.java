
package model;

 // @author xu4nvi3t
public class ProductSizes {
    private Products productId;
    private Sizes sizeId;
    private int stockQuantity;
    private int totalSold;
    private String createdAt;

    public ProductSizes() {
    }

    public Products getProductId() {
        return productId;
    }

    public void setProductId(Products productId) {
        this.productId = productId;
    }

    public Sizes getSizeId() {
        return sizeId;
    }

    public void setSizeId(Sizes sizeId) {
        this.sizeId = sizeId;
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

    public ProductSizes(Products productId, Sizes sizeId, int stockQuantity, int totalSold, String createdAt) {
        this.productId = productId;
        this.sizeId = sizeId;
        this.stockQuantity = stockQuantity;
        this.totalSold = totalSold;
        this.createdAt = createdAt;
    }

}
