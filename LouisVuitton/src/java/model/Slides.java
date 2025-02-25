
package model;

 // @author xu4nvi3t
public class Slides {
    private int id;
    private String imageUrl;
    private String title;
    private String subtitle1;
    private String subtitle2;
    private String buttonText;
    private int isActive; 
    private String createdAt;
    private String updatedAt;

    public Slides() {
    }

    public Slides(int id, String imageUrl, String title, String subtitle1, String subtitle2, String buttonText, int isActive, String createdAt, String updatedAt) {
        this.id = id;
        this.imageUrl = imageUrl;
        this.title = title;
        this.subtitle1 = subtitle1;
        this.subtitle2 = subtitle2;
        this.buttonText = buttonText;
        this.isActive = isActive;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubtitle1() {
        return subtitle1;
    }

    public void setSubtitle1(String subtitle1) {
        this.subtitle1 = subtitle1;
    }

    public String getSubtitle2() {
        return subtitle2;
    }

    public void setSubtitle2(String subtitle2) {
        this.subtitle2 = subtitle2;
    }

    public String getButtonText() {
        return buttonText;
    }

    public void setButtonText(String buttonText) {
        this.buttonText = buttonText;
    }

    public int getIsActive() {
        return isActive;
    }

    public void setIsActive(int isActive) {
        this.isActive = isActive;
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
