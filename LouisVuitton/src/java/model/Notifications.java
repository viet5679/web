
package model;

 // @author xu4nvi3t
public class Notifications {
    private int id;
    private int orderId;
    private String message;
    private int read;
    private String createdAt;

    public Notifications() {
    }

    public Notifications(int id, int orderId, String message, int read, String createdAt) {
        this.id = id;
        this.orderId = orderId;
        this.message = message;
        this.read = read;
        this.createdAt = createdAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getRead() {
        return read;
    }

    public void setRead(int read) {
        this.read = read;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
    
    
}
