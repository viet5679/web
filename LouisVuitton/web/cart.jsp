<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="model.Users" %>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/cart.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:32:21 GMT -->
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

    <body class="cart_page">
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
                        <div class="col text-left header-top-left d-none d-lg-block">
                            <div class="header-top-social">
                                <span class="social-text text-upper">Follow us on:</span>

                            </div>
                        </div>
                        <!-- Header Top social End -->

                        <!-- Header Top responsive Action -->
                        <div class="col d-lg-none ">
                            <div class="ec-header-bottons">

                                <!-- Header Cart Start -->
                                <a href="#ec-side-cart" class="ec-header-btn ec-side-toggle">
                                    <div class="header-icon"><i class="fi-rr-shopping-bag"></i></div>
                                    <span class="ec-header-count cart-count-lable">0</span>
                                </a>
                                <!-- Header Cart End -->
                                <a href="javascript:void(0)" class="ec-header-btn ec-sidebar-toggle">
                                    <i class="fi fi-rr-apps"></i>
                                </a>
                                <!-- Header menu Start -->
                                <a href="#ec-mobile-menu" class="ec-header-btn ec-side-toggle d-lg-none">
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
            <jsp:include page="bottom.jsp"/>
            <!-- Header responsive Bottom  Start -->
            <div class="ec-header-bottom d-lg-none">
                <div class="container position-relative">
                    <div class="row ">

                        <!-- Ec Header Logo Start -->
                        <div class="col">
                            <div class="header-logo">
                                <a href="home"><img src="assets/images/logo/logo4.png" alt="Site Logo" /><img
                                        class="dark-logo" src="assets/images/logo/logo4.png" alt="Site Logo"
                                        style="display: none;" /></a>
                            </div>
                        </div>
                        <!-- Ec Header Logo End -->
                        <!-- Ec Header Search Start -->
                        <div class="col">
                            <div class="header-search">
                                <form class="ec-btn-group-form" action="#">
                                    <input class="form-control ec-search-bar" placeholder="Search products..." type="text">
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
            <jsp:include page="main-menu.jsp"/>
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
                            <li><a href="shop-full-width.jsp">Categories</a></li>
                            <li><a href="product-full-width.jsp">Product</a></li>

                            <li class="dropdown"><a href="javascript:void(0)">Pages</a>
                                <ul class="sub-menu">

                                    <li><a href="cart.jsp">Cart</a></li>
                                    <li><a href="checkout">Checkout</a></li>                                
                                    <li><a href="faq.jsp">FAQ</a></li>
                                    <li><a href="track-order.jsp">Track Order</a></li>
                                    <li><a href="terms-condition.jsp">Terms Condition</a></li>
                                    <li><a href="privacy-policy.jsp">Privacy Policy</a></li>
                                </ul>
                            </li>
                            <li><a href="blog-full-width.jsp">Blog</a></li>

                            <li><a href="offer.jsp">Hot Offers</a></li>
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
                                <h2 class="ec-breadcrumb-title">Cart</h2>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <!-- ec-breadcrumb-list start -->
                                <ul class="ec-breadcrumb-list">
                                    <li class="ec-breadcrumb-item"><a href="home">Home</a></li>
                                    <li class="ec-breadcrumb-item active">Cart</li>
                                </ul>
                                <!-- ec-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Ec breadcrumb end -->

        <!-- Ec cart page -->
        <section class="ec-page-content section-space-p">
            <div class="container">
                <div class="row">
                    <div class="ec-cart-leftside col-lg-8 col-md-12 ">
                        <!-- cart content Start -->
                        <div class="ec-cart-content">
                            <div class="ec-cart-inner">
                                <div class="row">
                                    <form action="#">
                                        <div class="table-content cart-table-content">
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <th>Product</th>
                                                        <th>Price</th>
                                                        <th style="text-align: center;">Quantity</th>
                                                        <th>Total</th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:set var="o" value="${requestScope.cart}"/>
                                                    <c:forEach items="${o.items}" var="i">
                                                        <tr>
                                                            <td data-label="Product" class="ec-cart-pro-name"><a
                                                                    href="product-left-sidebar.jsp"><img
                                                                        class="ec-cart-pro-img mr-4"
                                                                        src="${i.product.avatar}" alt="" />${i.product.name}</a></td>
                                                            <td data-label="Price" class="ec-cart-pro-price"><span
                                                                    class="amount">${i.product.totalPay}</span></td>
                                                            <td data-label="Quantity" class="ec-cart-pro-qty"
                                                                style="text-align: center;">
                                                                <div class="cart-qty-plus-minus">
                                                                    <input class="cart-plus-minus" type="text"
                                                                           name="cartqtybutton" value="${i.quantity}" />
                                                                </div>
                                                            </td>
                                                            <td data-label="Total" class="ec-cart-pro-subtotal">${(i.price*i.quantity)}</td>
                                                            <td data-label="Remove" class="ec-cart-pro-remove" onclick="removeProduct(${i.product.id})">
                                                                <a href="process"><i class="ecicon eci-trash-o"></i></a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="ec-cart-update-bottom">
                                                    <a href="shop">Continue Shopping</a>
                                                    <button class="btn btn-primary" href = 'checkout.jsp'>Check Out</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!--cart content End -->
                        <script>
                            function removeProduct(productId) {
                                $.ajax({
                                    type: "POST",
                                    url: "cart",
                                    data: {
                                        productId: productId
                                    }
//                                    ,
//                                    success: function () {
//                                        window.location.reload(); // Tải lại trang sau khi thêm vào giỏ hàng
//                                    }
                                });
                            }

                        </script>

                    </div>
                    <!-- Sidebar Area Start -->
                    <div class="ec-cart-rightside col-lg-4 col-md-12">
                        <div class="ec-sidebar-wrap">
                            <!-- Sidebar Summary Block -->
                            <div class="ec-sidebar-block">
                                <div class="ec-sb-title">
                                    <h3 class="ec-sidebar-title">Summary</h3>
                                </div>
                                <div class="ec-sb-block-content">
                                    <h4 class="ec-ship-title">Estimate Shipping</h4>
                                    <div class="ec-cart-form">
                                        <p>Enter your destination to get a shipping estimate</p>
                                        <form action="#" method="post">
                                            <span class="ec-cart-wrap">
                                                <label>Country *</label>
                                                <span class="ec-cart-select-inner">
                                                    <select name="ec_cart_country" id="ec-cart-select-country"
                                                            class="ec-cart-select">
                                                        <option selected="" disabled="">United States</option>
                                                        <option value="1">Country 1</option>
                                                        <option value="2">Country 2</option>
                                                        <option value="3">Country 3</option>
                                                        <option value="4">Country 4</option>
                                                        <option value="5">Country 5</option>
                                                    </select>
                                                </span>
                                            </span>
                                            <span class="ec-cart-wrap">
                                                <label>State/Province</label>
                                                <span class="ec-cart-select-inner">
                                                    <select name="ec_cart_state" id="ec-cart-select-state"
                                                            class="ec-cart-select">
                                                        <option selected="" disabled="">Please Select a region, state
                                                        </option>
                                                        <option value="1">Region/State 1</option>
                                                        <option value="2">Region/State 2</option>
                                                        <option value="3">Region/State 3</option>
                                                        <option value="4">Region/State 4</option>
                                                        <option value="5">Region/State 5</option>
                                                    </select>
                                                </span>
                                            </span>
                                            <span class="ec-cart-wrap">
                                                <label>Zip/Postal Code</label>
                                                <input type="text" name="postalcode" placeholder="Zip/Postal Code">
                                            </span>
                                        </form>
                                    </div>
                                </div>

                                <div class="ec-sb-block-content">
                                    <div class="ec-cart-summary-bottom">
                                        <div class="ec-cart-summary">
                                            <div>
                                                <span class="text-left">Delivery Charges</span>
                                                <span class="text-right">$10.00</span>
                                            </div>
                                            <div class="ec-cart-summary-total">
                                                <span class="text-left">Total Amount</span>
                                                <span class="text-right">$${o.totalMoney}</span>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- Sidebar Summary Block -->
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                // Select all remove buttons (trash icons)
                const removeButtons = document.querySelectorAll('.ec-cart-pro-remove a');

                // Loop through each button and add a click event listener
                removeButtons.forEach(function (button) {
                    button.addEventListener('click', function (event) {
                        event.preventDefault(); // Prevent the default action (if any)
                        const row = button.closest('tr'); // Find the parent row of the button
                        row.remove(); // Remove the row from the table
                    });
                });
            });
        </script>

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
                                <div class="col-sm-12 col-lg-3 ec-footer-contact">
                                    <div class="ec-footer-widget">
                                        <div class="ec-footer-logo"><a href="#"><img src="assets/images/logo/logo4.png"
                                                                                     alt=""><img class="dark-footer-logo" src="assets/images/logo/logo4.png"
                                                                                     alt="Site Logo" style="display: none;" /></a></div>
                                        <h4 class="ec-footer-heading">Contact us</h4>
                                        <div class="ec-footer-links">
                                            <ul class="align-items-center">
                                                <li class="ec-footer-link">Hoa Lac Hi-tech Park, km 29, Đại lộ Thăng Long, Hà Nội, Vietnam</li>
                                                <li class="ec-footer-link"><span>Call Us:</span><a href="tel:+440123456789">0967870138</a></li>
                                                <li class="ec-footer-link"><span>Email:</span><a
                                                        href="mailto:example@ec-email.com">vietpthe180666@fpt.edu.vn</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-12 col-lg-2 ec-footer-info">
                                <div class="ec-footer-widget">
                                    <h4 class="ec-footer-heading">Information</h4>
                                    <div class="ec-footer-links">
                                        <ul class="align-items-center">
                                            <li class="ec-footer-link"><a href="about-us">About us</a></li>
                                            <li class="ec-footer-link"><a href="faq.jsp">FAQ</a></li>
                                            <li class="ec-footer-link"><a href="track-order.jsp">Delivery Information</a></li>
                                            <li class="ec-footer-link"><a href="contact-us">Contact us</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-12 col-lg-2 ec-footer-service">
                                <div class="ec-footer-widget">
                                    <h4 class="ec-footer-heading">Services</h4>
                                    <div class="ec-footer-links">
                                        <ul class="align-items-center">


                                            <li class="ec-footer-link"><a href="privacy-policy.jsp">Private & policy </a>
                                            </li>
                                            <li class="ec-footer-link"><a href="customer-service.jsp">Customer Service</a>
                                            </li>
                                            <li class="ec-footer-link"><a href="terms-condition.jsp">Term & condition</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 col-lg-3 ec-footer-news">
                                <div class="ec-footer-widget">
                                    <h4 class="ec-footer-heading">Newsletter</h4>
                                    <div class="ec-footer-links">
                                        <ul class="align-items-center">
                                            <li class="ec-footer-link">Get instant updates about our new products and
                                                special promos!</li>
                                        </ul>
                                        <div class="ec-subscribe-form">
                                            <form id="ec-newsletter-form" name="ec-newsletter-form" method="post"
                                                  action="#">
                                                <div id="ec_news_signup" class="ec-form">
                                                    <input class="ec-email" type="email" required=""
                                                           placeholder="Enter your email here..." name="ec-email" value="" />
                                                    <button id="ec-news-btn" class="button btn-primary" type="submit"
                                                            name="subscribe" value=""><i class="ecicon eci-paper-plane-o"
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
                                    <span class="social-text text-upper">Follow us on:</span>

                                </div>
                            </div>
                            <!-- Footer social End -->
                            <!-- Footer Copyright Start -->
                            <div class="col text-center footer-copy">
                                <div class="footer-bottom-copy ">
                                    <div class="ec-copy">Copyright ©<span id="copyright_year"></span> <a class="site-name text-upper"
                                                                                                         href="#">NYFS<span>.</span></a>. All Rights Reserved</div>
                                </div>
                            </div>
                            <!-- Footer Copyright End -->
                            <!-- Footer payment -->
                            <div class="col footer-bottom-right">
                                <div class="footer-bottom-payment d-flex justify-content-end">
                                    <div class="payment-link">
                                        <img src="assets/images/icons/payment.png" alt="">
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

        <!-- Footer navigation panel for responsive display -->
        <div class="ec-nav-toolbar">
            <div class="container">
                <div class="ec-nav-panel">
                    <div class="ec-nav-panel-icons">
                        <a href="#ec-mobile-menu" class="navbar-toggler-btn ec-header-btn ec-side-toggle"><i
                                class="fi-rr-menu-burger"></i></a>
                    </div>
                    <div class="ec-nav-panel-icons">
                        <a href="#ec-side-cart" class="toggle-cart ec-header-btn ec-side-toggle"><i
                                class="fi-rr-shopping-bag"></i><span
                                class="ec-cart-noti ec-header-count cart-count-lable">0</span></a>
                    </div>
                    <div class="ec-nav-panel-icons">
                        <a href="home" class="ec-header-btn"><i class="fi-rr-home"></i></a>
                    </div>
                    <div class="ec-nav-panel-icons">
                        <a href="wishlist.jsp" class="ec-header-btn"><i class="fi-rr-heart"></i><span
                                class="ec-cart-noti">0</span></a>
                    </div>
                    <div class="ec-nav-panel-icons">
                        <a href="login" class="ec-header-btn"><i class="fi-rr-user"></i></a>
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
                                        <img src="assets/images/whatsapp/profile_01.jpg" class="ec-user-img"
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
                                        <img src="assets/images/whatsapp/profile_02.jpg" class="ec-user-img"
                                             alt="Profile image">
                                        <span class="ec-status-icon ec-online"></span>
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
                                        <img src="assets/images/whatsapp/profile_03.jpg" class="ec-user-img"
                                             alt="Profile image">
                                        <span class="ec-status-icon ec-offline"></span>
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
                                        <img src="assets/images/whatsapp/profile_04.jpg" class="ec-user-img"
                                             alt="Profile image">
                                        <span class="ec-status-icon ec-offline"></span>
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
                        <img class="whatsapp" src="assets/images/common/whatsapp.png" alt="whatsapp icon" />
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
        <button id="checkoutBtn" class="btn btn-primary">Check Out</button>
        <script>
            document.getElementById("checkoutBtn").addEventListener("click", function () {
                window.location.href = 'checkout.jsp';
            });
        </script>


    </body>


    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/cart.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:32:21 GMT -->
</html>