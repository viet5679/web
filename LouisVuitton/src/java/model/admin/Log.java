package model.admin;

// @author xu4nvi3t
import java.util.Date;
import java.util.List;

public class Log {

    private int id;
    private String title;
    private String detail;
    private Date dateTime;
    private List<String> files;

    public Log(int id, String title, String detail, Date dateTime, List<String> files) {
        this.id = id;
        this.title = title;
        this.detail = detail;
        this.dateTime = dateTime;
        this.files = files;
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getDetail() {
        return detail;
    }

    public Date getDateTime() {
        return dateTime;
    }

    public List<String> getFiles() {
        return files;
    }
}
