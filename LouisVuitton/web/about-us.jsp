<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.Users" %>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/about-us.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:32:21 GMT -->
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
        <link rel="icon" href="assets/images/favicon/favicon.png"
              sizes="32x32" />
        <link rel="apple-touch-icon" href="assets/images/favicon/favicon.png" />
        <meta name="msapplication-TileImage"
              content="assets/images/favicon/favicon.png" />

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
        <link rel="stylesheet" href="assets/css/style.css" />
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <!-- Background css -->
        <link rel="stylesheet" id="bg-switcher-css"
              href="assets/css/backgrounds/bg-4.css">
    </head>
    <body class="aboutus_page">
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
                                <!-- facebook, insta,... -->
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
                                               href="register.jsp">Register</a></li>
                                        <li><a class="dropdown-item"
                                               href="checkout.jsp">Checkout</a></li>
                                        <li><a class="dropdown-item"
                                               href="login.jsp">Login</a></li>
                                    </ul>
                                </div>
                                <!-- Header User End -->
                                <!-- Header Cart Start -->
                                <a href="wishlist.jsp"
                                   class="ec-header-btn ec-header-wishlist">
                                    <div class="header-icon"><i
                                            class="fi-rr-heart"></i></div>
                                    <span class="ec-header-count">0</span>
                                </a>
                                <!-- Header Cart End -->
                                <!-- Header Cart Start -->
                                <a href="cart"
                                   class="ec-header-btn">
                                    <div class="header-icon"><i
                                            class="fi-rr-shopping-bag"></i></div>
                                    <span
                                        class="ec-header-count cart-count-lable">${requestScope.numCartItem}</span>
                                </a>
                                <!-- Header Cart End -->
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
                                            <li><a class="dropdown-item" href="register.jsp">Register</a></li>
                                            <li><a class="dropdown-item" href="login.jsp">Login</a></li>
                                                <% } else { %>
                                            <!-- đã đăng nhập -->
                                            <% if (user.getRole() == 1) { %>
                                            <!-- User -->
                                            <li><a class="dropdown-item" href="user-profile.jsp">Edit Profile</a></li>
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
                                        <span class="ec-header-count">0</span>
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
                                <ul>
                                    <li><a href="home">Home</a></li>
                                    <li><a href="shop">Shop</a></li>
                                    <li><a href="trackorder">Track order</a></li>
                                    <li><a href="about-us">About Us</a></li>
                                    <li><a href="contact-us">Contact Us</a></li>
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
                            <li><a href="shop-full-width.jsp">Shop</a></li>
                            <li><a href="track-order.jsp">Track Order</a></li>
                            <li><a href="checkout.jsp">Checkout</a></li>
                            <li><a href="about-us.jsp">About Us</a></li>
                            <li><a href="contact-us.jsp">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="header-res-lan-curr">
                        <!-- Social Start -->
                        <div class="header-res-social">
                            <div class="header-top-social">

                            </div>
                        </div>
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
                                <h2 class="ec-breadcrumb-title">About Us</h2>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <!-- ec-breadcrumb-list start -->
                                <ul class="ec-breadcrumb-list">
                                    <li class="ec-breadcrumb-item"><a
                                            href="home">Home</a></li>
                                    <li class="ec-breadcrumb-item active">About
                                        Us</li>
                                </ul>
                                <!-- ec-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Ec breadcrumb end -->

        <!-- Ec About Us page -->
        <section class="ec-page-content section-space-p">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="section-title">
                            <h1 class="sub-title mb-3">Discover Louis Vuitton</h1>
                        </div>
                    </div>
                    <div class="ec-common-wrapper">
                        <div class="row">
                            <div
                                class="col-md-6 ec-cms-block ec-abcms-block text-center">
                                <div class="ec-cms-block-inner">
                                    <img class="a-img"
                                         src="assets/images/offer-image/1.jpg"
                                         alt="about">
                                </div>
                            </div>
                            <div
                                class="col-md-6 ec-cms-block ec-abcms-block text-center">
                                <div class="ec-cms-block-inner">
                                    <h3 class="ec-cms-block-title">About Louis Vuitton</h3>
                                    <p>More than just a brand, Louis Vuitton embodies the spirit of adventure, continuous creativity, and a commitment to perfection. From the iconic travel trunks crafted by its founder to the high-end fashion collections and luxurious accessories of today, we strive to deliver products that are not only aesthetically pleasing but also timeless in value.</p>
                                    <p>At Louis Vuitton, each product is a culmination of masterful craftsmanship, meticulous attention to detail, and a passion for quality. We take pride in using the finest materials, blending tradition with innovation to create true masterpieces. Moreover, we believe that luxury is not just about the product, but also about the experience it provides. That's why we always aim to exceed customer expectations, from personalized services to unique and memorable events.</p>
                                    <p>Join us in exploring the world of Louis Vuitton, where heritage meets modernity, and where every product tells its own story.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
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

        <!-- Ec Instagram Start -->
        <section class="section ec-instagram-section module section-space-p">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="section-title">
                            <h2 class="ec-bg-title">Instagram Feed</h2>
                            <h2 class="ec-title">Instagram Feed</h2>
                            <p class="sub-title">Share your store with us</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ec-insta-wrapper">
                <div class="ec-insta-outer">
                    <div class="container">
                        <div class="insta-auto">
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <a href="#" target="_blank"><img
                                            src="assets/images/instragram-image/1.jpg"
                                            alt="insta"></a>
                                </div>
                            </div>
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <a href="#" target="_blank"><img
                                            src="assets/images/instragram-image/2.jpg"
                                            alt="insta"></a>
                                </div>
                            </div>
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <a href="#" target="_blank"><img
                                            src="assets/images/instragram-image/3.jpg"
                                            alt="insta"></a>
                                </div>
                            </div>
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <a href="#" target="_blank"><img
                                            src="assets/images/instragram-image/4.jpg"
                                            alt="insta"></a>
                                </div>
                            </div>
                            <!-- instagram item -->
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <a href="#" target="_blank"><img
                                            src="assets/images/instragram-image/5.jpg"
                                            alt="insta"></a>
                                </div>
                            </div>
                            <!-- instagram item -->
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <a href="#" target="_blank"><img
                                            src="assets/images/instragram-image/6.jpg"
                                            alt="insta"></a>
                                </div>
                            </div>
                            <!-- instagram item -->
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <a href="#" target="_blank"><img
                                            src="assets/images/instragram-image/7.jpg"
                                            alt="insta"></a>
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
                                                    href="about-us.jsp">About
                                                    us</a></li>
                                            <li class="ec-footer-link"><a
                                                    href="faq.jsp">FAQ</a></li>
                                            <li class="ec-footer-link"><a
                                                    href="track-order.jsp">Delivery
                                                    Information</a></li>
                                            <li class="ec-footer-link"><a
                                                    href="contact-us.jsp">Contact
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
                                    <div class="ec-copy">Copyright © <span
                                            id="copyright_year"></span><a
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
                        <a href="#ec-side-cart"
                           class="toggle-cart ec-header-btn ec-side-toggle"><i
                                class="fi-rr-shopping-bag"></i><span
                                class="ec-cart-noti ec-header-count cart-count-lable">0</span></a>
                    </div>
                    <div class="ec-nav-panel-icons">
                        <a href="index.jsp" class="ec-header-btn"><i
                                class="fi-rr-home"></i></a>
                    </div>
                    <div class="ec-nav-panel-icons">
                        <a href="wishlist.jsp" class="ec-header-btn"><i
                                class="fi-rr-heart"></i><span
                                class="ec-cart-noti">0</span></a>
                    </div>
                    <div class="ec-nav-panel-icons">
                        <a href="login.jsp" class="ec-header-btn"><i
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
                <h6>stylish baby shoes</h6>
                <p>10 Minutes ago</p>
            </div>
            <a href="javascript:void(0)" class="icon-btn recent-close">x</a>
        </div>
        <!-- Recent Purchase Popup end -->

        <!-- Cart Floating Button -->
        <div class="ec-cart-float">
            <a href="#ec-side-cart" class="ec-header-btn ec-side-toggle">
                <div class="header-icon"><i class="fi-rr-shopping-basket"></i>
                </div>
                <span class="ec-cart-count cart-count-lable">3</span>
            </a>
        </div>
        <!-- Cart Floating Button end -->

        <!-- Whatsapp -->
        <div class="ec-style ec-right-bottom">
            <!-- Start Floating Panel Container -->
            <div class="ec-panel">
                <!-- Panel Header -->
                <div class="ec-header">
                    <strong>Need Help?</strong>
                    <p>Chat with us on WhatsApp</p>
                </div>
                <!-- Panel Content -->
                <div class="ec-body">
                    <ul>
                        <!-- Start Single Contact List -->
                        <li>
                            <a class="ec-list" data-number="918866774266"
                               data-message="Please help me! I have got wrong product - ORDER ID is : #654321485">
                                <div class="d-flex bd-highlight">
                                    <!-- Profile Picture -->
                                    <div class="ec-img-cont">
                                        <img
                                            src="assets/images/whatsapp/profile_01.jpg"
                                            class="ec-user-img"
                                            alt="Profile image">
                                        <span class="ec-status-icon"></span>
                                    </div>
                                    <!-- Display Name & Last Seen -->
                                    <div class="ec-user-info">
                                        <span>Sahar Darya</span>
                                        <p>Sahar left 7 mins ago</p>
                                    </div>
                                    <!-- Chat iCon -->
                                    <div class="ec-chat-icon">
                                        <i class="fa fa-whatsapp"></i>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!--/ End Single Contact List -->
                        <!-- Start Single Contact List -->
                        <li>
                            <a class="ec-list" data-number="918866774266"
                               data-message="Please help me! I have got wrong product - ORDER ID is : #654321485">
                                <div class="d-flex bd-highlight">
                                    <!-- Profile Picture -->
                                    <div class="ec-img-cont">
                                        <img
                                            src="assets/images/whatsapp/profile_02.jpg"
                                            class="ec-user-img"
                                            alt="Profile image">
                                        <span
                                            class="ec-status-icon ec-online"></span>
                                    </div>
                                    <!-- Display Name & Last Seen -->
                                    <div class="ec-user-info">
                                        <span>Yolduz Rafi</span>
                                        <p>Yolduz is online</p>
                                    </div>
                                    <!-- Chat iCon -->
                                    <div class="ec-chat-icon">
                                        <i class="fa fa-whatsapp"></i>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!--/ End Single Contact List -->
                        <!-- Start Single Contact List -->
                        <li>
                            <a class="ec-list" data-number="918866774266"
                               data-message="Please help me! I have got wrong product - ORDER ID is : #654321485">
                                <div class="d-flex bd-highlight">
                                    <!-- Profile Picture -->
                                    <div class="ec-img-cont">
                                        <img
                                            src="assets/images/whatsapp/profile_03.jpg"
                                            class="ec-user-img"
                                            alt="Profile image">
                                        <span
                                            class="ec-status-icon ec-offline"></span>
                                    </div>
                                    <!-- Display Name & Last Seen -->
                                    <div class="ec-user-info">
                                        <span>Nargis Hawa</span>
                                        <p>Nargis left 30 mins ago</p>
                                    </div>
                                    <!-- Chat iCon -->
                                    <div class="ec-chat-icon">
                                        <i class="fa fa-whatsapp"></i>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!--/ End Single Contact List -->
                        <!-- Start Single Contact List -->
                        <li>
                            <a class="ec-list" data-number="918866774266"
                               data-message="Please help me! I have got wrong product - ORDER ID is : #654321485">
                                <div class="d-flex bd-highlight">
                                    <!-- Profile Picture -->
                                    <div class="ec-img-cont">
                                        <img
                                            src="assets/images/whatsapp/profile_04.jpg"
                                            class="ec-user-img"
                                            alt="Profile image">
                                        <span
                                            class="ec-status-icon ec-offline"></span>
                                    </div>
                                    <!-- Display Name & Last Seen -->
                                    <div class="ec-user-info">
                                        <span>Khadija Mehr</span>
                                        <p>Khadija left 50 mins ago</p>
                                    </div>
                                    <!-- Chat iCon -->
                                    <div class="ec-chat-icon">
                                        <i class="fa fa-whatsapp"></i>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!--/ End Single Contact List -->
                    </ul>
                </div>
            </div>
            <!--/ End Floating Panel Container -->
            <!-- Start Right Floating Button-->
            <div class="ec-right-bottom">
                <div class="ec-box">
                    <div class="ec-button rotateBackward">
                        <img class="whatsapp"
                             src="assets/images/common/whatsapp.png"
                             alt="whatsapp icon" />
                    </div>
                </div>
            </div>
            <!--/ End Right Floating Button-->
        </div>
        <!-- Whatsapp end -->

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

        <!-- Main Js -->
        <script src="assets/js/vendor/index.js"></script>
        <script src="assets/js/main.js"></script>

    </body>

    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/about-us.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:32:21 GMT -->
</html>