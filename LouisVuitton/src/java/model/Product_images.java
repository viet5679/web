
package model;

 // @author xu4nvi3t
public class Product_images {
    private int product_id;
    private String name;
    private String path;
    private String created_at;
    private String updated_at;

    public Product_images() {
    }

    public Product_images(int product_id, String name, String path, String created_at, String updated_at) {
        this.product_id = product_id;
        this.name = name;
        this.path = path;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
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
