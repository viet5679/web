<!--========================================================= 
    Item Name: Louis Vuitton
    Version: 3.7
    Copyright 2024
 ============================================================-->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="model.Users" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge" />
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>Louis Vuitton</title>
        <meta name="keywords"
              content="apparel, catalog, clean, ecommerce, ecommerce HTML, electronics, fashion, html eCommerce, html store, minimal, multipurpose, multipurpose ecommerce, online store, responsive ecommerce template, shops" />
        <meta name="description"
              content="Best ecommerce html template for single and multi vendor store.">
        <meta name="author" content="ashishmaraviya">

        <!-- site Favicon -->
        <link rel="icon" href="assets/images/logo/logo3.png" sizes="32x32" />
        <link rel="apple-touch-icon" href="assets/images/logo/logo3.png" />
        <meta name="msapplication-TileImage"
              content="assets/images/logo/logo3.png" />

        <!-- css Icon Font -->
        <link rel="stylesheet" href="assets/css/vendor/ecicons.min.css" />

        <!-- css All Plugins Files -->
        <link rel="stylesheet" href="assets/css/plugins/animate.css" />
        <link rel="stylesheet"
              href="assets/css/plugins/swiper-bundle.min.css" />
        <link rel="stylesheet" href="assets/css/plugins/jquery-ui.min.css" />
        <link rel="stylesheet" href="assets/css/plugins/countdownTimer.css" />
        <link rel="stylesheet" href="assets/css/plugins/slick.min.css" />
        <link rel="stylesheet" href="assets/css/plugins/bootstrap.css" />

        <!-- Main Style -->
        <link rel="stylesheet" href="assets/css/demo1.css" />
        <link rel="stylesheet" href="assets/css/style.css" />
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <!-- Background css -->
        <link rel="stylesheet" id="bg-switcher-css"
              href="assets/css/backgrounds/bg-4.css">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;500;700&display=swap" rel="stylesheet">

    </head>

    <body>
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
                                            <li><a href="shop" data-scroll="categories" class="nav-scroll">Shop</a></li>
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


        <!-- Category Sidebar start -->
        <div class="ec-side-cat-overlay"></div>
        <div class="col-lg-3 category-sidebar" data-animation="fadeIn">
            <div class="cat-sidebar">
                <div class="cat-sidebar-box">
                    <div class="ec-sidebar-wrap">
                        <!-- Sidebar Category Block -->
                    </div>
                </div>
                <div class="ec-sidebar-slider-cat">
                    <div class="ec-sb-slider-title">Best Sellers</div>
                    <div class="ec-sb-pro-sl">
                        <c:forEach var="bestSeller" items="${requestScope.bestSeller}">
                            <div>
                                <div class="ec-sb-pro-sl-item">
                                    <a href="product?id=${bestSeller.id}"
                                       class="sidekka_pro_img"><img
                                            src="${bestSeller.avatar}"
                                            alt="product" /></a>
                                    <div class="ec-pro-content">
                                        <h5 class="ec-pro-title"><a href="product?id=${bestSeller.id}">${bestSeller.name}</a></h5>
                                        <div class="ec-pro-rating">
                                            <div class="ec-pro-rating">
                                                <c:forEach var="i" begin="1" end="5">
                                                    <c:choose>
                                                        <c:when test="${i <= bestSeller.totalStars}">
                                                            <i class="ecicon eci-star fill"></i>  <!-- Filled star -->
                                                        </c:when>
                                                        <c:otherwise>
                                                            <i class="ecicon eci-star"></i> <!-- Empty star -->
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <span class="ec-price">
                                            <span
                                                class="old-price">$${bestSeller.price}</span>
                                            <span
                                                class="new-price">$${bestSeller.totalPay}</span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main Slider Start -->
        <div
            class="sticky-header-next-sec ec-main-slider section section-space-pb">
            <div
                class="ec-slider swiper-container main-slider-nav main-slider-dot">
                <!-- Main slider -->
                <div class="swiper-wrapper">
                    <div class="ec-slide-item swiper-slide d-flex ec-slide-1">
                        <div class="container align-self-center">
                            <div class="row">
                                <div
                                    class="col-xl-6 col-lg-7 col-md-7 col-sm-7 align-self-center">
                                    <div class="ec-slide-content slider-animation">
                                        <h1 class="ec-slide-title">Louis Vuitton Jewelry</h1>
                                        <h2 class="ec-slide-stitle">Exclusive Offers</h2>
                                        <p>The iconic products of Louis Vuitton add a sparkling touch to romantic moments.</p>
                                        <a href="shop" class="btn btn-lg btn-secondary">Order Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ec-slide-item swiper-slide d-flex ec-slide-2">
                        <div class="container align-self-center">
                            <div class="row">
                                <div
                                    class="col-xl-6 col-lg-7 col-md-7 col-sm-7 align-self-center">
                                    <div
                                        class="ec-slide-content slider-animation">
                                        <h1 class="ec-slide-title">Louis Vuitton Bags</h1>
                                        <h2 class="ec-slide-stitle">Exclusive Deals</h2>
                                        <p>Shop premium Louis Vuitton handbags and accessories today!</p>
                                        <a href="shop" class="btn btn-lg btn-secondary">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination swiper-pagination-white"></div>
                <div class="swiper-buttons">
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </div>
        <!-- Main Slider End -->

        <!-- Product tab Area Start -->
        <section class="section ec-product-tab section-space-p" id="collection">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="section-title">
                            <h2 class="ec-bg-title">Discover the unique creations of Louis Vuitton.</h2>
                            <h2 class="ec-title">Discover the unique creations of Louis Vuitton.</h2>
                            <p class="sub-title">Browse The Collection of Top Products</p>
                        </div>
                    </div>

                    <!-- Tab Start -->
                    <div class="col-md-12 text-center">
                        <ul class="ec-pro-tab-nav nav justify-content-center">
                            <li class="nav-item"><a class="nav-link active" data-bs-toggle="tab" href="#tab-pro-for-all">For All</a></li>
                                <c:forEach var="g" items="${requestScope.genderList}">
                                <li class="nav-item"><a class="nav-link" data-bs-toggle="tab" href="#tab-pro-for-${g.name}">For ${g.name}</a></li>
                                </c:forEach>
                        </ul>
                    </div>
                    <!-- Tab End -->
                </div>
                <div class="row">
                    <div class="col">
                        <div class="tab-content">
                            <!-- 1st Product tab start -->
                            <!--Tab All is show active : default-->
                            <c:set var="firstTab" value="true"/>
                            <c:forEach var="entry" items="${productLists}">
                                <div class="tab-pane fade ${firstTab ? 'show active' : ''}" id="tab-pro-for-${entry.key}">
                                    <c:set var="firstTab" value="false"/>
                                    <div class="row">
                                        <!-- Product Content -->
                                        <c:forEach var="product" items="${entry.value}">
                                            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content" data-animation="fadeIn">
                                                <div class="ec-product-inner">
                                                    <div class="ec-pro-image-outer">
                                                        <div class="ec-pro-image">
                                                            <a href="product?id=${product.id}" class="image">
                                                                <img class="main-image" src="${product.avatar}" alt="Product" />
                                                                <img class="hover-image" src="${product.hoverAvatar}" alt="Product" />
                                                            </a>
                                                            <c:choose>
                                                                <c:when test="${fn:contains(product.tag, '%')}">
                                                                    <span class="percentage">${product.tag}</span>
                                                                </c:when>
                                                                <c:when test="${product.tag == 'SALE'}">
                                                                    <span class="flags">
                                                                        <span class="sale">${product.tag}</span>
                                                                    </span>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <span class="flags">
                                                                        <span class="new">${product.tag}</span>
                                                                    </span>
                                                                </c:otherwise>
                                                            </c:choose>
                                                            <div class="ec-pro-actions">
                                                                <button title="Add To Cart" class="add-to-cart" onclick="addToCart(${product.id}, 1)">
                                                                    <i class="fi-rr-shopping-basket"></i> Add To Cart
                                                                </button>
                                                                <button title="Wishlist" class="ec-btn-group wishlist-btn" 
                                                                        data-product-id="${product.id}" 
                                                                        onclick="addToWishList(${product.id}, this)">
                                                                    <i class="fi-rr-heart"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ec-pro-content">
                                                        <h5 class="ec-pro-title"><a
                                                                href="product?id=${product.id}">${product.name}</a></h5>
                                                        <div class="ec-pro-rating">
                                                            <c:forEach var="i" begin="1" end="5">
                                                                <c:choose>
                                                                    <c:when test="${i <= product.totalStars}">
                                                                        <i class="ecicon eci-star fill"></i>  <!-- Filled star -->
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <i class="ecicon eci-star"></i> <!-- Empty star -->
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:forEach>
                                                        </div>

                                                        <span class="ec-price">
                                                            <span
                                                                class="old-price">$${product.price}</span>
                                                            <span
                                                                class="new-price">$${product.totalPay}</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                        <div class="col-sm-12 shop-all-btn"><a href="shop">Shop All Collection</a></div>
                                    </div>
                                </div>
                            </c:forEach>
                            <!-- ec 1st Product tab end -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ec Product tab Area End -->
        <script>
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
                    success: function () {
                        Swal.fire({
                            position: "center",
                            icon: "success",
                            title: "Added to cart",
                            showConfirmButton: false,
                            timer: 700,
                            width: "400px", // Giảm chiều rộng
                            padding: "5px" // Giảm padding
                        });
                    }
                });
            }
            function addToWishList(productId, element) {
                $.ajax({
                    type: "POST",
                    url: "wishlist",
                    data: {productId: productId},
                    success: function (response) {
                        if (response.isWishlisted) {
                            $(element).addClass("active"); // Nếu đã thêm, đổi màu nút
                        } else {
                            $(element).removeClass("active"); // Nếu đã xóa, trở lại bình thường
                        }
                    },
                    error: function () {
                        alert("Có lỗi xảy ra!");
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

        <!-- ec Banner Section Start -->
        <section class="ec-banner section section-space-p">
            <h2 class="d-none">Banner</h2>
            <div class="container">
                <!-- ec Banners Start -->
                <div class="ec-banner-inner">
                    <!--ec Banner Start -->
                    <div class="ec-banner-block ec-banner-block-2">
                        <div class="row">
                            <div
                                class="banner-block col-lg-6 col-md-12 margin-b-30"
                                data-animation="slideInRight">
                                <div class="bnr-overlay">
                                    <img src="assets/images/banner/2.jpg" alt />
                                    <div class="banner-text">
                                        <span class="ec-banner-stitle">New
                                            Arrivals</span>
                                        <span class="ec-banner-title">Men<br>
                                            Jacket</span>
                                        <span class="ec-banner-discount">Super sale</span>
                                    </div>
                                    <div class="banner-content">
                                        <span class="ec-banner-btn"><a href="shop">Shop Now</a></span>
                                    </div>
                                </div>
                            </div>
                            <div class="banner-block col-lg-6 col-md-12"
                                 data-animation="slideInLeft">
                                <div class="bnr-overlay">
                                    <img src="assets/images/banner/3.jpg" alt="New Trending" />
                                    <div class="banner-text">
                                        <span class="ec-banner-stitle">New Trending</span>
                                        <span class="ec-banner-title">Bags<br> Montré</span>
                                        <span class="ec-banner-discount">Limited time offer <br> Hurry up!</span>
                                    </div>
                                    <div class="banner-content">
                                        <span class="ec-banner-btn"><a href="shop">Shop Now</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ec Banner End -->
                    </div>
                    <!-- ec Banners End -->
                </div>
            </div>
        </section>
        <!-- ec Banner Section End -->
        <!--  services Section Start -->
        <section class="section ec-services-section section-space-p"
                 id="services">
            <h2 class="d-none">Services</h2>
            <div class="container">
                <div class="row">
                    <div
                        class="ec_ser_content ec_ser_content_1 col-sm-12 col-md-6 col-lg-3"
                        data-animation="zoomIn">
                        <div class="ec_ser_inner">
                            <div class="ec-service-image">
                                <i class="fi fi-ts-truck-moving"></i>
                            </div>
                            <div class="ec-service-desc">
                                <h2>Free Shipping</h2>
                                <p>Free shipping on all US order or order above
                                    $200</p>
                            </div>
                        </div>
                    </div>
                    <div
                        class="ec_ser_content ec_ser_content_2 col-sm-12 col-md-6 col-lg-3"
                        data-animation="zoomIn">
                        <div class="ec_ser_inner">
                            <div class="ec-service-image">
                                <i class="fi fi-ts-hand-holding-seeding"></i>
                            </div>
                            <div class="ec-service-desc">
                                <h2>24X7 Support</h2>
                                <p>Contact us 24 hours a day, 7 days a week</p>
                            </div>
                        </div>
                    </div>
                    <div
                        class="ec_ser_content ec_ser_content_3 col-sm-12 col-md-6 col-lg-3"
                        data-animation="zoomIn">
                        <div class="ec_ser_inner">
                            <div class="ec-service-image">
                                <i class="fi fi-ts-badge-percent"></i>
                            </div>
                            <div class="ec-service-desc">
                                <h2>30 Days Return</h2>
                                <p>Simply return it within 30 days for an
                                    exchange</p>
                            </div>
                        </div>
                    </div>
                    <div
                        class="ec_ser_content ec_ser_content_4 col-sm-12 col-md-6 col-lg-3"
                        data-animation="zoomIn">
                        <div class="ec_ser_inner">
                            <div class="ec-service-image">
                                <i class="fi fi-ts-donate"></i>
                            </div>
                            <div class="ec-service-desc">
                                <h2>Payment Secure</h2>
                                <p>Contact us 24 hours a day, 7 days a week</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--services Section End -->

        <!-- offer Section Start -->
        <section class="section ec-offer-section section-space-p section-space-m">
            <h2 class="d-none">Offer</h2>
            <div class="container">
                <div class="row justify-content-end">
                    <div
                        class="col-xl-6 col-lg-7 col-md-7 col-sm-7 align-self-center ec-offer-content">
                        <span class="ec-offer-img" data-animation="zoomIn">
                            <h2 class="ec-offer-title">Louis Vuitton Bags</h2>
                        </span>

                        <h3 class="ec-offer-stitle"
                            data-animation="slideInDown">Super Offer</h3>
                        <a class="btn btn-primary"
                           href="shop"
                           data-animation="zoomIn">Shop Now</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- offer Section End -->

        <!-- New Product Start -->
        <section class="section ec-new-product section-space-p" id="arrivals">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="section-title">
                            <h2 class="ec-bg-title">New Arrivals</h2>
                            <h2 class="ec-title">New Arrivals</h2>
                            <p class="sub-title">Browse The Collection of Top
                                Products</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- New Product Content -->
                    <c:forEach var="newArrivals" items="${requestScope.newArrivals}">
                        <div
                            class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content"
                            data-animation="flipInY">
                            <div class="ec-product-inner">
                                <div class="ec-pro-image-outer">
                                    <div class="ec-pro-image">
                                        <a href="product-left-sidebar.jsp"
                                           class="image">
                                            <img class="main-image"
                                                 src="${newArrivals.avatar}"
                                                 alt="Product" />
                                            <img class="hover-image"
                                                 src="${newArrivals.hoverAvatar}"
                                                 alt="Product" />
                                        </a>
                                        <span class="flags">
                                            <span class="new">New</span>
                                        </span>
                                        <div class="ec-pro-actions">
                                            <button title="Add To Cart" class="add-to-cart" onclick="addToCart(${newArrivals.id}, 1)">
                                                <i class="fi-rr-shopping-basket"></i> Add To Cart
                                            </button>
                                            <button title="Wishlist" class="ec-btn-group wishlist-btn" 
                                                    data-product-id="${newArrivals.id}" 
                                                    onclick="addToWishList(${newArrivals.id}, this)">
                                                <i class="fi-rr-heart"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="ec-pro-content">
                                    <h5 class="ec-pro-title"><a
                                            href="product-left-sidebar.jsp">${newArrivals.name}</a>
                                    </h5>
                                    <div class="ec-pro-rating">
                                        <c:forEach var="i" begin="1" end="5">
                                            <c:choose>
                                                <c:when
                                                    test="${i <= newArrivals.totalStars}">
                                                    <i
                                                        class="ecicon eci-star fill"></i>
                                                </c:when>
                                                <c:otherwise>
                                                    <i
                                                        class="ecicon eci-star"></i>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </div>
                                    <span class="ec-price">
                                        <span
                                            class="old-price">$${newArrivals.price}</span>
                                        <span
                                            class="new-price">$${newArrivals.totalPay}</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="col-sm-12 shop-all-btn"><a href="shop">Shop All Collection</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- New Product end -->

        <!-- ec testmonial Start -->
        <section
            class="section ec-test-section section-space-ptb-100 section-space-m"
            id="reviews">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="section-title mb-0">
                            <h2 class="ec-bg-title">Testimonial</h2>
                            <h2 class="ec-title">Client Review</h2>
                            <p class="sub-title mb-3">What say client about
                                us</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="ec-test-outer">
                        <ul id="ec-testimonial-slider">
                            <li class="ec-test-item">
                                <i class="fi-rr-quote-right top"></i>
                                <div class="ec-test-inner">
                                    <div class="ec-test-img"><img alt="testimonial" title="testimonial" src="assets/images/testimonial/1.jpg" /></div>
                                    <div class="ec-test-content">
                                        <div class="ec-test-desc">I am truly impressed with the quality and performance of this product. The sleek design, fast speed, and long battery life are major highlights. I’ve tried many similar products, but this one is definitely among the best choices!</div>
                                        <div class="ec-test-name">Son Tung-MTP</div>
                                        <div class="ec-test-designation">Artist</div>
                                        <div class="ec-test-rating">
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                        </div>
                                    </div>
                                </div>
                                <i class="fi-rr-quote-right bottom"></i>
                            </li>
                            <li class="ec-test-item ">
                                <i class="fi-rr-quote-right top"></i>
                                <div class="ec-test-inner">
                                    <div class="ec-test-img"><img alt="testimonial" title="testimonial" src="assets/images/testimonial/2.jpg" /></div>
                                    <div class="ec-test-content">
                                        <div class="ec-test-desc">The customer service is outstanding! I had some issues with my order, but the support team responded quickly and resolved everything immediately. I’m very satisfied and will definitely continue shopping here.</div>
                                        <div class="ec-test-name">Lisa</div>
                                        <div class="ec-test-designation">Artist</div>
                                        <div class="ec-test-rating">
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                        </div>
                                    </div>
                                </div>
                                <i class="fi-rr-quote-right bottom"></i>
                            </li>
                            <li class="ec-test-item">
                                <i class="fi-rr-quote-right top"></i>
                                <div class="ec-test-inner">
                                    <div class="ec-test-img"><img alt="testimonial" title="testimonial" src="assets/images/testimonial/3.jpg" /></div>
                                    <div class="ec-test-content">
                                        <div class="ec-test-desc">The fabric quality is amazing, the stitching is meticulous, and the design is modern! I bought a jacket from here, and it feels super comfortable to wear. Will definitely recommend it to my friends!</div>
                                        <div class="ec-test-name">Rosé</div>
                                        <div class="ec-test-designation">Artist</div>
                                        <div class="ec-test-rating">
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                        </div>
                                    </div>
                                </div>
                                <i class="fi-rr-quote-right bottom"></i>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- ec testmonial end -->

        <!-- Ec Instagram Start -->
        <section class="section ec-instagram-section module section-space-p"
                 id="insta">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="section-title">
                            <h2 class="ec-title">Fashion style</h2>
                            <p class="sub-title">Free to be yourself</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ec-insta-wrapper">
                <div class="ec-insta-outer">
                    <div class="container" data-animation="fadeIn">
                        <div class="insta-auto">
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner"><img src="assets/images/instragram-image/1.jpg"></div>
                            </div>
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner"><img src="assets/images/instragram-image/2.jpg"></div>
                            </div>
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner"><img src="assets/images/instragram-image/3.jpg"></div>
                            </div>
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner"><img src="assets/images/instragram-image/4.jpg"></div>
                            </div>
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner"><img src="assets/images/instragram-image/5.jpg"></div>
                            </div>
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner"><img src="assets/images/instragram-image/6.jpg"></div>
                            </div>
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner"><img src="assets/images/instragram-image/7.jpg"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Ec Instagram End -->

        <!-- Footer Start -->
        <jsp:include page="footer.jsp"></jsp:include>
            <!-- Footer Area End -->

            <!-- Modal -->
            <div class="modal fade" id="ec_quickview_modal" tabindex="-1"
                 role="dialog">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <button type="button" class="btn-close qty_close"
                                data-bs-dismiss="modal" aria-label="Close"></button>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-5 col-sm-12 col-xs-12">
                                    <!-- Swiper -->
                                    <div class="qty-product-cover">
                                        <div class="qty-slide">
                                            <img class="img-responsive"
                                                 src="assets/images/product-image/3_1.jpg"
                                                 alt>
                                        </div>
                                        <div class="qty-slide">
                                            <img class="img-responsive"
                                                 src="assets/images/product-image/3_2.jpg"
                                                 alt>
                                        </div>
                                        <div class="qty-slide">
                                            <img class="img-responsive"
                                                 src="assets/images/product-image/3_3.jpg"
                                                 alt>
                                        </div>
                                        <div class="qty-slide">
                                            <img class="img-responsive"
                                                 src="assets/images/product-image/3_4.jpg"
                                                 alt>
                                        </div>
                                        <div class="qty-slide">
                                            <img class="img-responsive"
                                                 src="assets/images/product-image/3_5.jpg"
                                                 alt>
                                        </div>
                                    </div>
                                    <div class="qty-nav-thumb">
                                        <div class="qty-slide">
                                            <img class="img-responsive"
                                                 src="assets/images/product-image/3_1.jpg"
                                                 alt>
                                        </div>
                                        <div class="qty-slide">
                                            <img class="img-responsive"
                                                 src="assets/images/product-image/3_2.jpg"
                                                 alt>
                                        </div>
                                        <div class="qty-slide">
                                            <img class="img-responsive"
                                                 src="assets/images/product-image/3_3.jpg"
                                                 alt>
                                        </div>
                                        <div class="qty-slide">
                                            <img class="img-responsive"
                                                 src="assets/images/product-image/3_4.jpg"
                                                 alt>
                                        </div>
                                        <div class="qty-slide">
                                            <img class="img-responsive"
                                                 src="assets/images/product-image/3_5.jpg"
                                                 alt>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 col-sm-12 col-xs-12">
                                    <div class="quickview-pro-content">
                                        <h5 class="ec-quick-title"><a
                                                href="product-left-sidebar.jsp">Handbag
                                                leather purse for
                                                women</a>
                                        </h5>
                                        <div class="ec-quickview-rating">
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                            <i class="ecicon eci-star fill"></i>
                                        </div>

                                        <div class="ec-quickview-desc">Lorem Ipsum
                                            is simply dummy text of the printing and
                                            typesetting industry. Lorem Ipsum has
                                            been the industry's standard dummy text
                                            ever
                                            since the 1500s,</div>
                                        <div class="ec-quickview-price">
                                            <span class="old-price">$4500.00</span>
                                            <span class="new-price">$4300.00</span>
                                        </div>

                                        <div class="ec-pro-variation">
                                            <div
                                                class="ec-pro-variation-inner ec-pro-variation-size ec-pro-size">
                                                <span>Size</span>
                                                <div
                                                    class="ec-pro-variation-content">
                                                    <ul class="ec-opt-size">
                                                        <li class="active"><a
                                                                href="#"
                                                                class="ec-opt-sz"
                                                                data-tooltip="Small">S</a></li>
                                                        <li><a href="#"
                                                               class="ec-opt-sz"
                                                               data-tooltip="Medium">M</a></li>
                                                        <li><a href="#"
                                                               class="ec-opt-sz"
                                                               data-tooltip="Large">X</a></li>
                                                        <li><a href="#"
                                                               class="ec-opt-sz"
                                                               data-tooltip="Extra Large">XL</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ec-quickview-qty">
                                            <div class="qty-plus-minus">
                                                <input class="qty-input" type="text"
                                                       name="ec_qtybtn" value="1" />
                                            </div>
                                            <div class="ec-quickview-cart ">
                                                <button class="btn btn-primary"><i
                                                        class="fi-rr-shopping-basket"></i>
                                                    Add To Cart</button>
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
            <script
            src="<%= request.getContextPath() %>/assets/js/vendor/jquery-3.5.1.min.js"></script>
        <script
        src="<%= request.getContextPath() %>/assets/js/vendor/popper.min.js"></script>
        <script
        src="<%= request.getContextPath() %>/assets/js/vendor/bootstrap.min.js"></script>
        <script
        src="<%= request.getContextPath() %>/assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>
        <script
        src="<%= request.getContextPath() %>/assets/js/vendor/modernizr-3.11.2.min.js"></script>

        <!--Plugins JS-->
        <script
        src="<%= request.getContextPath() %>/assets/js/plugins/swiper-bundle.min.js"></script>
        <script
        src="<%= request.getContextPath() %>/assets/js/plugins/countdownTimer.min.js"></script>
        <script
        src="<%= request.getContextPath() %>/assets/js/plugins/scrollup.js"></script>
        <script
        src="<%= request.getContextPath() %>/assets/js/plugins/jquery.zoom.min.js"></script>
        <script
        src="<%= request.getContextPath() %>/assets/js/plugins/slick.min.js"></script>
        <script
        src="<%= request.getContextPath() %>/assets/js/plugins/infiniteslidev2.js"></script>
        <script
        src="<%= request.getContextPath() %>/assets/js/vendor/jquery.magnific-popup.min.js"></script>
        <script
        src="<%= request.getContextPath() %>/assets/js/plugins/jquery.sticky-sidebar.js"></script>

        <!-- Main Js -->
        <script
        src="<%= request.getContextPath() %>/assets/js/vendor/index.js"></script>
        <script
        src="<%= request.getContextPath() %>/assets/js/main.js"></script>
    </body>

</html>