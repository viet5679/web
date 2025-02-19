
package model;

 // @author xu4nvi3t
public class Feedback {
    private int id;
    private int status;
    private Users user_id;
    private String name;
    private String email;
    private String created_at;

    public Feedback() {
    }

    public Feedback(int id, int status, Users user_id, String name, String email, String created_at) {
        this.id = id;
        this.status = status;
        this.user_id = user_id;
        this.name = name;
        this.email = email;
        this.created_at = created_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Users getUser_id() {
        return user_id;
    }

    public void setUser_id(Users user_id) {
        this.user_id = user_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }
    
}