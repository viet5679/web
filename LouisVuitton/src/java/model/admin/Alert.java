package model.admin;

// @author xu4nvi3t

import java.util.Date;


public class Alert {
    private int id;
    private String title;
    private String message;
    private Date time;
    private String type; // alert, warn, success

    public Alert(int id, String title, String message, Date time, String type) {
        this.id = id;
        this.title = title;
        this.message = message;
        this.time = time;
        this.type = type;
    }

    // Getters
    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getMessage() {
        return message;
    }

    public Date getTime() {
        return time;
    }

    public String getType() {
        return type;
    }
}
