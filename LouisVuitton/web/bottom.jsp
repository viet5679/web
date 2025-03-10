<%@ page import="model.Users" %>
<div class="ec-header-bottom d-none d-lg-block">
    <div class="container position-relative">
        <div class="row">
            <div class="ec-flex">
                <!-- Ec Header Logo Start -->
                <div class="align-self-center">
                    <div class="header-logo">
                        <a href="home"><img
                                src="assets/images/logo/logo4.png"
                                alt="Site Logo" /><img
                                class="dark-logo"
                                src="assets/images/logo/logo4.png"
                                alt="Site Logo"
                                style="display: none;" /></a>
                    </div>
                </div>
                <!-- Ec Header Logo End -->

                <!-- Ec Header Search Start -->
                <div class="align-self-center">
                    <div class="header-search">
                        <form class="ec-btn-group-form" action="#">
                            <input
                                class="form-control ec-search-bar"
                                placeholder="Search products..."
                                type="text">
                            <button class="submit" type="submit"><i
                                    class="fi-rr-search"></i></button>
                        </form>
                    </div>
                </div>
                <!-- Ec Header Search End -->

                <!-- Ec Header Button Start -->
                <div class="align-self-center">
                    <div class="ec-header-bottons">

                        <!-- Header User Start -->
                        <% 
                            Users user = (Users) session.getAttribute("user");
                        %>
                        <div class="ec-header-user dropdown">
                            <button class="dropdown-toggle" data-bs-toggle="dropdown">
                                <% if (user != null) { %>
                                <span class="ec-pro-title" style="margin-right: 10px"><%= user.getName() %></span>
                                <% } %>
                                <i class="fi-rr-user"></i>
                            </button>

                            <ul class="dropdown-menu dropdown-menu-right">
                                <% if (user == null) { %>
                                <!-- ch?a ??ng nh?p -->
                                <li><a class="dropdown-item" href="register">Register</a></li>
                                <li><a class="dropdown-item" href="login">Login</a></li>
                                    <% } else { %>
                                <!-- ?ã ??ng nh?p -->
                                <% if (user.getRole() == 1) { %>
                                <!-- User -->
                                <li><a class="dropdown-item" href="profile">Edit Profile</a></li>
                                <li><a class="dropdown-item" href="checkout.jsp">Checkout</a></li>

                                <% } else if (user.getRole() == 0) { %>
                                <!-- Admin -->
                                <li><a class="dropdown-item" href="admin-dashboard.jsp">ADMIN</a></li>
                                    <% } %>
                                <li><a class="dropdown-item" href="index.jsp?logout=true">Log out</a></li>
                                    <% } %>
                                    <%
                                        if (request.getParameter("logout") != null) {
                                            session.invalidate(); // Xóa session
                                            response.sendRedirect("home"); // Chuy?n h??ng v? trang ch?
                                        }
                                    %>
                            </ul>
                        </div>
                        <!-- Header User End -->
                        <!-- Header wishlist Start -->
                        <a href="wishlist"
                           class="ec-header-btn ec-header-wishlist">
                            <div class="header-icon"><i
                                    class="fi-rr-heart"></i></div>
                            <span
                                class="ec-header-count wishlist-count-label">${requestScope.numWishListItem}</span>
                        </a>
                        <!-- Header wishlist End -->
                        <!-- Header Cart Start -->

                        <a href="cart"
                           class="ec-header-btn">
                            <div class="header-icon"><i
                                    class="fi-rr-shopping-bag"></i></div>
                            <span
                                class="ec-header-count cart-count-lable">${requestScope.numCartItem}</span>
                        </a>
                        <!-- Header Cart End -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>