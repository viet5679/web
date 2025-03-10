
package model;

 // @author xu4nvi3t
public class ProductImages {
    private int productId;
    private String path;
    private String createdAt;
    private String updatedAt;

    public ProductImages() {
    }

    public ProductImages(int productId, String path, String createdAt, String updatedAt) {
        this.productId = productId;
        this.path = path;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
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
