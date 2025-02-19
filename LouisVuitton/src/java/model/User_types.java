
package model;

 // @author xu4nvi3t
public class User_types {
    private Users user_id;
    private User_type user_type_id;

    public User_types() {
    }

    public User_types(Users user_id, User_type user_type_id) {
        this.user_id = user_id;
        this.user_type_id = user_type_id;
    }

    public Users getUser_id() {
        return user_id;
    }

    public void setUser_id(Users user_id) {
        this.user_id = user_id;
    }

    public User_type getUser_type_id() {
        return user_type_id;
    }

    public void setUser_type_id(User_type user_type_id) {
        this.user_type_id = user_type_id;
    }
    
    
}
