package controller.shop;

// @author xu4nvi3t
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import model.Users;

@WebFilter({"/*"})
public class AuthFilter implements Filter {

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession(false);

        Users user = (session != null) ? (Users) session.getAttribute("user") : null;
        String uri = req.getRequestURI();
        String contextPath = req.getContextPath();

        // Chặn truy cập trực tiếp vào tất cả các trang JSP (ngoại trừ login & register)
//        if (uri.endsWith(".jsp") && 
//            !uri.endsWith("login") && 
//            !uri.endsWith("register")&& 
//            !uri.endsWith("index.jsp")) {
//            res.sendRedirect(contextPath + "/"); // Về trang chủ
//            return;
//        }
        // Chặn truy cập vào các trang yêu cầu đăng nhập
        if ((uri.contains("/checkout") || uri.contains("/order-history")) && user == null) {
            res.sendRedirect(contextPath + "/login");
            return;
        }

        // Tiếp tục request nếu hợp lệ
        chain.doFilter(request, response);
    }
}
