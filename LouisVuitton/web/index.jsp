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
                                    <button class="dropdown-toggle"
                                            data-bs-toggle="dropdown"><i
                                            class="fi-rr-user"></i></button>
                                    <ul
                                        class="dropdown-menu dropdown-menu-right">
                                        <li><a class="dropdown-item"
                                               href="register">Register</a></li>
                                        <li><a class="dropdown-item"
                                               href="checkout.jsp">Checkout</a></li>
                                        <li><a class="dropdown-item"
                                               href="login">Login</a></li>
                                    </ul>
                                </div>
                                <!-- Header User End -->

                                <!-- Header Cart Start -->
                                <a href="wishlist.jsp"
                                   class="ec-header-btn ec-header-wishlist">
                                    <div class="header-icon"><i
                                            class="fi-rr-heart"></i></div>
                                    <span
                                        class="ec-header-count wishlist-count-label">0</span>
                                </a>
                                <!-- Header Cart End -->

                                <!-- Header Cart Start -->
                                <a href="cart.jsp"
                                   class="ec-header-btn ec-side-toggle">
                                    <div class="header-icon"><i class="fi-rr-shopping-bag"></i></div>
                                    <span class="ec-header-count cart-count-lable">0</span>
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
                                            <!-- chưa đăng nhập -->
                                            <li><a class="dropdown-item" href="register">Register</a></li>
                                            <li><a class="dropdown-item" href="login">Login</a></li>
                                                <% } else { %>
                                            <!-- đã đăng nhập -->
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
                                                        response.sendRedirect("home"); // Chuyển hướng về trang chủ
                                                    }
                                                %>
                                        </ul>
                                    </div>
                                    <!-- Header User End -->
                                    <!-- Header wishlist Start -->
                                    <a href="wishlist.jsp"
                                       class="ec-header-btn ec-header-wishlist">
                                        <div class="header-icon"><i
                                                class="fi-rr-heart"></i></div>
                                        <span
                                            class="ec-header-count wishlist-count-label">0</span>
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
                                    <li><a href="track-order.jsp">Track Order</a></li>
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
                                    <a href="product-left-sidebar.jsp"
                                       class="sidekka_pro_img"><img
                                            src="${bestSeller.avatar}"
                                            alt="product" /></a>
                                    <div class="ec-pro-content">
                                        <h5 class="ec-pro-title"><a
                                                href="product-left-sidebar.jsp">${bestSeller.name}</a></h5>
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
                                    <div
                                        class="ec-slide-content slider-animation">
                                        <h1 class="ec-slide-title">Louis Vuitton
                                            Jewelry</h1>
                                        <h2 class="ec-slide-stitle">Exclusive
                                            Offers</h2>
                                        <p>The iconic products of Louis Vuitton
                                            add a sparkling touch to romantic
                                            moments.</p>
                                        <a href="#"
                                           class="btn btn-lg btn-secondary">Order
                                            Now</a>
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
                                        <h1 class="ec-slide-title">Louis
                                            Vuitton Bags</h1>
                                        <h2 class="ec-slide-stitle">Exclusive
                                            Deals</h2>
                                        <p>Shop premium Louis Vuitton handbags
                                            and accessories today!</p>
                                        <a href="#"
                                           class="btn btn-lg btn-secondary">Shop
                                            Now</a>
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
                            <h2 class="ec-bg-title">Discover the unique
                                creations of Louis Vuitton.</h2>
                            <h2 class="ec-title">Discover the unique creations
                                of Louis Vuitton.</h2>
                            <p class="sub-title">Browse The Collection of Top
                                Products</p>
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
                            <!--Cho tab All là show active : mặc định  khi chạy-->
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
                                                            <a href="product-left-sidebar.jsp" class="image">
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
                                                            <a href="#"
                                                               class="quickview"
                                                               data-link-action="quickview"
                                                               title="Quick view"
                                                               data-bs-toggle="modal"
                                                               data-bs-target="#ec_quickview_modal"><i
                                                                    class="fi-rr-eye"></i></a>
                                                            <div class="ec-pro-actions">
                                                                <button title="Add To Cart" class="add-to-cart" onclick="addToCart(${product.id}, 1)">
                                                                    <i class="fi-rr-shopping-basket"></i> Add To Cart
                                                                </button>
                                                                <a class="ec-btn-group wishlist" title="Wishlist"><i class="fi-rr-heart"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ec-pro-content">
                                                        <h5 class="ec-pro-title"><a
                                                                href="product-left-sidebar.jsp">${product.name}</a></h5>
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
<!--                                                        <div class="ec-pro-option">

                                                            <div class="ec-pro-size">
                                                                <span
                                                                    class="ec-pro-opt-label">Size</span>
                                                                <ul
                                                                    class="ec-opt-size">
                                                                    <li
                                                                        class="active"><a
                                                                            href="#"
                                                                            class="ec-opt-sz"
                                                                            data-old="$${product.price}"
                                                                            data-new="$${product.totalPay}"
                                                                            data-tooltip="Small">S</a></li>
                                                                    <li><a href="#"
                                                                           class="ec-opt-sz"
                                                                           data-old="$${product.price}"
                                                                           data-new="$${product.totalPay}"
                                                                           data-tooltip="Medium">M</a></li>
                                                                    <li><a href="#"
                                                                           class="ec-opt-sz"
                                                                           data-old="$${product.price}"
                                                                           data-new="$${product.totalPay}"
                                                                           data-tooltip="Large">X</a></li>
                                                                    <li><a href="#"
                                                                           class="ec-opt-sz"
                                                                           data-old="$${product.price}"
                                                                           data-new="$${product.totalPay}"
                                                                           data-tooltip="Extra Large">XL</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>-->
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                        <div class="col-sm-12 shop-all-btn"><a
                                                href="shop">Shop
                                                All
                                                Collection</a></div>
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
            function addToCart(productId, quantity) {
                $.ajax({
                    type: "POST",
                    url: "cart",
                    data: {
                        productId: productId,
                        quantity: quantity
                    }
                });
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
                                        <span class="ec-banner-title">Bags<br>
                                            Montré</span>
                                        <span class="ec-banner-discount">30%
                                            Discount</span>
                                    </div>
                                    <div class="banner-content">
                                        <span class="ec-banner-btn"><a
                                                href="#">Order Now</a></span>
                                    </div>
                                </div>
                            </div>
                            <div class="banner-block col-lg-6 col-md-12"
                                 data-animation="slideInLeft">
                                <div class="bnr-overlay">
                                    <img src="assets/images/banner/3.jpg" alt />
                                    <div class="banner-text">
                                        <span class="ec-banner-stitle">New
                                            Trending</span>
                                        <span class="ec-banner-title">Men<br>
                                            Hoodie</span>
                                        <span class="ec-banner-discount">Buy any
                                            3 Items & get <br>20%
                                            Discount</span>
                                    </div>
                                    <div class="banner-content">
                                        <span class="ec-banner-btn"><a
                                                href="#">Order Now</a></span>
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
        <section
            class="section ec-offer-section section-space-p section-space-m">
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
                        <span class="ec-offer-price">$10500.00 Only</span>
                        <a class="btn btn-primary"
                           href="shop-left-sidebar-col-3.jsp"
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
                    <c:forEach var="newArrivals"
                               items="${requestScope.newArrivals}">
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
                                        <a href="#" class="quickview"
                                           data-link-action="quickview"
                                           title="Quick view"
                                           data-bs-toggle="modal"
                                           data-bs-target="#ec_quickview_modal"><i
                                                class="fi-rr-eye"></i></a>
                                        <div class="ec-pro-actions">
                                            <a href="compare.jsp"
                                               class="ec-btn-group compare"
                                               title="Compare"><i
                                                    class="fi fi-rr-arrows-repeat"></i></a>
                                            <button title="Add To Cart"
                                                    class="add-to-cart"><i
                                                    class="fi-rr-shopping-basket"></i>
                                                Add To Cart</button>
                                            <a class="ec-btn-group wishlist"
                                               title="Wishlist"><i
                                                    class="fi-rr-heart"></i></a>
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
<!--                                    <div class="ec-pro-option">
                                        <div class="ec-pro-color">

                                        </div>
                                        <div class="ec-pro-size">
                                            <span
                                                class="ec-pro-opt-label">Size</span>
                                            <ul class="ec-opt-size">
                                                <li class="active"><a href="#"
                                                                      class="ec-opt-sz"
                                                                      data-old="$${newArrivals.price}"
                                                                      data-new="$${newArrivals.totalPay}"
                                                                      data-tooltip="Small">S</a></li>
                                                <li><a href="#"
                                                       class="ec-opt-sz"
                                                       data-old="$${newArrivals.price}"
                                                       data-new="$${newArrivals.totalPay}"
                                                       data-tooltip="Medium">M</a></li>
                                                <li><a href="#"
                                                       class="ec-opt-sz"
                                                       data-old="$${newArrivals.price}"
                                                       data-new="$${newArrivals.totalPay}"
                                                       data-tooltip="Large">X</a></li>
                                                <li><a href="#"
                                                       class="ec-opt-sz"
                                                       data-old="$${newArrivals.price}"
                                                       data-new="$${newArrivals.totalPay}"
                                                       data-tooltip="Extra Large">XL</a></li>
                                            </ul>
                                        </div>
                                    </div>-->
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="col-sm-12 shop-all-btn"><a
                            href="shop">Shop All
                            Collection</a>
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
                                    <div class="ec-test-img"><img
                                            alt="testimonial"
                                            title="testimonial"
                                            src="assets/images/testimonial/1.jpg" /></div>
                                    <div class="ec-test-content">
                                        <div class="ec-test-desc">I am truly
                                            impressed with the quality and
                                            performance of this product. The
                                            sleek design, fast speed, and long
                                            battery life are major highlights.
                                            I’ve tried many similar products,
                                            but this one is definitely among the
                                            best choices!</div>
                                        <div class="ec-test-name">Son
                                            Tung-MTP</div>
                                        <div
                                            class="ec-test-designation">Artist</div>
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
                                    <div class="ec-test-img"><img
                                            alt="testimonial"
                                            title="testimonial"
                                            src="assets/images/testimonial/2.jpg" /></div>
                                    <div class="ec-test-content">
                                        <div class="ec-test-desc">The customer
                                            service is outstanding! I had some
                                            issues with my order, but the
                                            support team responded quickly and
                                            resolved everything immediately. I’m
                                            very satisfied and will definitely
                                            continue shopping here.</div>
                                        <div class="ec-test-name">Lisa</div>
                                        <div
                                            class="ec-test-designation">Artist</div>
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
                                    <div class="ec-test-img"><img
                                            alt="testimonial"
                                            title="testimonial"
                                            src="assets/images/testimonial/3.jpg" /></div>
                                    <div class="ec-test-content">
                                        <div class="ec-test-desc">The fabric
                                            quality is amazing, the stitching is
                                            meticulous, and the design is
                                            modern! I bought a jacket from here,
                                            and it feels super comfortable to
                                            wear. Will definitely recommend it
                                            to my friends!</div>
                                        <div class="ec-test-name">Rosé</div>
                                        <div
                                            class="ec-test-designation">Artist</div>
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
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <img
                                        src="assets/images/instragram-image/1.jpg">
                                </div>
                            </div>
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <img
                                        src="assets/images/instragram-image/2.jpg">
                                </div>
                            </div>
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <img
                                        src="assets/images/instragram-image/3.jpg">
                                </div>
                            </div>
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <img
                                        src="assets/images/instragram-image/4.jpg">
                                </div>
                            </div>
                            <!-- instagram item -->
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <img
                                        src="assets/images/instragram-image/5.jpg">
                                </div>
                            </div>
                            <!-- instagram item -->
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <img
                                        src="assets/images/instragram-image/6.jpg">
                                </div>
                            </div>
                            <!-- instagram item -->
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <img
                                        src="assets/images/instragram-image/7.jpg">
                                </div>
                            </div>
                            <!-- instagram item -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Ec Instagram End -->

        <!-- Footer Start -->
        <footer class="ec-footer section-space-mt">
            <div class="footer-container">
                <div class="footer-offer">
                    <div class="container">
                        <div class="row">

                        </div>
                    </div>
                </div>
                <div class="footer-top section-space-footer-p">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-lg-3 ec-footer-contact">
                                <div class="ec-footer-widget">
                                    <div class="ec-footer-logo"><a href="#"><img
                                                src="assets/images/logo/logo4.png"
                                                alt><img
                                                class="dark-footer-logo"
                                                src="assets/images/logo/logo4.png"
                                                alt="Site Logo"
                                                style="display: none;" /></a></div>
                                    <h4 class="ec-footer-heading">Contact
                                        us</h4>
                                    <div class="ec-footer-links">
                                        <ul class="align-items-center">
                                            <li class="ec-footer-link">Hoa Lac
                                                Hi-tech Park, km 29, Đại lộ
                                                Thăng Long, Hà Nội, Vietnam</li>
                                            <li
                                                class="ec-footer-link"><span>Call
                                                    Us:</span><a
                                                    href="tel:+440123456789">0967870138</a></li>
                                            <li
                                                class="ec-footer-link"><span>Email:</span><a
                                                    href="mailto:example@ec-email.com">vietpthe180666@fpt.edu.vn</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 col-lg-2 ec-footer-info">
                                <div class="ec-footer-widget">
                                    <h4
                                        class="ec-footer-heading">Information</h4>
                                    <div class="ec-footer-links">
                                        <ul class="align-items-center">
                                            <li class="ec-footer-link"><a
                                                    href="aboutus">About
                                                    us</a></li>
                                            <li class="ec-footer-link"><a
                                                    href="faq.jsp">FAQ</a></li>
                                            <li class="ec-footer-link"><a
                                                    href="track-order.jsp">Delivery
                                                    Information</a>
                                            </li>
                                            <li class="ec-footer-link"><a
                                                    href="contactus">Contact
                                                    us</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-12 col-lg-2 ec-footer-service">
                                <div class="ec-footer-widget">
                                    <h4 class="ec-footer-heading">Services</h4>
                                    <div class="ec-footer-links">
                                        <ul class="align-items-center">

                                            <li class="ec-footer-link"><a
                                                    href="privacy-policy.jsp">Private
                                                    & policy </a>
                                            </li>
                                            <li class="ec-footer-link"><a
                                                    href="customer-service.jsp">Customer
                                                    Service</a>
                                            </li>
                                            <li class="ec-footer-link"><a
                                                    href="terms-condition.jsp">Term
                                                    & condition</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 col-lg-3 ec-footer-news">
                                <div class="ec-footer-widget">
                                    <h4
                                        class="ec-footer-heading">Newsletter</h4>
                                    <div class="ec-footer-links">
                                        <ul class="align-items-center">
                                            <li class="ec-footer-link">Get
                                                instant updates about our new
                                                products and
                                                special promos!</li>
                                        </ul>
                                        <div class="ec-subscribe-form">
                                            <form id="ec-newsletter-form"
                                                  name="ec-newsletter-form"
                                                  method="post"
                                                  action="#">
                                                <div id="ec_news_signup"
                                                     class="ec-form">
                                                    <input class="ec-email"
                                                           type="email" required
                                                           placeholder="Enter your email here..."
                                                           name="ec-email" value />
                                                    <button id="ec-news-btn"
                                                            class="button btn-primary"
                                                            type="submit"
                                                            name="subscribe"
                                                            value><i
                                                            class="ecicon eci-paper-plane-o"
                                                            aria-hidden="true"></i></button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom">
                    <div class="container">
                        <div class="row align-items-center">
                            <!-- Footer social Start -->
                            <div class="col text-left footer-bottom-left">
                                <div class="footer-bottom-social">
                                    <span class="social-text text-upper">Follow
                                        us on:</span>

                                </div>
                            </div>
                            <!-- Footer social End -->
                            <!-- Footer Copyright Start -->
                            <div class="col text-center footer-copy">
                                <div class="footer-bottom-copy ">
                                    <div class="ec-copy">Copyright ©<span
                                            id="copyright_year"></span> <a
                                            class="site-name text-upper"
                                            href="#">NYFS<span>.</span></a>. All
                                        Rights Reserved</div>
                                </div>
                            </div>
                            <!-- Footer Copyright End -->
                            <!-- Footer payment -->
                            <div class="col footer-bottom-right">
                                <div
                                    class="footer-bottom-payment d-flex justify-content-end">
                                    <div class="payment-link">
                                        <img
                                            src="assets/images/icons/payment.png"
                                            alt>
                                    </div>

                                </div>
                            </div>
                            <!-- Footer payment -->
                        </div>
                    </div>
                </div>
            </div>
        </footer>
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

        <!-- Footer navigation panel for responsive display -->
        <div class="ec-nav-toolbar">
            <div class="container">
                <div class="ec-nav-panel">
                    <div class="ec-nav-panel-icons">
                        <a href="#ec-mobile-menu"
                           class="navbar-toggler-btn ec-header-btn ec-side-toggle"><i
                                class="fi-rr-menu-burger"></i></a>
                    </div>
                    <div class="ec-nav-panel-icons">
                        <a href="cart"
                           class="toggle-cart ec-header-btn ec-side-toggle"><i
                                class="fi-rr-shopping-bag"></i><span
                                class="ec-cart-noti ec-header-count cart-count-lable">0</span></a>
                    </div>
                    <div class="ec-nav-panel-icons">
                        <a href="home" class="ec-header-btn"><i
                                class="fi-rr-home"></i></a>
                    </div>
                    <div class="ec-nav-panel-icons">
                        <a href="wishlist.jsp" class="ec-header-btn"><i
                                class="fi-rr-heart"></i><span
                                class="ec-cart-noti ec-header-count  wishlist-count-label">0</span></a>
                    </div>
                    <div class="ec-nav-panel-icons">
                        <a href="login" class="ec-header-btn"><i
                                class="fi-rr-user"></i></a>
                    </div>

                </div>
            </div>
        </div>
        <!-- Footer navigation panel for responsive display end -->

        <!-- Recent Purchase Popup  -->
        <div class="recent-purchase">
            <img src="assets/images/product-image/1.jpg" alt="payment image">
            <div class="detail">
                <p>Someone in new just bought</p>
                <h6>Denim Jacket</h6>
                <p>2 Minutes ago</p>
            </div>
            <a href="javascript:void(0)" class="icon-btn recent-close">x</a>
        </div>
        <!-- Recent Purchase Popup end -->

        <!-- Cart Floating Button -->
        <div class="ec-cart-float">
            <a href="#ec-side-cart" class="ec-header-btn ec-side-toggle">
                <div class="header-icon"><i class="fi-rr-shopping-basket"></i>
                </div>
                <span class="ec-cart-count cart-count-lable">0</span>
            </a>
        </div>
        <!-- Cart Floating Button end -->

        <!-- Floating Button wishlist-->
        <div class="ec-cart-float-wishlist">
            <a href="wishlist.jsp" class="ec-header-btn ec-wishlist-toggle">
                <div class="header-icon">
                    <i class="fi-rr-heart"></i>
                </div>
                <span class="ec-cart-count wishlist-count-label">0</span>
            </a>
        </div>

        <!-- Cart Floating Button end -->
        <script defer src="https://app.fastbots.ai/embed.js" data-bot-id="cm7vkewxc03kpn8lwqnmkoz6d"></script>

        <!-- Chatbot -->
        <div class="ec-style ec-right-bottom">
            <!-- Start Floating Panel Container -->
            <div class="ec-panel">
                <!-- Panel Header -->
                <div class="ec-header">
                    <strong>Chatbot AI</strong>
                    <p>Chat with our AI assistant</p>
                </div>
                <!-- Panel Content -->
                <div class="ec-body">
                    <ul id="chatbox">
                        <li class="bot-message">
                            <div class="ec-user-info">
                                <!--<span>AI Assistant</span>-->
                                <p>Xin chào! Tôi có thể giúp gì cho bạn?</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- Input Box -->
                <div class="ec-footer">
                    <input type="text" id="userInput" placeholder="Nhập tin nhắn..." onkeypress="handleKeyPress(event)" />
                    <button onclick="sendMessage()">Gửi</button>
                </div>
            </div>
            <!--/ End Floating Panel Container -->
            <!-- Start Right Floating Button-->
            <div class="ec-right-bottom">
                <div class="ec-box">
                    <div class="ec-button rotateBackward" onclick="toggleChat()">
                        <img class="chat-icon" src="assets/images/common/chatbot.png" alt="chatbot icon">
                    </div>
                </div>
            </div>
            <!--/ End Right Floating Button-->
        </div>
        <!-- Chatbot end -->

        <script>

            function scrollToBottom() {
                let chatbox = document.getElementById("chatbox");
                chatbox.scrollTop = chatbox.scrollHeight;
            }

            function sendMessage() {
                let userInput = document.getElementById("userInput").value.trim();
                if (userInput === "")
                    return;

                let chatbox = document.getElementById("chatbox");

                // 📤 Hiển thị tin nhắn của người dùng
                let userMessage = document.createElement("li");
                userMessage.classList.add("user-message");

                let userInfo = document.createElement("div");
                userInfo.classList.add("ec-user-info");

                let userText = document.createElement("p");
                userText.innerText = userInput;

                userInfo.appendChild(userText);
                userMessage.appendChild(userInfo);
                chatbox.appendChild(userMessage);

                // Cuộn xuống tin nhắn mới nhất
                scrollToBottom();

                console.log("📤 Gửi câu hỏi:", userInput);

                // 📡 Gửi request đến Servlet
                fetch("/louisvuitton/chatbot", {
                    method: "POST",
                    headers: {"Content-Type": "application/json"},
                    body: JSON.stringify({text: userInput}),
                })
                        .then(response => response.json())
                        .then(data => {
                            console.log("📥 Dữ liệu nhận được:", data);

                            let botReply = "Xin lỗi, tôi không thể trả lời ngay lúc này.";
                            if (data.response) {
                                botReply = data.response.trim();
                            } else if (data.candidates && data.candidates.length > 0) {
                                let content = data.candidates[0].content;
                                if (content.parts && content.parts.length > 0) {
                                    botReply = content.parts[0].text.trim();
                                }
                            }

                            // Hiển thị tin nhắn của bot
                            let botMessage = document.createElement("li");
                            botMessage.classList.add("bot-message");

                            let botInfo = document.createElement("div");
                            botInfo.classList.add("ec-user-info");

                            let botText = document.createElement("p");
                            botText.innerText = botReply;

                            botInfo.appendChild(botText);
                            botMessage.appendChild(botInfo);
                            chatbox.appendChild(botMessage);

                            // Cuộn xuống tin nhắn mới nhất
                            scrollToBottom();

                            console.log("🤖 Câu trả lời của bot:", botReply);
                        })
                        .catch(error => {
                            console.error("❌ Lỗi:", error);
                            let errorMessage = document.createElement("li");
                            errorMessage.classList.add("bot-message");

                            let errorInfo = document.createElement("div");
                            errorInfo.classList.add("ec-user-info");

                            let errorText = document.createElement("p");
                            errorText.innerText = "Lỗi: Không thể kết nối đến server.";

                            errorInfo.appendChild(errorText);
                            errorMessage.appendChild(errorInfo);
                            chatbox.appendChild(errorMessage);

                            // Cuộn xuống tin nhắn mới nhất
                            scrollToBottom();
                        });

                // Xóa input sau khi gửi
                document.getElementById("userInput").value = "";
            }

            function handleKeyPress(event) {
                if (event.key === "Enter") {
                    sendMessage();
                }
            }

            function toggleChat() {
                let chatPanel = document.querySelector(".ec-panel");
                chatPanel.style.display = (chatPanel.style.display === "none" || chatPanel.style.display === "") ? "block" : "none";
            }

        </script>

        <style>
            /* Tổng quan panel */
            .ec-panel {
                max-height: 500px; /* Giữ chiều cao tối đa của panel */
                overflow-y: auto; /* Cho phép cuộn toàn bộ panel nếu cần */
                border-radius: 12px;
                background: #f8f9fa;
                padding: 15px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
                position: relative; /* Đảm bảo các phần tử con định vị chính xác */
            }

            /* Tiêu đề cố định */
            .ec-header {
                /*position: sticky;  Hoặc fixed nếu cần cố định hoàn toàn */
                top: 0;
                background: #f8f9fa; /* Giữ màu nền giống panel */
                z-index: 10; /* Đảm bảo tiêu đề luôn ở trên cùng */
                padding: 15px;
                border-bottom: 1px solid #e9ecef; /* Thêm đường kẻ để phân biệt */
            }

            /* Danh sách tin nhắn */
            #chatbox {
                list-style: none;
                padding: 0;
                margin: 0;
                /* Xóa max-height khỏi #chatbox, để ec-body xử lý cuộn */
                display: flex;
                flex-direction: column; /* Tin nhắn hiển thị từ trên xuống dưới, tin mới ở dưới */
                gap: 10px; /* Khoảng cách giữa các tin nhắn */
            }

            /* Khu vực nội dung tin nhắn (ec-body) */
            .ec-body {
                max-height: 500px; /* Tăng chiều cao để hiển thị nhiều tin nhắn hơn, tùy chỉnh theo nhu cầu */
                overflow-y: auto; /* Cho phép cuộn khi vượt quá chiều cao */
                padding: 10px 0; /* Thêm padding để tin nhắn không sát mép */
                display: flex;
                flex-direction: column; /* Đảm bảo tin nhắn mới ở dưới cùng */
            }

            /* Tin nhắn chung */
            .user-message, .bot-message {
                padding: 10px 14px;
                margin: 5px 0;
                border-radius: 20px;
                max-width: 85%;
                word-wrap: break-word;
                font-size: 14px;
                line-height: 1.4;
                box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
                display: flex;
                flex-direction: column;
                overflow-wrap: break-word;
                word-break: break-word;
            }

            /* Tin nhắn của người dùng */
            .user-message {
                background: #007bff;
                color: white;
                align-self: flex-end;
                margin-left: auto;
                text-align: left;
            }

            /* Tin nhắn của bot */
            .bot-message {
                background: #e9ecef;
                color: black;
                align-self: flex-start;
                margin-right: auto;
                text-align: left;
            }

            /* Hộp chứa thông tin người gửi */
            .ec-user-info {
                font-size: 13px;
                margin-bottom: 5px;
                display: flex;
                align-items: center;
            }

            /* Nội dung tin nhắn */
            .ec-user-info p {
                margin: 0;
                font-size: 14px;
                word-break: break-word;
                white-space: normal;
            }

            /* Cải thiện phần nhập tin nhắn */
            #userInput {
                width: 100%;
                padding: 10px;
                border-radius: 8px;
                border: 1px solid #ced4da;
                font-size: 14px;
                outline: none;
                box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.075);
            }

            #userInput:focus {
                border-color: #80bdff;
                box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
            }

            /* Nút gửi */
            button {
                background: #007bff;
                color: white;
                border: none;
                padding: 8px 14px;
                border-radius: 8px;
                cursor: pointer;
                font-size: 14px;
                transition: background-color 0.2s;
            }

            button:hover {
                background: #0056b3;
            }

            /* Điều chỉnh khoảng cách giữa các tin nhắn */
            #chatbox li {
                margin-bottom: 10px; /* Thêm khoảng cách dưới mỗi tin nhắn */
            }
        </style>
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

    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:31:52 GMT -->
</html>