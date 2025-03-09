<!--========================================================= 
    Item Name: Louis Vuitton
    Author: ashishmaraviya
    Version: 3.7
    Copyright 2024
        Author URI: https://themeforest.net/user/ashishmaraviya
 ============================================================-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="model.Users" %>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:30:52 GMT -->
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
        <link rel="stylesheet" href="assets/css/plugins/nouislider.css" />

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
            </div>
        </div>
        <!-- Header start  -->
        <jsp:include page="navbar.jsp"></jsp:include>
            <!-- Header End  -->

            <!-- ekka Cart Start -->
            <div class="ec-side-cart-overlay"></div>
            <div id="ec-side-cart" class="ec-side-cart">
                <div class="ec-cart-inner">
                    <div class="ec-cart-top">
                        <div class="ec-cart-title">
                            <span class="cart_title">My Cart</span>
                            <button class="ec-close"
                                    onclick="closeCart()">&times;</button>
                        </div>
                        <ul class="eccart-pro-items" id="cart-items">
                            <!-- Items will be dynamically added here -->
                        </ul>
                    </div>
                    <div class="ec-cart-bottom">
                        <div class="cart-sub-total">
                            <table class="table cart-table">
                                <tbody>
                                    <tr>
                                        <td class="text-left">Sub-Total :</td>
                                        <td class="text-right"
                                            id="sub-total">$0.00</td>
                                    </tr>
                                    <tr>
                                        <td class="text-left">VAT (20%) :</td>
                                        <td class="text-right" id="vat">$0.00</td>
                                    </tr>
                                    <tr>
                                        <td class="text-left">Total :</td>
                                        <td class="text-right primary-color"
                                            id="total">$0.00</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="cart_btn">
                            <a href="cart.jsp" class="btn btn-primary">View Cart</a>
                            <a href="checkout.jsp"
                               class="btn btn-secondary">Checkout</a>
                        </div>
                    </div>
                </div>
            </div>

            <script>
                const cartItems = document.getElementById('cart-items');
                const subTotalEl = document.getElementById('sub-total');
                const vatEl = document.getElementById('vat');
                const totalEl = document.getElementById('total');

                let cart = []; // Array to store cart items

                function addToCart(productName, price) {
                    // Check if the product already exists in the cart
                    const existingItem = cart.find(item => item.productName === productName);

                    if (existingItem) {
                        // If product exists, increase quantity
                        existingItem.quantity += 1;
                    } else {
                        // Add new product
                        cart.push({productName, price, quantity: 1});
                    }

                    // Update the UI and totals
                    updateCartUI();
                    updateTotals();
                }

                function removeFromCart(productName) {
                    // Remove product from cart
                    cart = cart.filter(item => item.productName !== productName);

                    // Update the UI and totals
                    updateCartUI();
                    updateTotals();
                }

                function updateQuantity(productName, newQuantity) {
                    const item = cart.find(item => item.productName === productName);
                    if (item) {
                        item.quantity = newQuantity > 0 ? parseInt(newQuantity) : 1; // Ensure quantity is at least 1
                    }

                    updateCartUI();
                    updateTotals();
                }

                function updateCartUI() {
                    cartItems.innerHTML = ""; // Clear existing items

                    cart.forEach(item => {
                        const listItem = document.createElement('li');
                        listItem.innerHTML = `
                            <div>
               <span>${item.productName}</span> - 
               <span>${'$'}${item.price}</span> x
               <input type="number" value="${item.quantity}" min="1" style="width: 50px;" 
                   onchange="updateQuantity('${item.productName}', this.value)">
               = <span>${'$'}${item.price * item.quantity}</span>
           </div>
           <button onclick="removeFromCart('${item.productName}')">Remove</button>
                        `;
                        cartItems.appendChild(listItem);
                    });
                }

                function updateTotals() {
                    const subTotal = cart.reduce((sum, item) => sum + (item.price * item.quantity), 0);
                    const vat = subTotal * 0.2; // 20% VAT
                    const total = subTotal + vat;

                    // Update the DOM
                    subTotalEl.textContent = `$${subTotal.toFixed(2)}`;
                    vatEl.textContent = `$${vat.toFixed(2)}`;
                    totalEl.textContent = `$${total.toFixed(2)}`;
                }

                function closeCart() {
                    document.getElementById('ec-side-cart').classList.remove('open'); // Hide cart
                }

                // Example usage: Uncomment these lines to test adding products
                // addToCart('Cute Baby Toy', 30.00);
                // addToCart('Teddy Bear', 25.50);
        </script>
        <!-- ekka Cart End -->

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

        <!-- Ec breadcrumb start -->
        <div class="sticky-header-next-sec  ec-breadcrumb section-space-mb">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="row ec_breadcrumb_inner">
                            <div class="col-md-6 col-sm-12">
                                <h2 class="ec-breadcrumb-title">Shop</h2>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <!-- ec-breadcrumb-list start -->
                                <ul class="ec-breadcrumb-list">
                                    <li class="ec-breadcrumb-item"><a
                                            href="index.jsp">Home</a></li>
                                    <li
                                        class="ec-breadcrumb-item active">Shop</li>
                                </ul>
                                <!-- ec-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Ec breadcrumb end -->

        <!-- Ec Shop page -->
        <section class="ec-page-content section-space-p">
            <div class="container">
                <div class="row">
                    <div
                        class="ec-shop-rightside col-lg-9 order-lg-last col-md-12 order-md-first margin-b-30">
                        <!-- Shop Top Start -->
                        <div class="ec-pro-list-top d-flex">
                            <div class="col-md-6 ec-grid-list">
                                <div class="ec-gl-btn">
                                    <button class="btn btn-grid active"><i
                                            class="fi-rr-apps"></i></button>
                                    <button class="btn btn-list"><i
                                            class="fi-rr-list"></i></button>
                                </div>
                            </div>
                            <div class="col-md-6 ec-sort-select">
                                <span class="sort-by">Sort by</span>
                                <div class="ec-select-inner">
                                    <form method="get">
                                        <select name="sort_by" id="ec-select" onchange="this.form.submit()">
                                            <<option selected disabled>Position</option>
                                            <option value="1" ${sort_by == '1' ? 'selected' : ''}>Name, A to Z</option>
                                            <option value="2" ${sort_by == '2' ? 'selected' : ''}>Name, Z to A</option>
                                            <option value="3" ${sort_by == '3' ? 'selected' : ''}>Price, low to high</option>
                                            <option value="4" ${sort_by == '4' ? 'selected' : ''}>Price, high to low</option>
                                        </select>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- Shop Top End -->

                        <!-- Shop content Start -->
                        <div class="shop-pro-content">
                            <div class="shop-pro-inner">
                                <div class="row">
                                    <c:forEach var="c" items="${requestScope.list}">
                                        <div
                                            class="col-lg-4 col-md-6 col-sm-6 col-xs-6 mb-6 pro-gl-content" >
                                            <input type="hidden" name="productId" value="${c.id}">

                                            <div class="ec-product-inner">
                                                <div class="ec-pro-image-outer">
                                                    <div class="ec-pro-image">
                                                        <a
                                                            href="product-left-sidebar.jsp"
                                                            class="image">
                                                            <img class="main-image"
                                                                 src="${c.avatar}"
                                                                 alt="Product" />
                                                            <img class="hover-image"
                                                                 src="${c.hoverAvatar}"
                                                                 alt="Product" />
                                                        </a>
                                                        <c:if test="${c.tag == 'NEW'}">
                                                            <span class="flags">
                                                                <span
                                                                    class="new">New</span>
                                                            </span>
                                                        </c:if>
                                                        <c:if test="${c.tag == 'SALE'}">
                                                            <span class="flags"> 
                                                                <span class="sale">Sale</span> 
                                                            </span>
                                                        </c:if>
                                                        <c:if test="${c.tag != 'SALE' && c.tag != 'NEW' && c.tag != NULL}">
                                                            <span class="percentage">${c.tag}</span>
                                                        </c:if>

                                                        <a href="#"
                                                           class="quickview"
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
                                                            <button
                                                                title="Add To Cart"
                                                                class="add-to-cart"><i
                                                                    class="fi-rr-shopping-basket"></i>
                                                                Add To Cart</button>
                                                            <a
                                                                class="ec-btn-group wishlist"
                                                                title="Wishlist"><i
                                                                    class="fi-rr-heart"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="ec-pro-content">
                                                    <h5 class="ec-pro-title"><a
                                                            href="product-full-width.jsp">${c.name}</a></h5>
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
                                                    <div
                                                        class="ec-pro-list-desc">${c.description}</div>

                                                    <c:if test="${c.sale == 0}">
                                                        <span class="ec-price">
                                                            <span
                                                                class="new-price">$${c.totalPay}</span>
                                                        </span>
                                                        <c:if test="${c.categoryId.id == 3 || c.categoryId.id == 5 || c.categoryId.id == 6 || c.categoryId.id == 7 || c.categoryId.id == 8}">
                                                            <div class="ec-pro-option">

                                                                <div class="ec-pro-size">
                                                                    <span
                                                                        class="ec-pro-opt-label">Size</span>
                                                                    <ul class="ec-opt-size">
                                                                        <c:forEach var="si" items="${requestScope.data}">
                                                                            <p>Product ID: ${si.products.id}, Size: ${si.sizes.name}</p>
                                                                            <c:if test="${si.products.id == c}">

                                                                                <li
                                                                                    class="active"><a
                                                                                        href="#"
                                                                                        class="ec-opt-sz"
                                                                                        data-new="$${c.totalPay}"
                                                                                        data-tooltip="${si.sizes.name}">${si.sizes.name}</a>
                                                                                </li>
                                                                            </c:if>
                                                                        </c:forEach>

                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </c:if>

                                                    </c:if>
                                                    <c:if test="${c.sale != 0}">
                                                        <span class="ec-price">
                                                            <span
                                                                class="old-price">$${c.price}</span>
                                                            <span
                                                                class="new-price">$${c.totalPay}</span>
                                                        </span>
                                                        <c:if test="${c.categoryId.id == 3}  or ${c.categoryId.id == 5}  or ${c.categoryId.id == 6} or ${c.categoryId.id == 7} or ${c.categoryId.id == 8}">
                                                            <div class="ec-pro-option">

                                                                <div class="ec-pro-size">
                                                                    <span
                                                                        class="ec-pro-opt-label">Size</span>
                                                                    <ul class="ec-opt-size">
                                                                        <c:forEach var="si" items="${requestScope.data}">
                                                                            <c:if test="${si.products.id == c}">
                                                                                <li
                                                                                    class="active"><a
                                                                                        href="#"
                                                                                        class="ec-opt-sz"
                                                                                        data-old="$${c.price}"
                                                                                        data-new="$${c.totalPay}"
                                                                                        data-tooltip="${si.sizes.name}">${si.sizes.name}</a>
                                                                                </li>
                                                                            </c:if>
                                                                        </c:forEach>

                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </c:if>

                                                    </c:if>

                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <!-- Ec Pagination Start -->
                            <div class="ec-pro-pagination">
                                <span></span>
                                <ul class="ec-pro-pagination-inner">
                                    <c:forEach var="p" begin="1" end="${endP}">
                                        <li>
                                        <li>
                                            <a class="${(currentIndex == p) ? 'active' : ''} pagination-link"  data-page="${p}" 
                                               onclick="updatePage(event, ${p})">${p}</a>
                                        </li>
                                        </li>

                                    </c:forEach>
                                    <c:if test="${endP > 5 }">
                                        <li><a class="next" href="#">Next 
                                                <i
                                                    class="ecicon eci-angle-right">

                                                </i>
                                            </a>
                                        </li>
                                    </c:if>
                                </ul>
                            </div>
                            <!-- Ec Pagination End -->
                        </div>
                        <!--Shop content End -->
                    </div>
                    <!-- Sidebar Area Start -->
                    <div
                        class="ec-shop-leftside col-lg-3 order-lg-first col-md-12 order-md-last">
                        <div id="shop_sidebar">
                            <div class="ec-sidebar-heading">
                                <h1>Filter Products By</h1>
                            </div>
                            <div class="ec-sidebar-wrap">
                                <!-- Sidebar Category Block -->
                                <div class="ec-sidebar-block">
                                    <div class="ec-sb-title">
                                        <h3 class="ec-sidebar-title">Gender</h3>
                                    </div>
                                    <div class="ec-sb-block-content">
                                        <ul>
                                            <c:forEach var="c" items="${requestScope.listg}">
                                                <li>
                                                    <div
                                                        class="ec-sidebar-block-item">
                                                        <input type="checkbox" name="gid" value="${c.id}" ${selectedGid.contains(c.id) ? "checked" : ""}/> <a
                                                            href="productall" onclick="">${c.name}</a><span
                                                            class="checked"></span>
                                                    </div>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>

                                    <div class="ec-sb-title">
                                        <h3
                                            class="ec-sidebar-title">Category</h3>
                                    </div>
                                    <div class="ec-sb-block-content">
                                        <ul>
                                            <c:forEach var="h" items="${requestScope.litsc}">
                                                <li>
                                                    <div
                                                        class="ec-sidebar-block-item">
                                                        <input type="checkbox" name="cid" value="${h.id}" ${selectedCid.contains(h.id) ? "checked" : ""}/> <a
                                                            href="#">${h.name}</a><span
                                                            class="checked"></span>
                                                    </div>
                                                </li>
                                            </c:forEach>

                                        </ul>
                                    </div>
                                </div>
                                <!-- Sidebar Size Block -->
                                <div class="ec-sidebar-block">
                                    <div class="ec-sb-title">
                                        <h3 class="ec-sidebar-title">Size</h3>
                                    </div>
                                    <div class="ec-sb-block-content">
                                        <ul>
                                            <c:forEach var="s" items="${requestScope.lists}">
                                                <li>
                                                    <div
                                                        class="ec-sidebar-block-item">
                                                        <input type="checkbox" name="sid"
                                                               value="${s.id}" ${selectedSid.contains(s.id) ? "checked" : ""}/><a
                                                               href="#">${s.name}</a><span
                                                               class="checked"></span>
                                                    </div>
                                                </li>
                                            </c:forEach>

                                        </ul>
                                    </div>
                                </div>

                                <!-- Sidebar Price Block -->
                                <div class="ec-sidebar-block">
                                    <div class="ec-sb-title">
                                        <h3 class="ec-sidebar-title">Price</h3>
                                    </div>


                                    <div
                                        class="ec-sb-block-content es-price-slider">
                                        <div class="ec-price-filter">
                                            <div id="ec-sliderPrice"
                                                 class="filter__slider-price"
                                                 data-min="0"
                                                 data-max="500"
                                                 data-step="10"></div>
                                            <div class="ec-price-input">
                                                <label
                                                    class="filter__label"><input
                                                        type="text"
                                                        class="filter__input" name="price_low" id="price_low"></label>
                                                <span
                                                    class="ec-price-divider"></span>
                                                <label
                                                    class="filter__label"><input
                                                        type="text"
                                                        class="filter__input" name="price_high" id="price_high"></label>
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
        <!-- End Shop page -->

        <!-- Footer Start -->
        <footer class="ec-footer section-space-mt">
            <div class="footer-container">
                <div class="footer-offer">

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
                                                    href="#">Delivery
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
                                            leather purse for women</a>
                                    </h5>
                                    <div class="ec-quickview-rating">
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star"></i>
                                    </div>

                                    <div class="ec-quickview-desc">Lorem Ipsum
                                        is simply dummy text of the printing and
                                        typesetting industry. Lorem Ipsum has
                                        been the industry's standard dummy text
                                        ever
                                        since the 1500s,</div>
                                    <div class="ec-quickview-price">
                                        <span class="old-price">$100.00</span>
                                        <span class="new-price">$80.00</span>
                                    </div>

                                    <div class="ec-pro-variation">
                                        <div
                                            class="ec-pro-variation-inner ec-pro-variation-color">
                                            <span>Color</span>
                                            <div class="ec-pro-color">
                                                <ul class="ec-opt-swatch">
                                                    <li><span
                                                            style="background-color:#696d62;"></span></li>
                                                    <li><span
                                                            style="background-color:#d73808;"></span></li>
                                                    <li><span
                                                            style="background-color:#577023;"></span></li>
                                                    <li><span
                                                            style="background-color:#2ea1cd;"></span></li>
                                                </ul>
                                            </div>
                                        </div>
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
                                class="ec-cart-noti ec-header-count cart-count-lable">3</span></a>
                    </div>
                    <div class="ec-nav-panel-icons">
                        <a href="home" class="ec-header-btn"><i
                                class="fi-rr-home"></i></a>
                    </div>
                    <div class="ec-nav-panel-icons">
                        <a href="wishlist" class="ec-header-btn"><i
                                class="fi-rr-heart"></i><span
                                class="ec-cart-noti">4</span></a>
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
            <a href="wishlist" class="ec-header-btn ec-wishlist-toggle">
                <div class="header-icon">
                    <i class="fi-rr-heart"></i>
                </div>
                <span class="ec-cart-count wishlist-count-label">0</span>
            </a>
        </div>

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

        <!-- Feature tools -->
        <div class="ec-tools-sidebar-overlay"></div>
        <div class="ec-tools-sidebar">
            <div class="tool-title">
                <h3>Features</h3>
            </div>
            <a href="#" class="ec-tools-sidebar-toggle in-out">
                <img alt="icon" src="assets/images/common/settings.png" />
            </a>
            <div class="ec-tools-detail">
                <div
                    class="ec-tools-sidebar-content ec-change-color ec-color-desc">
                    <h3>Color Scheme</h3>
                    <ul class="bg-panel">
                        <li class="active" data-color="01"><a href="#"
                                                              class="colorcode1"></a></li>
                        <li data-color="02"><a href="#"
                                               class="colorcode2"></a></li>
                        <li data-color="03"><a href="#"
                                               class="colorcode3"></a></li>
                        <li data-color="04"><a href="#"
                                               class="colorcode4"></a></li>
                        <li data-color="05"><a href="#"
                                               class="colorcode5"></a></li>
                    </ul>
                </div>
                <div class="ec-tools-sidebar-content">
                    <h3>Backgrounds</h3>
                    <ul class="bg-panel">
                        <li class="bg"><a class="back-bg-1"
                                          id="bg-1">Background-1</a></li>
                        <li class="bg"><a class="back-bg-2"
                                          id="bg-2">Background-2</a></li>
                        <li class="bg"><a class="back-bg-3"
                                          id="bg-3">Background-3</a></li>
                        <li class="bg"><a class="back-bg-4"
                                          id="bg-4">Default</a></li>
                    </ul>
                </div>
                <div class="ec-tools-sidebar-content">
                    <h3>Full Screen mode</h3>
                    <div class="ec-fullscreen-mode">
                        <div class="ec-fullscreen-switch">
                            <div class="ec-fullscreen-btn">Mode</div>
                            <div class="ec-fullscreen-on">On</div>
                            <div class="ec-fullscreen-off">Off</div>
                        </div>
                    </div>
                </div>
                <div class="ec-tools-sidebar-content">
                    <h3>Dark mode</h3>
                    <div class="ec-change-mode">
                        <div class="ec-mode-switch">
                            <div class="ec-mode-btn">Mode</div>
                            <div class="ec-mode-on">On</div>
                            <div class="ec-mode-off">Off</div>
                        </div>
                    </div>
                </div>
                <div class="ec-tools-sidebar-content">
                    <h3>RTL mode</h3>
                    <div class="ec-change-rtl">
                        <div class="ec-rtl-switch">
                            <div class="ec-rtl-btn">Rtl</div>
                            <div class="ec-rtl-on">On</div>
                            <div class="ec-rtl-off">Off</div>
                        </div>
                    </div>
                </div>
                <div class="ec-tools-sidebar-content">
                    <h3>Clear local storage</h3>
                    <a class="clear-cach" href="javascript:void(0)">Clear Cache
                        & Default</a>
                </div>
            </div>
        </div>
        <!-- Feature tools end -->

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
                                                   document.addEventListener("DOMContentLoaded", function () {
                                                       let params = new URLSearchParams(window.location.search);

                                                       // 🔹 Giữ trạng thái checkbox khi tải trang
                                                       document.querySelectorAll("input[type=checkbox]").forEach(input => {
                                                           if (params.has(input.name) && params.getAll(input.name).includes(input.value.trim())) {
                                                               input.checked = true; // Giữ trạng thái checked
                                                               input.parentElement.classList.add("selected"); // Giữ màu xanh
                                                           }

                                                           input.addEventListener("change", function () {
                                                               let newParams = new URLSearchParams(window.location.search);

                                                               if (this.checked) {
                                                                   newParams.append(this.name, this.value.trim()); // Thêm filter
                                                                   this.parentElement.classList.add("selected"); // Giữ màu xanh
                                                               } else {
                                                                   let values = params.getAll(this.name).filter(v => v !== this.value.trim());
                                                                   newParams.delete(this.name);
                                                                   values.forEach(v => newParams.append(this.name, v));
                                                                   this.parentElement.classList.remove("selected"); // Bỏ màu xanh
                                                               }

                                                               // 🔹 Khi chọn filter, xóa index để quay về trang đầu
                                                               newParams.delete("index");

                                                               console.log("Redirecting to:", "shop?" + newParams.toString());
                                                               window.location.href = "shop?" + newParams.toString();
                                                           });
                                                       });

                                                       // 🔹 Xử lý phân trang
                                                       document.querySelectorAll(".pagination a").forEach(link => {
                                                           link.addEventListener("click", function (e) {
                                                               e.preventDefault();
                                                               let newParams = new URLSearchParams(window.location.search);

                                                               // Giữ filter, chỉ cập nhật index mới
                                                               params.forEach((value, key) => {
                                                                   if (key !== "index") {
                                                                       newParams.append(key, value);
                                                                   }
                                                               });

                                                               newParams.set("index", this.dataset.page); // Cập nhật index mới

                                                               console.log("Redirecting to:", "shop?" + newParams.toString());
                                                               window.location.href = "shop?" + newParams.toString();
                                                           });
                                                       });
                                                   });

        </script>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                let params = new URLSearchParams(window.location.search);
                let currentIndex = params.get("index") || "1"; // Mặc định trang 1 nếu không có index

                document.querySelectorAll(".pagination-link").forEach(link => {
                    if (link.dataset.page === currentIndex) {
                        link.classList.add("active"); // Đánh dấu trang hiện tại
                    }
                });
            });

            function updatePage(event, page) {
                event.preventDefault(); // Ngăn chặn hành động mặc định của thẻ <a>

                let params = new URLSearchParams(window.location.search);

                // 🔹 Giữ lại toàn bộ filter, chỉ thay đổi index
                params.set("index", page);

                // 🔹 Cập nhật class active trước khi chuyển trang
                document.querySelectorAll(".pagination-link").forEach(link => {
                    link.classList.remove("active"); // Xóa active khỏi tất cả
                });

                event.target.classList.add("active"); // Thêm active vào trang được chọn

                console.log("Redirecting to:", "shop?" + params.toString());

                // 🔹 Chờ 100ms để thấy hiệu ứng màu xanh trước khi load trang
                setTimeout(() => {
                    window.location.href = "shop?" + params.toString();
                }, 100);
            }

        </script>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                let slider = document.getElementById("ec-sliderPrice");
                let priceLow = document.getElementById("price_low");
                let priceHigh = document.getElementById("price_high");

                // Hàm lấy tham số từ URL
                function getParameterByName(name) {
                    let urlParams = new URLSearchParams(window.location.search);
                    return urlParams.get(name);
                }

                // Lấy giá trị từ URL (hoặc đặt mặc định nếu không có)
                let minValue = parseInt(getParameterByName("price_low")) || 0;
                let maxValue = parseInt(getParameterByName("price_high")) || 500;

                // Nếu thanh trượt đã tồn tại, hủy nó trước khi khởi tạo lại
                if (slider.noUiSlider) {
                    slider.noUiSlider.destroy();
                }

                // Tạo thanh trượt với giá trị lấy từ URL
                noUiSlider.create(slider, {
                    start: [minValue, maxValue],
                    connect: true,
                    range: {
                        min: 0,
                        max: 500
                    },
                    step: 10
                });

                // Cập nhật ô nhập liệu khi kéo thanh trượt
                slider.noUiSlider.on("update", function (values) {
                    priceLow.value = Math.round(values[0]);
                    priceHigh.value = Math.round(values[1]);
                });

                // Khi buông chuột, thay đổi URL và xóa `index`
                slider.noUiSlider.on("change", function (values) {
                    updateURL(values[0], values[1], true);
                });

                // Xử lý khi nhập số vào ô input (gõ số rồi enter)
                priceLow.addEventListener("change", function () {
                    let min = parseInt(priceLow.value) || 0;
                    let max = parseInt(priceHigh.value) || 500;

                    if (min >= 0 && min <= max) {
                        slider.noUiSlider.set([min, null]);
                        updateURL(min, max, true);
                    } else {
                        priceLow.value = Math.round(slider.noUiSlider.get()[0]);
                    }
                });

                priceHigh.addEventListener("change", function () {
                    let min = parseInt(priceLow.value) || 0;
                    let max = parseInt(priceHigh.value) || 500;

                    if (max >= min && max <= 500) {
                        slider.noUiSlider.set([null, max]);
                        updateURL(min, max, true);
                    } else {
                        priceHigh.value = Math.round(slider.noUiSlider.get()[1]);
                    }
                });

                // Hàm cập nhật URL và tải lại trang
                function updateURL(min, max, resetIndex) {
                    let params = new URLSearchParams(window.location.search);

                    // Cập nhật giá mới
                    params.set("price_low", Math.round(min));
                    params.set("price_high", Math.round(max));

                    // Nếu thay đổi giá, xóa `index` để quay về trang 1
                    if (resetIndex) {
                        params.delete("index");
                    }

                    // Cập nhật URL và tải lại trang
                    window.location.href = "shop?" + params.toString();
                }
            });


        </script>


    </body>

    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/shop-left-sidebar-col-3.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:32:12 GMT -->
</html>