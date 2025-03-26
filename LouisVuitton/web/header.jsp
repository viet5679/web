<%-- 
    Document   : header
    Created on : Mar 13, 2025, 3:03:58 PM
    Author     : adim
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="model.Users" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <!-- Header start  -->
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet">
    </head>
    <body>
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
                                    <button class="dropdown-toggle"
                                            data-bs-toggle="dropdown"><i
                                            class="fi-rr-user"></i></button>
                                    <ul
                                        class="dropdown-menu dropdown-menu-right">
                                        <li><a class="dropdown-item"
                                               href="register">Register</a></li>
                                        <li><a class="dropdown-item"
                                               href="checkout">Checkout</a></li>
                                        <li><a class="dropdown-item"
                                               href="login">Login</a></li>
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
                                    <a href="wishlist"
                                       class="ec-header-btn ec-header-wishlist">
                                        <div class="header-icon"><i
                                                class="fi-rr-heart"></i></div>
                                        <span
                                            class="ec-header-count">${requestScope.numWishListItem}</span>
                                    </a>
                                    <!-- Header wishlist End -->
                                    <!-- Header Cart Start -->

                                    <a href="cart"
                                       class="ec-header-btn">
                                        <div class="header-icon"><i
                                                class="fi-rr-shopping-bag"></i></div>
                                        <span
                                            class="ec-header-count">${requestScope.numCartItem}</span>
                                    </a>

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
                                                    <button class="btn btn-secondary" onclick="markAllAsRead()">Mask as read</button>
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
                            <li><a href="checkout.jsp">Checkout</a></li>
                            <li><a href="blog-full-width.jsp">Blog</a></li>
                            <li><a href="offer.jsp">Hot Offers</a></li>
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

    </body>
</html>