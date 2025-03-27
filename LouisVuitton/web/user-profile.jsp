<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="model.Users" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>Louis Vuitton</title>
        <meta name="keywords"
              content="apparel, catalog, clean, ecommerce, ecommerce HTML, electronics, fashion, html eCommerce, html store, minimal, multipurpose, multipurpose ecommerce, online store, responsive ecommerce template, shops" />
        <meta name="description" content="Best ecommerce html template for single and multi vendor store.">
        <meta name="author" content="ashishmaraviya">

        <!-- site Favicon -->
        <link rel="icon" href="assets/images/favicon/favicon.png" sizes="32x32" />
        <link rel="apple-touch-icon" href="assets/images/favicon/favicon.png" />
        <meta name="msapplication-TileImage" content="assets/images/favicon/favicon.png" />

        <!-- css Icon Font -->
        <link rel="stylesheet" href="assets/css/vendor/ecicons.min.css" />

        <!-- css All Plugins Files -->
        <link rel="stylesheet" href="assets/css/plugins/animate.css" />
        <link rel="stylesheet" href="assets/css/plugins/swiper-bundle.min.css" />
        <link rel="stylesheet" href="assets/css/plugins/jquery-ui.min.css" />
        <link rel="stylesheet" href="assets/css/plugins/countdownTimer.css" />
        <link rel="stylesheet" href="assets/css/plugins/slick.min.css" />
        <link rel="stylesheet" href="assets/css/plugins/bootstrap.css" />

        <!-- Main Style -->
        <link rel="stylesheet" href="assets/css/style.css" />
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <!-- Background css -->
        <link rel="stylesheet" id="bg-switcher-css" href="assets/css/backgrounds/bg-4.css">
    </head>
    <body class="shop_page">
        <div id="ec-overlay">
            <div class="ec-ellipsis">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>

        <!-- Header start  -->
        <header class="ec-header">
            <!--Ec Header Top Start -->
            <div class="header-top">
                <div class="container">
                    <div class="row align-items-center">
                        <!-- Header Top social Start -->
                        <div
                            class="col text-left header-top-left d-none d-lg-block">
                            <div class="header-top-social">
                                <span class="social-text text-upper">Follow us
                                    on:</span>

                            </div>
                        </div>
                        <!-- Header Top social End -->

                        <!-- Header Top responsive Action -->
                        <div class="col d-lg-none ">
                            <div class="ec-header-bottons">
                                <!-- Header User Start -->
                                <div class="ec-header-user dropdown">
                                    <button class="dropdown-toggle" data-bs-toggle="dropdown">
                                        <c:choose>
                                            <c:when test="${not empty user}">
                                                <c:set var="avatar" value="${empty user.avatar ? pageContext.request.contextPath.concat('/assets/images/default-avatar.png') : user.avatar}" />
                                                <span class="ec-pro-title" style="margin-right: 10px;">
                                                    ${user.name}
                                                </span>
                                                <img src="${avatar}" alt="User Avatar" class="user-avatar" 
                                                     style="width: 35px; height: 35px; border-radius: 50%;">
                                            </c:when>
                                            <c:otherwise>
                                                <i class="fi-rr-user"></i>
                                            </c:otherwise>
                                        </c:choose>
                                    </button>

                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <c:choose>
                                            <c:when test="${empty user}">
                                                <li><a class="dropdown-item" href="register">Register</a></li>
                                                <li><a class="dropdown-item" href="login">Login</a></li>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:choose>
                                                        <c:when test="${user.role == 1}">
                                                        <li><a class="dropdown-item" href="profile">Edit Profile</a></li>
                                                        <li><a class="dropdown-item" href="order-history">Order History</a></li>
                                                        </c:when>
                                                        <c:when test="${user.role == 0}">
                                                        <li><a class="dropdown-item" href="admin/dashboard">ADMIN</a></li>
                                                        </c:when>
                                                    </c:choose>
                                                <li><a class="dropdown-item" href="logout">Log out</a></li>
                                                </c:otherwise>
                                            </c:choose>
                                    </ul>
                                </div>
                                <!-- Header User End -->

                                <!-- Header Cart Start -->
                                <a href="wishlist"
                                   class="ec-header-btn ec-header-wishlist">
                                    <div class="header-icon"><i
                                            class="fi-rr-heart"></i></div>
                                    <span
                                        class="ec-header-count wishlist-count-label">${requestScope.numWishListItem}</span>
                                </a>
                                <!-- Header Cart End -->

                                <!-- Header Cart Start -->
                                <a href="cart"
                                   class="ec-header-btn ec-side-toggle">
                                    <div class="header-icon"><i class="fi-rr-shopping-bag"></i></div>
                                    <span class="ec-header-count cart-count-lable">${requestScope.numCartItem}</span>
                                </a>
                                <!-- Header menu Start -->
                                <a href="#ec-mobile-menu"
                                   class="ec-header-btn ec-side-toggle d-lg-none">
                                    <i class="fi fi-rr-menu-burger"></i>
                                </a>
                                <!-- Header menu End -->
                            </div>
                        </div>
                        <!-- Header Top responsive Action -->
                    </div>
                </div>
            </div>
            <!-- Ec Header Top  End -->
            <!-- Ec Header Bottom  Start -->
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
                                         Users user = null;
                                         if (session != null) {
                                             user = (Users) session.getAttribute("user");
                                         }
                                    %>

                                    <div class="ec-header-user dropdown">
                                        <button class="dropdown-toggle" data-bs-toggle="dropdown">
                                            <% if (user != null) { 
                                                String avatar = (user.getAvatar() != null && !user.getAvatar().isEmpty()) 
                                                                ? user.getAvatar() 
                                                                : request.getContextPath() + "/assets/images/default-avatar.png"; 
                                            %>
                                            <span class="ec-pro-title" style="margin-right: 10px;">
                                                <%= user.getName() %>
                                            </span>
                                            <img src="<%= avatar %>" 
                                                 alt="User Avatar" class="user-avatar" 
                                                 style="width: 35px; height: 35px; border-radius: 50%;">
                                            <% } else { %>
                                            <i class="fi-rr-user"></i>
                                            <% } %>
                                        </button>

                                        <ul class="dropdown-menu dropdown-menu-right">
                                            <% if (user == null) { %>
                                            <!-- chưa đăng nhập -->
                                            <li><a class="dropdown-item" href="register">Register</a></li>
                                            <li><a class="dropdown-item" href="login">Login</a></li>
                                                <% } else { %>
                                            <!-- đã đăng nhập -->
                                            <% if (user.getRole() == 1) { %>
                                            <!-- User -->
                                            <li><a class="dropdown-item" href="profile">Edit Profile</a></li>
                                            <li><a class="dropdown-item" href="order-history">Order History</a></li>

                                            <% } else if (user.getRole() == 0) { %>
                                            <!-- Admin -->
                                            <li><a class="dropdown-item" href="admin/dashboard">ADMIN</a></li>
                                                <% } %>
                                            <li><a class="dropdown-item" href="logout">Log out</a></li>
                                                <% } %>
                                        </ul>
                                    </div>                                    <!-- Header User End -->
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
            <!-- Ec Header Button End -->
            <!-- Header responsive Bottom  Start -->
            <div class="ec-header-bottom d-lg-none">
                <div class="container position-relative">
                    <div class="row ">
                        <!-- Ec Header Logo Start -->
                        <div class="col">
                            <div class="header-logo">
                                <a href="index.jsp"><img
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
                        <div class="col">
                            <div class="header-search">
                                <form class="ec-btn-group-form" action="#">
                                    <input class="form-control ec-search-bar"
                                           placeholder="Search products..."
                                           type="text">
                                    <button class="submit" type="submit"><i
                                            class="fi-rr-search"></i></button>
                                </form>
                            </div>
                        </div>
                        <!-- Ec Header Search End -->
                    </div>
                </div>
            </div>
            <!-- Header responsive Bottom  End -->
            <!-- EC Main Menu Start -->
            <div id="ec-main-menu-desk" class="d-none d-lg-block sticky-nav">
                <div class="container position-relative">
                    <div class="row">
                        <div class="col-md-12 align-self-center">
                            <div class="ec-main-menu">
                                <a href="javascript:void(0)"
                                   class="ec-header-btn ec-sidebar-toggle">
                                    <i class="fi fi-rr-apps"></i>
                                </a>
                                <ul>
                                    <li><a href="home">Home</a></li>
                                    <li><a href="shop">Shop</a></li>                                  
                                    <li><a href="about-us">About Us</a></li>
                                    <li><a href="contact-us">Contact Us</a></li>
                                    <li class="dropdown scroll-to"><a
                                            href="javascript:void(0)"><i
                                                class="fi fi-rr-sort-amount-down-alt"></i></a>
                                        <ul class="sub-menu">
                                            <li class="menu_title">Scroll To
                                                Section</li>
                                            <li><a href="javascript:void(0)"
                                                   data-scroll="collection"
                                                   class="nav-scroll">Top
                                                    Collection</a></li>
                                            <li><a
                                                    href="shop-left-sidebar-col-3.jsp"
                                                    data-scroll="categories"
                                                    class="nav-scroll">Categories</a></li>
                                            <li><a href="javascript:void(0)"
                                                   data-scroll="services"
                                                   class="nav-scroll">Services</a></li>
                                            <li><a href="javascript:void(0)"
                                                   data-scroll="arrivals"
                                                   class="nav-scroll">New
                                                    Arrivals</a></li>
                                            <li><a href="javascript:void(0)"
                                                   data-scroll="reviews"
                                                   class="nav-scroll">Client
                                                    Review</a></li>
                                            <li><a href="javascript:void(0)"
                                                   data-scroll="insta"
                                                   class="nav-scroll">Fashion
                                                    style</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Ec Main Menu End -->
            <!-- ekka Mobile Menu Start -->
            <div id="ec-mobile-menu" class="ec-side-cart ec-mobile-menu">
                <div class="ec-menu-title">
                    <span class="menu_title">My Menu</span>
                    <button class="ec-close">x</button>
                </div>
                <div class="ec-menu-inner">
                    <div class="ec-menu-content">
                        <ul>
                            <li><a href="home">Home</a></li>
                            <li><a href="shop">Shop</a></li>
                            <li><a href="about-us">About Us</a></li>
                            <li><a href="contact-us">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="header-res-lan-curr">
                        <!-- Social Start -->
                        <!-- Social End -->
                    </div>
                </div>
            </div>
            <!-- ekka mobile Menu End -->
        </header>
        <!-- Header End  -->

        <!-- Ec breadcrumb start -->
        <div class="sticky-header-next-sec  ec-breadcrumb section-space-mb">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="row ec_breadcrumb_inner">
                            <div class="col-md-6 col-sm-12">
                                <h2 class="ec-breadcrumb-title">User Profile</h2>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <!-- ec-breadcrumb-list start -->
                                <ul class="ec-breadcrumb-list">
                                    <li class="ec-breadcrumb-item"><a href="home">Home</a></li>
                                    <li class="ec-breadcrumb-item active">Profile</li>
                                </ul>
                                <!-- ec-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Ec breadcrumb end -->

        <!-- User profile section -->
        <section class="ec-page-content ec-vendor-uploads ec-user-account section-space-p">
            <div class="container">
                <div class="row">
                    <!-- Sidebar Area Start -->
                    <div class="ec-shop-leftside ec-vendor-sidebar col-lg-3 col-md-12">
                        <div class="ec-sidebar-wrap ec-border-box">
                            <!-- Sidebar Category Block -->
                            <div class="ec-sidebar-block">
                                <div class="ec-vendor-block">
                                    <div class="ec-vendor-block-bg"></div>
                                    <div class="ec-vendor-block-detail">
                                        <img class="v-img" src="<%= user.getAvatar() != null ? user.getAvatar() : "assets/images/user/default.jpg" %>" alt="user image">
                                        <h5><%= user.getName() %></h5>
                                    </div> 
                                    <div class="ec-vendor-block-items">
                                        <ul>
                                            <li><a href="order-history">Order History</a></li>
                                            <li><a href="wishlist">Wishlist</a></li>
                                            <li><a href="cart">Cart</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ec-shop-rightside col-lg-9 col-md-12">
                        <div class="ec-vendor-dashboard-card ec-vendor-setting-card">
                            <div class="ec-vendor-card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="ec-vendor-block-profile">
                                            <div class="ec-vendor-block-img space-bottom-30">
                                                <div class="ec-vendor-block-bg">
                                                    <a href="#" class="btn btn-lg btn-primary"
                                                       data-link-action="editmodal" title="Edit Detail"
                                                       data-bs-toggle="modal" data-bs-target="#edit_modal">Edit Detail</a>
                                                </div>

                                                <div class="ec-vendor-block-detail">
                                                    <img class="v-img" src="<%= user.getAvatar() != null ? user.getAvatar() : "assets/images/user/default.jpg" %>" alt="user image">
                                                    <h5 class="name"><%= user.getName() %></h5>
                                                </div>
                                                <p>Hello <span><%= user.getName() %>!</span></p>
                                                <p>From your account you can easily view and track orders. You can manage and change your account information like address, contact information and history of orders.</p>
                                            </div>
                                            <h5>Account Information</h5>

                                            <div class="row">
                                                <div class="col-md-6 col-sm-12">
                                                    <div class="ec-vendor-detail-block ec-vendor-block-email space-bottom-30">
                                                        <h6>E-mail</h6>
                                                        <ul>
                                                            <li><strong>Email : </strong><%= user.getEmail() %></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-12">
                                                    <div class="ec-vendor-detail-block ec-vendor-block-contact space-bottom-30">
                                                        <h6>Contact Number</h6>
                                                        <ul>
                                                            <li><strong>Phone Number : </strong><%= user.getPhone() != null ? user.getPhone() : "N/A" %></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-12">
                                                    <div class="ec-vendor-detail-block ec-vendor-block-address space-bottom-30">
                                                        <h6>Address</h6>
                                                        <ul>
                                                            <li><strong>Address : </strong><%= user.getAddress() != null ? user.getAddress() : "N/A" %></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-12">
                                                    <div class="ec-vendor-detail-block ec-vendor-block-address">
                                                        <h6>Gender</h6>
                                                        <ul>
                                                            <li><strong>Gender : </strong><%= user.getGender() != null ? user.getGender() : "N/A" %></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End User profile section -->

        <!-- Footer Start -->
        <jsp:include page="footer.jsp"></jsp:include>
            <!-- Footer Area End -->

            <!-- Modal -->
            <div class="modal fade" id="edit_modal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="row">
                                <div class="ec-vendor-block-img space-bottom-30">
                                    <div class="ec-vendor-block-bg cover-upload">
                                        <div class="thumb-upload">
                                            <div class="thumb-preview ec-preview">
                                                <div class="image-thumb-preview">
                                                    <img class="image-thumb-preview" src="assets/images/banner/8.jpg" alt="edit" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="ec-vendor-upload-detail">
                                        <form class="row g-3" id="editForm" action="profile" method="POST" enctype="multipart/form-data">
                                            <div class="ec-vendor-block-detail">
                                                <div class="thumb-upload">
                                                    <div class="thumb-edit">
                                                        <input type='file' id="thumbUpload02" class="ec-image-upload" name="avatar" accept=".png, .jpg, .jpeg" />
                                                        <label><i class="fi-rr-edit"></i></label>
                                                    </div>
                                                    <div class="thumb-preview ec-preview">
                                                        <div class="image-thumb-preview">
                                                            <img class="image-thumb-preview ec-image-preview v-img" 
                                                                 src="<%= user != null && user.getAvatar() != null && !user.getAvatar().isEmpty() ? user.getAvatar() : "assets/images/user/default.jpg" %>" alt="edit" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 space-t-15">
                                            <label class="form-label">First name</label>
                                            <input type="text" class="form-control" name="firstName" value="<%= user != null ? user.getName().split(" ")[0] : "" %>">
                                        </div>
                                        <div class="col-md-6 space-t-15">
                                            <label class="form-label">Last name</label>
                                            <input type="text" class="form-control" name="lastName" value="<%= user != null ? user.getName().substring(user.getName().indexOf(" ") + 1) : "" %>">
                                        </div>
                                        <div class="col-md-12 space-t-15">
                                            <label class="form-label">Address</label>
                                            <input type="text" class="form-control" name="address" value="<%= user != null ? user.getAddress() : "" %>">
                                        </div>
                                        <div class="col-md-12 space-t-15">
                                            <label class="form-label">Email</label>
                                            <input type="text" class="form-control" name="email" value="<%= user != null ? user.getEmail() : "" %>">
                                        </div>
                                        <div class="col-md-12 space-t-15">
                                            <label class="form-label">Phone number</label>
                                            <input type="text" class="form-control" name="phone" value="<%= user != null ? user.getPhone() : "" %>">
                                        </div>
                                        <div class="col-md-12 space-t-15">
                                            <label class="form-label">Gender</label>
                                            <select class="form-control" name="gender">
                                                <option value="Male" <%= (user != null && "Male".equals(user.getGender())) ? "selected" : "" %>>Male</option>
                                                <option value="Female" <%= (user != null && "Female".equals(user.getGender())) ? "selected" : "" %>>Female</option>
                                                <option value="Other" <%= (user != null && "Other".equals(user.getGender())) ? "selected" : "" %>>Other</option>
                                            </select>
                                        </div>
                                        <!-- Input ẩn để lưu đường dẫn ảnh -->
                                        <input type="hidden" id="avatarInput" name="avatar">
                                        <div class="col-md-12 space-t-15">
                                            <button type="submit" class="btn btn-primary">Update</button>
                                            <a href="#" class="btn btn-lg btn-secondary qty_close" data-bs-dismiss="modal" aria-label="Close">Close</a>
                                        </div>
                                    </form>
                                    <script>
                                        document.addEventListener("DOMContentLoaded", function () {
                                            console.log("Script loaded");

                                            let fileInput = document.getElementById("thumbUpload02");
                                            let avatarInput = document.getElementById("avatarInput");

                                            if (fileInput && avatarInput) {
                                                fileInput.addEventListener("change", function () {
                                                    let file = fileInput.files[0];
                                                    if (file) {
                                                        let reader = new FileReader();
                                                        reader.onload = function (e) {
                                                            document.querySelector(".v-img").src = e.target.result; // Hiển thị ảnh mới
                                                            avatarInput.value = e.target.result; // Gán dữ liệu ảnh vào input ẩn
                                                            console.log("Avatar updated:", e.target.result);
                                                        };
                                                        reader.readAsDataURL(file);
                                                    }
                                                });
                                            }
                                        });
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <% 
            String message = (String) request.getAttribute("mess"); 
            String error = (String) request.getAttribute("error"); 
        %>

        <!-- Load SweetAlert2 -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
                                        document.addEventListener("DOMContentLoaded", function () {
                                            console.log("Script loaded"); // Debugging: Ensure script runs

            <% if (message != null && !message.isEmpty()) { %>
                                            console.log("Success message: <%= message %>"); // Debugging
                                            Swal.fire({
                                                title: "Profile Updated!",
                                                text: "<%= message %>",
                                                icon: "success",
                                                confirmButtonText: "OK"
                                            });
            <% } else if (error != null && !error.isEmpty()) { %>
                                            console.log("Error message: <%= error %>"); // Debugging
                                            Swal.fire({
                                                title: "Update Failed!",
                                                text: "<%= error %>",
                                                icon: "error",
                                                confirmButtonText: "Try Again"
                                            });
            <% } %>
                                        });
        </script>

        <style>
            #ec-side-cart {
                position: fixed;
                right: 0;
                top: 0;
                width: 300px;
                height: 100vh;
                background: white;
                box-shadow: -2px 0 5px rgba(0, 0, 0, 0.2);
                transition: transform 0.3s ease-in-out;
                transform: translateX(100%); /* Ẩn panel */
                z-index: 9999 !important; /* Đảm bảo hiển thị trên tất cả */
                visibility: visible; /* Đảm bảo không bị ẩn */
                opacity: 1; /* Đảm bảo không bị trong suốt */
            }
            #ec-side-cart.show {
                transform: translateX(0); /* Hiển thị panel */
            }

        </style>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                loadNotifications();
            });

            // Hiển thị thông báo
            function toggleNotificationPanel() {
                let panel = document.getElementById("ec-side-cart");

                // Kiểm tra trạng thái hiện tại của panel
                if (panel.classList.contains("show")) {
                    panel.classList.remove("show"); // Ẩn panel
                } else {
                    panel.classList.add("show"); // Hiển thị panel
                    loadNotifications(); // Chỉ tải thông báo khi mở panel
                }
            }


            // Lấy thông báo từ API
            function loadNotifications() {
                fetch('/louisvuitton/notification')
                        .then(response => response.json())
                        .then(data => {
                            const notificationList = document.getElementById("notification-items");
                            const notificationCount = document.getElementById("notification-count");

                            notificationList.innerHTML = ""; // Xóa danh sách cũ

                            // Cập nhật số lượng thông báo
                            const count = data.notifications.length;
                            notificationCount.textContent = count;

                            if (count > 0) {
                                notificationCount.style.display = "inline-block"; // Hiện số thông báo
                            } else {
                                notificationCount.style.display = "none"; // Ẩn nếu không có thông báo
                            }

                            data.notifications.forEach(notification => {
                                const li = document.createElement("li");
                                li.style.padding = "10px 0"; // Khoảng cách giữa các thông báo

                                const div = document.createElement("div");
                                div.className = "notification-item";
                                div.style.display = "flex";
                                div.style.alignItems = "center";
                                div.style.gap = "10px"; // Khoảng cách giữa thời gian và nội dung

                                const timeSpan = document.createElement("span");
                                timeSpan.className = "notification-time";
                                timeSpan.style.fontWeight = "bold";
                                timeSpan.style.color = "#555";
                                timeSpan.textContent = new Date(notification.createdAt).toLocaleString();

                                const messageP = document.createElement("p");
                                messageP.textContent = notification.message;
                                messageP.style.margin = "0";

                                div.appendChild(timeSpan);
                                div.appendChild(messageP);
                                li.appendChild(div);
                                notificationList.appendChild(li);
                            });

                            console.log(`✅ Đã cập nhật danh sách thông báo (${count} thông báo)`, notificationList.innerHTML);
                        })
                        .catch(error => console.error("❌ Lỗi tải thông báo:", error));
            }



            // Cập nhật số lượng thông báo
            function updateNotificationCount(count) {
                let notificationCount = document.getElementById("notification-count");
                if (notificationCount) {
                    notificationCount.textContent = count;
                }
            }

            function closeNotificationPanel() {
                let panel = document.getElementById("ec-side-cart");
                panel.classList.remove("show");
            }

            // Đánh dấu tất cả là đã đọc
            function markAllAsRead() {
                fetch('/louisvuitton/notification', {method: 'POST'})
                        .then(() => {
                            document.getElementById("notification-items").innerHTML =
                                    '<li><div class="notification-item"><p>No notifications</p></div></li>';
                            updateNotificationCount(0);
                        })
                        .catch(error => console.error("Lỗi:", error));
            }
        </script>


        <!-- Modal end -->

        <script defer src="https://app.fastbots.ai/embed.js" data-bot-id="cm7vkewxc03kpn8lwqnmkoz6d"></script>

        <!-- Vendor JS -->
        <script src="assets/js/vendor/jquery-3.5.1.min.js"></script>
        <script src="assets/js/vendor/popper.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>
        <script src="assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>
        <script src="assets/js/vendor/modernizr-3.11.2.min.js"></script>

        <!--Plugins JS-->
        <script src="assets/js/plugins/swiper-bundle.min.js"></script>
        <script src="assets/js/plugins/countdownTimer.min.js"></script>
        <script src="assets/js/plugins/scrollup.js"></script>
        <script src="assets/js/plugins/jquery.zoom.min.js"></script>
        <script src="assets/js/plugins/slick.min.js"></script>
        <script src="assets/js/plugins/infiniteslidev2.js"></script>
        <script src="assets/js/vendor/jquery.magnific-popup.min.js"></script>
        <script src="assets/js/plugins/jquery.sticky-sidebar.js"></script>
        <script src="assets/js/plugins/nouislider.js"></script>

        <!-- Main Js -->
        <script src="assets/js/vendor/index.js"></script>
        <script src="assets/js/main.js"></script>
        <script>
                document.querySelector('.ec-side-toggle').addEventListener('click', function (event) {
                    event.stopPropagation();
                    window.location.href = this.href;
                });
                document.querySelector(".wishlist-btn").addEventListener("click", function () {
                    console.log("Wishlist button clicked!");
                });

        </script>
    </body>
</html>
