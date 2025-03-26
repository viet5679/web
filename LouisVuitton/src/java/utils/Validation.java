
package utils;

 // @author xu4nvi3t
import java.util.regex.Pattern;


public class Validation {
    // Kiểm tra định dạng email
    public static boolean isValidEmail(String email) {
        String emailRegex = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$";
        return Pattern.matches(emailRegex, email);
    }

    // Kiểm tra số điện thoại
    public static boolean isValidPhone(String phone) {
        String phoneRegex = "^[0-9]{10,11}$";
        return Pattern.matches(phoneRegex, phone);
    }

}
