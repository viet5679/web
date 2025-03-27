<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="model.Users" %>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/wishlist.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:32:11 GMT -->
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
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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

        <div class="sticky-header-next-sec ec-breadcrumb section-space-mb">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="row ec_breadcrumb_inner">
                            <div class="col-md-6 col-sm-12">
                                <h2 class="ec-breadcrumb-title">Wishlist</h2>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <!-- ec-breadcrumb-list start -->
                                <ul class="ec-breadcrumb-list">
                                    <li class="ec-breadcrumb-item"><a href="home">Home</a></li>
                                    <li class="ec-breadcrumb-item active">Wishlist (<span class="wishlist-count">${requestScope.numWishListItem}</span>)</li>
                                </ul>
                                <!-- ec-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Ec breadcrumb end -->

        <!-- Wishlist Items List Start -->
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <ul class="ec-wishlist-items">
                        <!-- Wishlist items will be dynamically added here using JavaScript -->
                    </ul>
                </div>
            </div>
        </div>
        <!-- Wishlist Items List End -->

        <script>
            function removeProduct(productId) {
                $.ajax({
                    type: "POST",
                    url: "wishlist",
                    data: {
                        productId: productId,
                        action: "delete"
                    },
                    success: function (response) { // ✅ Định nghĩa tham số response
                        console.log("Số lượng nhận từ server:", response);

                        if (response.status === "success" && response.isRemoved) {
                            // Xóa sản phẩm khỏi giao diện
                            $("#wishlist-item-" + productId).remove();

                            // Cập nhật số lượng wishlist đúng giá trị từ server
                            $("#wishlist-count").text(response.wishlistCount);
                        }
                    },
                    error: function () {
                        alert("Có lỗi xảy ra khi xóa sản phẩm!");
                    }
                });
            }


// Hàm cập nhật số lượng wishlist
            function updateWishlistCount() {
                // Đếm lại số lượng sản phẩm sau khi xóa
                let count = $(".pro-gl-content").length;
                console.log("Số lượng wishlist sau khi xóa:", count); // Debug

                // Cập nhật số lượng trên icon wishlist
                $("#wishlist-count").text(count);

                // Kiểm tra nếu danh sách trống, hiển thị thông báo
                if (count === 0) {
                    $(".row.margin-minus-b-30").html("<p>Không có sản phẩm trong wishlist</p>");
                }
            }

        </script>

        <!-- Ec Wishlist page -->
        <section class="ec-page-content section-space-p">
            <div class="container">
                <div class="row">
                    <!-- Wishlist Content Start -->
                    <div class="ec-wish-rightside col-lg-12 col-md-12">
                        <div class="ec-compare-content">
                            <div class="ec-compare-inner">
                                <div class="row margin-minus-b-30">
                                    <c:forEach items="${requestScope.wishlistProducts}" var="i">
                                        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-6 mb-6 pro-gl-content" 
                                             id="wishlist-item-${i.id}">
                                            <div class="ec-product-inner">
                                                <div class="ec-pro-image-outer">
                                                    <div class="ec-pro-image">
                                                        <a href="product-left-sidebar.jsp" class="image">
                                                            <img class="main-image" src="${i.avatar}" alt="Product" />
                                                            <img class="hover-image" src="${i.hoverAvatar}" alt="Product" />
                                                        </a>
                                                        <span class="ec-com-remove ec-remove-wish">
                                                            <a href="javascript:void(0)" onclick="removeProduct(${i.id})">x</a>
                                                        </span>
                                                        <c:choose>
                                                            <c:when test="${fn:contains(i.tag, '%')}">
                                                                <span class="percentage">${i.tag}</span>
                                                            </c:when>
                                                            <c:when test="${i.tag == 'SALE'}">
                                                                <span class="percentage">
                                                                    <span class="sale">${i.tag}</span>
                                                                </span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="percentage">
                                                                    <span class="new">${i.tag}</span>
                                                                </span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                        <div class="ec-pro-actions">
                                                            <button title="Add To Cart" class="add-to-cart" onclick="addToCart(${i.id}, 1)">
                                                                <i class="fi-rr-shopping-basket"></i> Add To Cart
                                                            </button>
                                                            <button title="Wishlist" class="ec-btn-group wishlist-btn" 
                                                                    data-product-id="${i.id}" 
                                                                    onclick="addToWishList(${i.id}, this)">
                                                                <i class="fi-rr-heart"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="ec-pro-content">
                                                    <h5 class="ec-pro-title">
                                                        <a href="product-left-sidebar.jsp">${i.name}</a>
                                                    </h5>
                                                    <div class="ec-pro-rating">
                                                        <div class="ec-pro-rating">
                                                            <c:forEach var="it" begin="1" end="5">
                                                                <c:choose>
                                                                    <c:when test="${it <= i.totalStars}">
                                                                        <i class="ecicon eci-star fill"></i>  <!-- Filled star -->
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <i class="ecicon eci-star"></i> <!-- Empty star -->
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                    <div class="ec-pro-list-desc">${i.description}</div>
                                                    <span class="ec-price">
                                                        <span class="old-price">$${i.price}</span>
                                                        <span class="new-price">$${i.totalPay}</span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script>
            // Cập nhật số lượng giỏ hàng ngay lập tức
            function updateCartCount(count) {
                document.getElementById("cart-count").textContent = count;
            }

