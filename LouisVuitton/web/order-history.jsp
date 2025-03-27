<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="model.Users" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/user-history.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:32:38 GMT -->
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
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet">

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
                                <span class="social-text text-upper">Follow us on:</span>
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
                                    <form class="ec-btn-group-form" action="shop" method="get">
                                        <input class="form-control ec-search-bar" name="search" placeholder="Search products..."
                                               type="text">
                                        <button class="submit" type="submit"><i class="fi-rr-search"></i></button>
                                    </form>
                                </div>
                            </div>
                            <!-- Ec Header Search End -->

                            <!-- Ec Header Button Start -->
                            <div class="align-self-center">
                                <div class="ec-header-bottons">

                                    <!-- Header User Start -->
                                    <c:set var="user" value="${sessionScope.user}" />

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
                                    <!-- Header wishlist Start -->
                                    <!-- Header Wishlist -->
                                    <a href="wishlist" class="ec-header-btn">
                                        <div class="header-icon"><i class="fi-rr-heart"></i></div>
                                        <span id="wishlist-count" class="ec-header-count">${requestScope.numWishListItem}</span>
                                    </a>

                                    <!-- Header Cart -->
                                    <a href="cart" class="ec-header-btn">
                                        <div class="header-icon"><i class="fi-rr-shopping-bag"></i></div>
                                        <span id="cart-count" class="ec-header-count">${requestScope.numCartItem}</span>
                                    </a>

                                    <!-- Header Cart End -->
                                    <!-- Header Notification Start -->
                                    <a href="javascript:void(0);" class="ec-header-btn" onclick="toggleNotificationPanel()"> 
                                        <div class="header-icon">
                                            <i class="material-symbols-outlined">notifications</i> 
                                        </div>
                                        <span class="ec-header-count" id="notification-count">0</span>
                                    </a>

                                    <div id="ec-side-cart" class="ec-side-cart">
                                        <div class="ec-cart-inner">
                                            <div class="ec-cart-top">
                                                <div class="ec-cart-title">
                                                    <span class="cart_title">Notifications</span>
                                                    <button class="ec-close" onclick="closeNotificationPanel()">&times;</button>
                                                </div>
                                                <ul id="notification-items" class="notification-list"></ul>
                                            </div>
                                            <div class="ec-cart-bottom">
                                                <div class="cart_btn">
                                                    <button class="btn btn-secondary" onclick="markAllAsRead()">Mark as read</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Header Notification End -->
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
                                <a href="home"><img src="assets/images/logo/logo4.png" alt="Site Logo" />
                                    <img class="dark-logo" src="assets/images/logo/logo4.png" alt="Site Logo" style="display: none;" /></a>
                            </div>
                        </div>
                        <!-- Ec Header Logo End -->
                        <!-- Ec Header Search Start -->
                        <div class="align-self-center">
                            <div class="header-search">
                                <form class="ec-btn-group-form" action="shop" method="get">
                                    <input class="form-control ec-search-bar" name="search" placeholder="Search products..."
                                           type="text">
                                    <button class="submit" type="submit"><i class="fi-rr-search"></i></button>
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
                                    <li class="dropdown scroll-to"><a href="javascript:void(0)"><i class="fi fi-rr-sort-amount-down-alt"></i></a>
                                        <ul class="sub-menu">
                                            <li class="menu_title">Scroll To Section</li>
                                            <li><a href="javascript:void(0)" data-scroll="collection" class="nav-scroll">Top Collection</a></li>
                                            <li><a href="shop-left-sidebar-col-3.jsp" data-scroll="categories" class="nav-scroll">Categories</a></li>
                                            <li><a href="javascript:void(0)" data-scroll="services" class="nav-scroll">Services</a></li>
                                            <li><a href="javascript:void(0)" data-scroll="arrivals" class="nav-scroll">New Arrivals</a></li>
                                            <li><a href="javascript:void(0)" data-scroll="reviews" class="nav-scroll">Client Review</a></li>
                                            <li><a href="javascript:void(0)" data-scroll="insta" class="nav-scroll">Fashion style</a></li>
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
                                <h2 class="ec-breadcrumb-title">Order History</h2>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <!-- ec-breadcrumb-list start -->
                                <ul class="ec-breadcrumb-list">
                                    <li class="ec-breadcrumb-item"><a href="home">Home</a></li>
                                    <li class="ec-breadcrumb-item active">Order History</li>
                                </ul>
                                <!-- ec-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Ec breadcrumb end -->

        <!-- User history section -->
        <section class="ec-page-content ec-vendor-uploads ec-user-account section-space-p">
            <div class="container">
                <div class="row">
                    <!-- Sidebar Area Start -->
                    <div class="ec-shop-rightside col-lg-12 col-md-12">
                        <div class="ec-vendor-dashboard-card">
                            <div class="ec-vendor-card-header">
                                <h5>Order History</h5>
                                <div class="ec-header-btn">
                                    <a class="btn btn-lg btn-primary" href="shop">Shop Now</a>
                                </div>
                            </div>
                            <div class="ec-vendor-card-body">
                                <div class="ec-vendor-card-table">
                                    <table class="table ec-table">
                                        <thead>
                                            <tr>
                                                <th scope="col">ID</th>
                                                <th scope="col">Date</th>
                                                <th scope="col">Total Products</th>
                                                <th scope="col">Total Price</th>
                                                <th scope="col">Status</th>
                                                <th scope="col">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listOrder}" var="o">
                                                <tr>
                                                    <th scope="row"><span>${o.id}</span></th>
                                                    <td><span>${o.createdAt}</span></td>
                                                    <td><span>${o.totalProduct}</span></td>
                                                    <td><span>$<fmt:formatNumber value="${o.totalPrice}" type="number" minFractionDigits="2" maxFractionDigits="2"/></span></td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${o.status eq 'Pending'}">
                                                                <span style="color: blue;">${o.status}</span>
                                                            </c:when>
                                                            <c:when test="${o.status eq 'Canceled'}">
                                                                <span style="color: red;">${o.status}</span>
                                                            </c:when>
                                                            <c:when test="${o.status eq 'Delivered'}">
                                                                <span style="color: green;">${o.status}</span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span style="color: black;">${o.status}</span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td><span class="tbl-btn"><a class="btn btn-lg btn-primary" href="order-details?id=${o.id}">View</a></span></td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End User history section -->

        <!-- Footer Start -->
        <jsp:include page="footer.jsp"></jsp:include>
            <!-- Footer Area End -->

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