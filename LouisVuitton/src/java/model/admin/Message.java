package model.admin;

// @author xu4nvi3t
import java.util.Date;
import java.util.List;

public class Message {

    private int id;
    private String senderName;
    private String senderImage;
    private String message;
    private Date time;
    private String status; // online, offline, busy
    private List<String> files;

    public Message(int id, String senderName, String senderImage, String message, Date time, String status, List<String> files) {
        this.id = id;
        this.senderName = senderName;
        this.senderImage = senderImage;
        this.message = message;
        this.time = time;
        this.status = status;
        this.files = files;
    }

    public int getId() {
        return id;
    }

    public String getSenderName() {
        return senderName;
    }

    public String getSenderImage() {
        return senderImage;
    }

    public String getMessage() {
        return message;
    }

    public Date getTime() {
        return time;
    }

    public String getStatus() {
        return status;
    }

    public List<String> getFiles() {
        return files;
    }
}