// Cập nhật số lượng wishlist ngay lập tức
            function updateWishlistCount(count) {
                let $wishlistCount = $("#wishlist-count");

                if (count > 0) {
                    $wishlistCount.text(count).show(); // Luôn hiển thị số
                } else {
                    $wishlistCount.text("0").show(); // Không ẩn, đặt về 0
                }
            }


            function addToCart(productId, isProductDetails = false) {
                let quantity = 1; // Mặc định là 1

                if (isProductDetails) {
                    // Nếu ở trang Product Details, lấy số lượng từ input
                    let input = document.getElementById(`qty-${p.id}`);
                    if (input) {
                        quantity = parseInt(input.value) || 1;

                        // Kiểm tra số lượng hợp lệ
                        if (isNaN(quantity) || quantity < 1) {
                            alert("Vui lòng nhập số lượng hợp lệ!");
                            return;
                        }
                    }
                }

                $.ajax({
                    type: "POST",
                    url: "cart",
                    data: {
                        productId: productId,
                        quantity: quantity,
                        action: "addToCart"
                    },
                    success: function (response) {
                        Swal.fire({
                            position: "center",
                            icon: "success",
                            title: "Added to cart",
                            showConfirmButton: false,
                            timer: 700,
                            width: "400px",
                            padding: "5px"
                        });

                        // Cập nhật số lượng giỏ hàng mà không cần reload
                        updateCartCount(response.cartCount);
                    }
                });
            }
            function addToWishList(productId, element) {
                $.ajax({
                    type: "POST",
                    url: "wishlist",
                    data: {productId: productId},
                    dataType: "json",
                    success: function (response) {
                        console.log("Response từ server:", response);

                        if (response.status === "success") {
                            if (response.isWishlisted) {
                                $(element).addClass("active");
                            } else {
                                $(element).removeClass("active");
                            }

                            // Cập nhật số lượng wishlist
                            updateWishlistCount(response.wishlistCount);
                        }
                    },
                    error: function (xhr) {
                        console.error("Lỗi AJAX:", xhr.responseText);
                    }
                });
            }



            // Duyệt qua cookie Wishlist
            document.addEventListener("DOMContentLoaded", function () {
                let wishlist = getCookie("wishlist"); // Lấy giá trị từ cookie
                if (wishlist) {
                    let wishlistItems = wishlist.split("/"); // Chuyển chuỗi thành mảng ID
                    document.querySelectorAll(".wishlist-btn").forEach(function (btn) {
                        let productId = btn.getAttribute("data-product-id"); // Lấy ID từ nút
                        if (wishlistItems.includes(productId)) {
                            btn.classList.add("active"); // Thêm class "active"
                        }
                    });
                }
            });

            // Hàm lấy cookie theo tên
            function getCookie(name) {
                let cookies = document.cookie.split("; ");
                for (let i = 0; i < cookies.length; i++) {
                    let parts = cookies[i].split("=");
                    if (parts[0] === name) {
                        return parts[1];
                    }
                }
                return "";
            }
        </script>
        <!-- Wishlist Content End -->
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

        <!-- Footer Start -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- Footer Area End -->

        <!-- Modal -->
        <div class="modal fade" id="ec_quickview_modal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="btn-close qty_close" data-bs-dismiss="modal" aria-label="Close"></button>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-5 col-sm-12 col-xs-12">
                                <!-- Swiper -->
                                <div class="qty-product-cover">
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/3_1.jpg" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/3_2.jpg" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/3_3.jpg" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/3_4.jpg" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/3_5.jpg" alt="">
                                    </div>
                                </div>
                                <div class="qty-nav-thumb">
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/3_1.jpg" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/3_2.jpg" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/3_3.jpg" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/3_4.jpg" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/3_5.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7 col-sm-12 col-xs-12">
                                <div class="quickview-pro-content">
                                    <h5 class="ec-quick-title"><a href="product-left-sidebar.jsp">Handbag leather purse for
                                            women</a>
                                    </h5>
                                    <div class="ec-quickview-rating">
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star"></i>
                                    </div>

                                    <div class="ec-quickview-desc">Lorem Ipsum is simply dummy text of the printing and
                                        typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever
                                        since the 1500s,</div>
                                    <div class="ec-quickview-price">
                                        <span class="old-price">$100.00</span>
                                        <span class="new-price">$80.00</span>
                                    </div>

                                    <div class="ec-pro-variation">
                                        <div class="ec-pro-variation-inner ec-pro-variation-color">
                                            <span>Color</span>
                                            <div class="ec-pro-color">
                                                <ul class="ec-opt-swatch">
                                                    <li><span style="background-color:#696d62;"></span></li>
                                                    <li><span style="background-color:#d73808;"></span></li>
                                                    <li><span style="background-color:#577023;"></span></li>
                                                    <li><span style="background-color:#2ea1cd;"></span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="ec-pro-variation-inner ec-pro-variation-size ec-pro-size">
                                            <span>Size</span>
                                            <div class="ec-pro-variation-content">
                                                <ul class="ec-opt-size">
                                                    <li class="active"><a href="#" class="ec-opt-sz"
                                                                          data-tooltip="Small">S</a></li>
                                                    <li><a href="#" class="ec-opt-sz" data-tooltip="Medium">M</a></li>
                                                    <li><a href="#" class="ec-opt-sz" data-tooltip="Large">X</a></li>
                                                    <li><a href="#" class="ec-opt-sz" data-tooltip="Extra Large">XL</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ec-quickview-qty">
                                        <div class="qty-plus-minus">
                                            <input class="qty-input" type="text" name="ec_qtybtn" value="1" />
                                        </div>
                                        <div class="ec-quickview-cart ">
                                            <button class="btn btn-primary"><i class="fi-rr-shopping-basket"></i> Add To
                                                Cart</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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