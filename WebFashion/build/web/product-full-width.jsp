<!--========================================================= 
    Item Name: Ekka - Ecommerce HTML Template + Admin Dashboard.
    Author: ashishmaraviya
    Version: 3.7
    Copyright 2024
        Author URI: https://themeforest.net/user/ashishmaraviya
 ============================================================-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:30:52 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>Halo Fashion</title>
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
        <link rel="stylesheet" href="assets/css/demo1.css" />
        <link rel="stylesheet" href="assets/css/style.css" />
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <!-- Background css -->
        <link rel="stylesheet" id="bg-switcher-css" href="assets/css/backgrounds/bg-4.css">
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
                        <div class="col text-left header-top-left d-none d-lg-block">
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
                                    <button class="dropdown-toggle" data-bs-toggle="dropdown"><i
                                            class="fi-rr-user"></i></button>
                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li><a class="dropdown-item" href="register.jsp">Register</a></li>
                                        <li><a class="dropdown-item" href="checkout.jsp">Checkout</a></li>
                                        <li><a class="dropdown-item" href="login.jsp">Login</a></li>
                                    </ul>
                                </div>
                                <!-- Header User End -->
                                <!-- Header Cart Start -->
                                <a href="wishlist.jsp" class="ec-header-btn ec-header-wishlist">
                                    <div class="header-icon"><i class="fi-rr-heart"></i></div>
                                    <span class="ec-header-count wishlist-count-label">0</span>
                                </a>
                                <!-- Header Cart End -->

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
            <div class="ec-header-bottom d-none d-lg-block">
                <div class="container position-relative">
                    <div class="row">
                        <div class="ec-flex">
                            <!-- Ec Header Logo Start -->
                            <div class="align-self-center">
                                <div class="header-logo">
                                    <a href="index.jsp"><img src="assets\images\logo\logo4.png" alt="Site Logo" /><img
                                            class="dark-logo" src="assets/images/logo/dark-logo.png" alt="Site Logo"
                                            style="display: none;" /></a>
                                </div>
                            </div>
                            <!-- Ec Header Logo End -->

                            <!-- Ec Header Search Start -->
                            <div class="align-self-center">
                                <div class="header-search">
                                    <form class="ec-btn-group-form" action="#">
                                        <input class="form-control ec-search-bar" placeholder="Search products..."
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
                                    <div class="ec-header-user dropdown">
                                        <button class="dropdown-toggle" data-bs-toggle="dropdown"><i
                                                class="fi-rr-user"></i></button>
                                        <ul class="dropdown-menu dropdown-menu-right">
                                            <li><a class="dropdown-item" href="register.jsp">Register</a></li>
                                            <li><a class="dropdown-item" href="checkout.jsp">Checkout</a></li>
                                            <li><a class="dropdown-item" href="login.jsp">Login</a></li>
                                        </ul>
                                    </div>
                                    <!-- Header User End -->
                                    <!-- Header wishlist Start -->
                                    <a href="wishlist.jsp" class="ec-header-btn ec-header-wishlist">
                                        <div class="header-icon"><i class="fi-rr-heart"></i></div>
                                        <span class="ec-header-count wishlist-count-label">0</span>
                                    </a>
                                    <!-- Header wishlist End -->
                                    <!-- Header Cart Start -->
                                    <a href="#ec-side-cart" class="ec-header-btn ec-side-toggle">
                                        <div class="header-icon"><i class="fi-rr-shopping-bag"></i></div>
                                        <span class="ec-header-count cart-count-lable">0</span>
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
                                <a href="index.jsp"><img src="assets/images/logo/logo.png" alt="Site Logo" /><img
                                        class="dark-logo" src="assets/images/logo/dark-logo.png" alt="Site Logo"
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
            <div id="ec-main-menu-desk" class="d-none d-lg-block sticky-nav">
                <div class="container position-relative">
                    <div class="row">
                        <div class="col-md-12 align-self-center">
                            <div class="ec-main-menu">
                                <a href="javascript:void(0)" class="ec-header-btn ec-sidebar-toggle">
                                    <i class="fi fi-rr-apps"></i>
                                </a>
                                <ul>
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="shop-left-sidebar-col-3.jsp">Categories</a></li>
                                    <li><a href="product-full-width.jsp">Products</a></li>
                                    <li class="dropdown"><a href="javascript:void(0)">Pages</a>
                                        <ul class="sub-menu">

                                            <li><a href="cart.jsp">Cart</a></li>
                                            <li><a href="checkout.jsp">Checkout</a></li>                                
                                            <li><a href="faq.jsp">FAQ</a></li>
                                            <li><a href="track-order.jsp">Track Order</a></li>
                                            <li><a href="terms-condition.jsp">Terms Condition</a></li>
                                            <li><a href="privacy-policy.jsp">Privacy Policy</a></li>
                                        </ul>
                                    </li>

                                    <li><a href="about-us.jsp">About Us</a></li>
                                    <li><a href="contact-us.jsp">Contact Us</a></li>




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
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="shop-left-sidebar-col-3.jsp">Categories</a></li>
                            <li><a href="product-full-width.jsp">Products</a></li>

                            <li class="dropdown"><a href="javascript:void(0)">Pages</a>
                                <ul class="sub-menu">

                                    <li><a href="cart.jsp">Cart</a></li>
                                    <li><a href="checkout.jsp">Checkout</a></li>                                
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

        <!-- ekka Cart Start -->
        <div class="ec-side-cart-overlay"></div>
        <div id="ec-side-cart" class="ec-side-cart">
            <div class="ec-cart-inner">
                <div class="ec-cart-top">
                    <div class="ec-cart-title">
                        <span class="cart_title">My Cart</span>
                        <button class="ec-close" onclick="closeCart()">&times;</button>
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
                                    <td class="text-right" id="sub-total">$0.00</td>
                                </tr>
                                <tr>
                                    <td class="text-left">VAT (20%) :</td>
                                    <td class="text-right" id="vat">$0.00</td>
                                </tr>
                                <tr>
                                    <td class="text-left">Total :</td>
                                    <td class="text-right primary-color" id="total">$0.00</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="cart_btn">
                        <a href="cart.jsp" class="btn btn-primary">View Cart</a>
                        <a href="checkout.jsp" class="btn btn-secondary">Checkout</a>
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
                        <div>
                            <div class="ec-sb-pro-sl-item">
                                <a href="product-left-sidebar.jsp" class="sidekka_pro_img"><img
                                        src="assets/images/product-image/1.jpg" alt="product" /></a>
                                <div class="ec-pro-content">
                                    <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">baby fabric shoes</a></h5>
                                    <div class="ec-pro-rating">
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                    </div>
                                    <span class="ec-price">
                                        <span class="old-price">$5.00</span>
                                        <span class="new-price">$4.00</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="ec-sb-pro-sl-item">
                                <a href="product-left-sidebar.jsp" class="sidekka_pro_img"><img
                                        src="assets/images/product-image/2.jpg" alt="product" /></a>
                                <div class="ec-pro-content">
                                    <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Men's hoodies t-shirt</a>
                                    </h5>
                                    <div class="ec-pro-rating">
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star"></i>
                                    </div>
                                    <span class="ec-price">
                                        <span class="old-price">$10.00</span>
                                        <span class="new-price">$7.00</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="ec-sb-pro-sl-item">
                                <a href="product-left-sidebar.jsp" class="sidekka_pro_img"><img
                                        src="assets/images/product-image/3.jpg" alt="product" /></a>
                                <div class="ec-pro-content">
                                    <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Girls t-shirt</a></h5>
                                    <div class="ec-pro-rating">
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star"></i>
                                        <i class="ecicon eci-star"></i>
                                    </div>
                                    <span class="ec-price">
                                        <span class="old-price">$5.00</span>
                                        <span class="new-price">$3.00</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="ec-sb-pro-sl-item">
                                <a href="product-left-sidebar.jsp" class="sidekka_pro_img"><img
                                        src="assets/images/product-image/4.jpg" alt="product" /></a>
                                <div class="ec-pro-content">
                                    <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">woolen hat for men</a></h5>
                                    <div class="ec-pro-rating">
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                    </div>
                                    <span class="ec-price">
                                        <span class="old-price">$15.00</span>
                                        <span class="new-price">$12.00</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="ec-sb-pro-sl-item">
                                <a href="product-left-sidebar.jsp" class="sidekka_pro_img"><img
                                        src="assets/images/product-image/5.jpg" alt="product" /></a>
                                <div class="ec-pro-content">
                                    <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Womens purse</a></h5>
                                    <div class="ec-pro-rating">
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star"></i>
                                    </div>
                                    <span class="ec-price">
                                        <span class="old-price">$15.00</span>
                                        <span class="new-price">$12.00</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="ec-sb-pro-sl-item">
                                <a href="product-left-sidebar.jsp" class="sidekka_pro_img"><img
                                        src="assets/images/product-image/6.jpg" alt="product" /></a>
                                <div class="ec-pro-content">
                                    <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Baby toy doctor kit</a>
                                    </h5>
                                    <div class="ec-pro-rating">
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star"></i>
                                        <i class="ecicon eci-star"></i>
                                        <i class="ecicon eci-star"></i>
                                    </div>
                                    <span class="ec-price">
                                        <span class="old-price">$50.00</span>
                                        <span class="new-price">$45.00</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="ec-sb-pro-sl-item">
                                <a href="product-left-sidebar.jsp" class="sidekka_pro_img"><img
                                        src="assets/images/product-image/7.jpg" alt="product" /></a>
                                <div class="ec-pro-content">
                                    <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">teddy bear baby toy</a>
                                    </h5>
                                    <div class="ec-pro-rating">
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                    </div>
                                    <span class="ec-price">
                                        <span class="old-price">$35.00</span>
                                        <span class="new-price">$25.00</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="ec-sb-pro-sl-item">
                                <a href="product-left-sidebar.jsp" class="sidekka_pro_img"><img
                                        src="assets/images/product-image/2.jpg" alt="product" /></a>
                                <div class="ec-pro-content">
                                    <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Mens hoodies blue</a></h5>
                                    <div class="ec-pro-rating">
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star fill"></i>
                                        <i class="ecicon eci-star"></i>
                                        <i class="ecicon eci-star"></i>
                                    </div>
                                    <span class="ec-price">
                                        <span class="old-price">$15.00</span>
                                        <span class="new-price">$13.00</span>
                                    </span>
                                </div>
                            </div>
                        </div>
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
                                <h2 class="ec-breadcrumb-title">Single Products</h2>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <!-- ec-breadcrumb-list start -->
                                <ul class="ec-breadcrumb-list">
                                    <li class="ec-breadcrumb-item"><a href="index.jsp">Home</a></li>
                                    <li class="ec-breadcrumb-item active">Products</li>
                                </ul>
                                <!-- ec-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Ec breadcrumb end -->



        <!-- Sart Single product -->
        <section class="ec-page-content section-space-p">
            <div class="container">
                <div class="row">
                    <div class="ec-pro-rightside ec-common-rightside col-lg-12 col-md-12">

                        <!-- Single product content Start -->
                        <div class="single-pro-block">
                            <div class="single-pro-inner">
                                <div class="row">
                                    <div class="single-pro-img single-pro-img-no-sidebar">
                                        <div class="single-product-scroll">
                                            <div class="single-product-cover">
                                                <div class="single-slide zoom-image-hover">
                                                    <img class="img-responsive" src="assets/images/product-360/1_1.jpg"
                                                         alt="">
                                                </div>
                                                <div class="single-slide zoom-image-hover">
                                                    <img class="img-responsive" src="assets/images/product-360/1_2.jpg"
                                                         alt="">
                                                </div>
                                                <div class="single-slide zoom-image-hover">
                                                    <img class="img-responsive" src="assets/images/product-360/1_3.jpg"
                                                         alt="">
                                                </div>
                                                <div class="single-slide zoom-image-hover">
                                                    <img class="img-responsive" src="assets/images/product-360/1_4.jpg"
                                                         alt="">
                                                </div>
                                                <div class="single-slide zoom-image-hover">
                                                    <img class="img-responsive" src="assets/images/product-360/1_5.jpg"
                                                         alt="">
                                                </div>
                                            </div>
                                            <div class="single-nav-thumb">
                                                <div class="single-slide">
                                                    <img class="img-responsive" src="assets/images/product-360/1_1.jpg"
                                                         alt="">
                                                </div>
                                                <div class="single-slide">
                                                    <img class="img-responsive" src="assets/images/product-360/1_2.jpg"
                                                         alt="">
                                                </div>
                                                <div class="single-slide">
                                                    <img class="img-responsive" src="assets/images/product-360/1_3.jpg"
                                                         alt="">
                                                </div>
                                                <div class="single-slide">
                                                    <img class="img-responsive" src="assets/images/product-360/1_4.jpg"
                                                         alt="">
                                                </div>
                                                <div class="single-slide">
                                                    <img class="img-responsive" src="assets/images/product-360/1_5.jpg"
                                                         alt="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-pro-desc single-pro-desc-no-sidebar">
                                        <div class="single-pro-content">
                                            <h5 class="ec-single-title">Women Leather Heels Sandal</h5>
                                            <div class="ec-single-rating-wrap">
                                                <div class="ec-single-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star-o"></i>
                                                </div>

                                            </div>
                                            <div class="ec-single-desc">Lorem Ipsum is simply dummy text of the printing and
                                                typesetting industry. Lorem Ipsum has been the industry's standard dummy
                                                text ever since the 1990</div>


                                            <div class="ec-single-price-stoke">
                                                <div class="ec-single-price">
                                                    <span class="ec-single-ps-title">As low as</span>
                                                    <span class="new-price">$68.00</span>
                                                </div>
                                                <div class="ec-single-stoke">

                                                    <span class="ec-single-sku">SKU#: WH12</span>
                                                </div>
                                            </div>
                                            <div class="ec-pro-variation">
                                                <div class="ec-pro-variation-inner ec-pro-variation-size">
                                                    <span>SIZE</span>
                                                    <div class="ec-pro-variation-content">
                                                        <ul>
                                                            <li class="active"><span>7</span></li>
                                                            <li><span>8</span></li>
                                                            <li><span>9</span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="ec-pro-variation-inner ec-pro-variation-color">
                                                    <span>Color</span>
                                                    <div class="ec-pro-variation-content">
                                                        <ul>
                                                            <li class="active"><span
                                                                    style="background-color:#23839c;"></span></li>
                                                            <li><span style="background-color:#000;"></span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-single-qty">
                                                <div class="qty-plus-minus">
                                                    <input class="qty-input" type="text" name="ec_qtybtn" value="1" />
                                                </div>
                                                <div class="ec-single-cart ">
                                                    <button class="btn btn-primary">Add To Cart</button>
                                                </div>

                                                <div class="ec-single-quickview">
                                                    <a href="#" class="ec-btn-group quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                </div>
                                            </div>
                                            <div class="ec-single-social">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Single product content End -->
                        <!-- Single product tab start -->
                        <div class="ec-single-pro-tab">
                            <div class="ec-single-pro-tab-wrapper">
                                <div class="ec-single-pro-tab-nav">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" data-bs-toggle="tab"
                                               data-bs-target="#ec-spt-nav-details" role="tab" aria-controls="ec-spt-nav-details" aria-selected="true">Detail</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" data-bs-toggle="tab" data-bs-target="#ec-spt-nav-info"
                                               role="tab" aria-controls="ec-spt-nav-info" aria-selected="false">More Information</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" data-bs-toggle="tab" data-bs-target="#ec-spt-nav-review"
                                               role="tab" aria-controls="ec-spt-nav-review" aria-selected="false">Reviews</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="tab-content  ec-single-pro-tab-content">
                                    <div id="ec-spt-nav-details" class="tab-pane fade show active">
                                        <div class="ec-single-pro-tab-desc">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                                Lorem Ipsum has been the industry's standard dummy text ever since the
                                                1500s, when an unknown printer took a galley of type and scrambled it to
                                                make a type specimen book. It has survived not only five centuries, but also
                                                the leap into electronic typesetting, remaining essentially unchanged.
                                            </p>
                                            <ul>
                                                <li>Any Product types that You want - Simple, Configurable</li>
                                                <li>Downloadable/Digital Products, Virtual Products</li>
                                                <li>Inventory Management with Backordered items</li>
                                                <li>Flatlock seams throughout.</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div id="ec-spt-nav-info" class="tab-pane fade">
                                        <div class="ec-single-pro-tab-moreinfo">
                                            <ul>
                                                <li><span>Weight</span> 1000 g</li>
                                                <li><span>Dimensions</span> 35 x 30 x 7 cm</li>
                                                <li><span>Color</span> Black, Pink, Red, White</li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div id="ec-spt-nav-review" class="tab-pane fade">
                                        <div class="row">
                                            <div class="ec-t-review-wrapper">
                                                <div class="ec-t-review-item">
                                                    <div class="ec-t-review-avtar">
                                                        <img src="assets/images/review-image/1.jpg" alt="" />
                                                    </div>
                                                    <div class="ec-t-review-content">
                                                        <div class="ec-t-review-top">
                                                            <div class="ec-t-review-name">Jeny Doe</div>
                                                            <div class="ec-t-review-rating">
                                                                <i class="ecicon eci-star fill"></i>
                                                                <i class="ecicon eci-star fill"></i>
                                                                <i class="ecicon eci-star fill"></i>
                                                                <i class="ecicon eci-star fill"></i>
                                                                <i class="ecicon eci-star-o"></i>
                                                            </div>
                                                        </div>
                                                        <div class="ec-t-review-bottom">
                                                            <p>Lorem Ipsum is simply dummy text of the printing and
                                                                typesetting industry. Lorem Ipsum has been the industry's
                                                                standard dummy text ever since the 1500s, when an unknown
                                                                printer took a galley of type and scrambled it to make a
                                                                type specimen.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="ec-t-review-item">
                                                    <div class="ec-t-review-avtar">
                                                        <img src="assets/images/review-image/2.jpg" alt="" />
                                                    </div>
                                                    <div class="ec-t-review-content">
                                                        <div class="ec-t-review-top">
                                                            <div class="ec-t-review-name">Linda Morgus</div>
                                                            <div class="ec-t-review-rating">
                                                                <i class="ecicon eci-star fill"></i>
                                                                <i class="ecicon eci-star fill"></i>
                                                                <i class="ecicon eci-star fill"></i>
                                                                <i class="ecicon eci-star-o"></i>
                                                                <i class="ecicon eci-star-o"></i>
                                                            </div>
                                                        </div>
                                                        <div class="ec-t-review-bottom">
                                                            <p>Lorem Ipsum is simply dummy text of the printing and
                                                                typesetting industry. Lorem Ipsum has been the industry's
                                                                standard dummy text ever since the 1500s, when an unknown
                                                                printer took a galley of type and scrambled it to make a
                                                                type specimen.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="ec-ratting-content">
                                                <h3>Add a Review</h3>
                                                <div class="ec-ratting-form">
                                                    <form action="#">
                                                        <div class="ec-ratting-star">
                                                            <span>Your rating:</span>
                                                            <div class="ec-t-review-rating">
                                                                <i class="ecicon eci-star fill"></i>
                                                                <i class="ecicon eci-star fill"></i>
                                                                <i class="ecicon eci-star-o"></i>
                                                                <i class="ecicon eci-star-o"></i>
                                                                <i class="ecicon eci-star-o"></i>
                                                            </div>
                                                        </div>
                                                        <div class="ec-ratting-input">
                                                            <input name="your-name" placeholder="Name" type="text" />
                                                        </div>
                                                        <div class="ec-ratting-input">
                                                            <input name="your-email" placeholder="Email*" type="email"
                                                                   required />
                                                        </div>
                                                        <div class="ec-ratting-input form-submit">
                                                            <textarea name="your-commemt"
                                                                      placeholder="Enter Your Comment"></textarea>
                                                            <button class="btn btn-primary" type="submit"
                                                                    value="Submit">Submit</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- product details description area end -->
                    </div>

                </div>
            </div>
        </section>
        <!-- End Single product -->




        <!-- Related Product Start -->
        <section class="section ec-releted-product section-space-p">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="section-title">
                            <h2 class="ec-bg-title">Related products</h2>
                            <h2 class="ec-title">Related products</h2>
                            <p class="sub-title">Browse The Collection of Top Products</p>
                        </div>
                    </div>
                </div>
                <div class="row margin-minus-b-30">
                    <!-- Related Product Content -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6 pro-gl-content">
                        <div class="ec-product-inner">
                            <div class="ec-pro-image-outer">
                                <div class="ec-pro-image">
                                    <a href="product-left-sidebar.jsp" class="image">
                                        <img class="main-image"
                                             src="assets/images/product-image/6_1.jpg" alt="Product" />
                                        <img class="hover-image"
                                             src="assets/images/product-image/6_2.jpg" alt="Product" />
                                    </a>
                                    <span class="percentage">20%</span>
                                    <a href="#" class="quickview" data-link-action="quickview" title="Quick view"
                                       data-bs-toggle="modal" data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                    <div class="ec-pro-actions">
                                        <a href="compare.jsp" class="ec-btn-group compare" title="Compare"><i
                                                class="fi fi-rr-arrows-repeat"></i></a>
                                        <button title="Add To Cart" class="add-to-cart"><i
                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                        <a class="ec-btn-group wishlist" title="Wishlist"><i class="fi-rr-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="ec-pro-content">
                                <h5 class="ec-pro-title"><a href="product-full-width.jsp">Round Neck T-Shirt</a></h5>
                                <div class="ec-pro-rating">
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star"></i>
                                </div>
                                <div class="ec-pro-list-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dutmmy text ever since the 1500s, when an unknown printer took a galley.</div>
                                <span class="ec-price">
                                    <span class="old-price">$27.00</span>
                                    <span class="new-price">$22.00</span>
                                </span>
                                <div class="ec-pro-option">
                                    <div class="ec-pro-color">
                                        <span class="ec-pro-opt-label">Color</span>
                                        <ul class="ec-opt-swatch ec-change-img">
                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                  data-src="assets/images/product-image/6_1.jpg"
                                                                  data-src-hover="assets/images/product-image/6_1.jpg"
                                                                  data-tooltip="Gray"><span
                                                        style="background-color:#e8c2ff;"></span></a></li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/6_2.jpg"
                                                   data-src-hover="assets/images/product-image/6_2.jpg"
                                                   data-tooltip="Orange"><span
                                                        style="background-color:#9cfdd5;"></span></a></li>
                                        </ul>
                                    </div>
                                    <div class="ec-pro-size">
                                        <span class="ec-pro-opt-label">Size</span>
                                        <ul class="ec-opt-size">
                                            <li class="active"><a href="#" class="ec-opt-sz"
                                                                  data-old="$25.00" data-new="$20.00"
                                                                  data-tooltip="Small">S</a></li>
                                            <li><a href="#" class="ec-opt-sz" data-old="$27.00"
                                                   data-new="$22.00" data-tooltip="Medium">M</a></li>
                                            <li><a href="#" class="ec-opt-sz" data-old="$35.00"
                                                   data-new="$30.00" data-tooltip="Extra Large">XL</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6 pro-gl-content">
                        <div class="ec-product-inner">
                            <div class="ec-pro-image-outer">
                                <div class="ec-pro-image">
                                    <a href="product-left-sidebar.jsp" class="image">
                                        <img class="main-image"
                                             src="assets/images/product-image/7_1.jpg" alt="Product" />
                                        <img class="hover-image"
                                             src="assets/images/product-image/7_2.jpg" alt="Product" />
                                    </a>
                                    <span class="percentage">20%</span>
                                    <span class="flags">
                                        <span class="sale">Sale</span>
                                    </span>
                                    <a href="#" class="quickview" data-link-action="quickview" title="Quick view"
                                       data-bs-toggle="modal" data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                    <div class="ec-pro-actions">
                                        <a href="compare.jsp" class="ec-btn-group compare" title="Compare"><i
                                                class="fi fi-rr-arrows-repeat"></i></a>
                                        <button title="Add To Cart" class="add-to-cart"><i
                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                        <a class="ec-btn-group wishlist" title="Wishlist"><i class="fi-rr-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="ec-pro-content">
                                <h5 class="ec-pro-title"><a href="product-full-width.jsp">Full Sleeve Shirt</a></h5>
                                <div class="ec-pro-rating">
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star"></i>
                                </div>
                                <div class="ec-pro-list-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dutmmy text ever since the 1500s, when an unknown printer took a galley.</div>
                                <span class="ec-price">
                                    <span class="old-price">$12.00</span>
                                    <span class="new-price">$10.00</span>
                                </span>
                                <div class="ec-pro-option">
                                    <div class="ec-pro-color">
                                        <span class="ec-pro-opt-label">Color</span>
                                        <ul class="ec-opt-swatch ec-change-img">
                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                  data-src="assets/images/product-image/7_1.jpg"
                                                                  data-src-hover="assets/images/product-image/7_1.jpg"
                                                                  data-tooltip="Gray"><span
                                                        style="background-color:#01f1f1;"></span></a></li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/7_2.jpg"
                                                   data-src-hover="assets/images/product-image/7_2.jpg"
                                                   data-tooltip="Orange"><span
                                                        style="background-color:#b89df8;"></span></a></li>
                                        </ul>
                                    </div>
                                    <div class="ec-pro-size">
                                        <span class="ec-pro-opt-label">Size</span>
                                        <ul class="ec-opt-size">
                                            <li class="active"><a href="#" class="ec-opt-sz"
                                                                  data-old="$12.00" data-new="$10.00"
                                                                  data-tooltip="Small">S</a></li>
                                            <li><a href="#" class="ec-opt-sz" data-old="$15.00"
                                                   data-new="$12.00" data-tooltip="Medium">M</a></li>
                                            <li><a href="#" class="ec-opt-sz" data-old="$20.00"
                                                   data-new="$17.00" data-tooltip="Extra Large">XL</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6 pro-gl-content">
                        <div class="ec-product-inner">
                            <div class="ec-pro-image-outer">
                                <div class="ec-pro-image">
                                    <a href="product-left-sidebar.jsp" class="image">
                                        <img class="main-image"
                                             src="assets/images/product-image/1_1.jpg" alt="Product" />
                                        <img class="hover-image"
                                             src="assets/images/product-image/1_2.jpg" alt="Product" />
                                    </a>
                                    <span class="percentage">20%</span>
                                    <span class="flags">
                                        <span class="sale">Sale</span>
                                    </span>
                                    <a href="#" class="quickview" data-link-action="quickview" title="Quick view"
                                       data-bs-toggle="modal" data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                    <div class="ec-pro-actions">
                                        <a href="compare.jsp" class="ec-btn-group compare" title="Compare"><i
                                                class="fi fi-rr-arrows-repeat"></i></a>
                                        <button title="Add To Cart" class="add-to-cart"><i
                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                        <a class="ec-btn-group wishlist" title="Wishlist"><i class="fi-rr-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="ec-pro-content">
                                <h5 class="ec-pro-title"><a href="product-full-width.jsp">Baby bear</a></h5>
                                <div class="ec-pro-rating">
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star"></i>
                                </div>
                                <div class="ec-pro-list-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dutmmy text ever since the 1500s, when an unknown printer took a galley.</div>
                                <span class="ec-price">
                                    <span class="old-price">$40.00</span>
                                    <span class="new-price">$30.00</span>
                                </span>
                                <div class="ec-pro-option">
                                    <div class="ec-pro-color">
                                        <span class="ec-pro-opt-label">Color</span>
                                        <ul class="ec-opt-swatch ec-change-img">
                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                  data-src="assets/images/product-image/1_1.jpg"
                                                                  data-src-hover="assets/images/product-image/1_1.jpg"
                                                                  data-tooltip="Gray"><span
                                                        style="background-color:#90cdf7;"></span></a></li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/1_2.jpg"
                                                   data-src-hover="assets/images/product-image/1_2.jpg"
                                                   data-tooltip="Orange"><span
                                                        style="background-color:#ff3b66;"></span></a></li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/1_3.jpg"
                                                   data-src-hover="assets/images/product-image/1_3.jpg"
                                                   data-tooltip="Green"><span
                                                        style="background-color:#ffc476;"></span></a></li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/1_4.jpg"
                                                   data-src-hover="assets/images/product-image/1_4.jpg"
                                                   data-tooltip="Sky Blue"><span
                                                        style="background-color:#1af0ba;"></span></a></li>
                                        </ul>
                                    </div>
                                    <div class="ec-pro-size">
                                        <span class="ec-pro-opt-label">Size</span>
                                        <ul class="ec-opt-size">
                                            <li class="active"><a href="#" class="ec-opt-sz"
                                                                  data-old="$40.00" data-new="$30.00"
                                                                  data-tooltip="Small">S</a></li>
                                            <li><a href="#" class="ec-opt-sz" data-old="$50.00"
                                                   data-new="$40.00" data-tooltip="Medium">M</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6 pro-gl-content">
                        <div class="ec-product-inner">
                            <div class="ec-pro-image-outer">
                                <div class="ec-pro-image">
                                    <a href="product-left-sidebar.jsp" class="image">
                                        <img class="main-image"
                                             src="assets/images/product-image/2_1.jpg" alt="Product" />
                                        <img class="hover-image"
                                             src="assets/images/product-image/2_2.jpg" alt="Product" />
                                    </a>
                                    <span class="percentage">20%</span>
                                    <span class="flags">
                                        <span class="new">New</span>
                                    </span>
                                    <a href="#" class="quickview" data-link-action="quickview" title="Quick view"
                                       data-bs-toggle="modal" data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                    <div class="ec-pro-actions">
                                        <a href="compare.jsp" class="ec-btn-group compare" title="Compare"><i
                                                class="fi fi-rr-arrows-repeat"></i></a>
                                        <button title="Add To Cart" class="add-to-cart"><i
                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                        <a class="ec-btn-group wishlist" title="Wishlist"><i class="fi-rr-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="ec-pro-content">
                                <h5 class="ec-pro-title"><a href="product-full-width.jsp">Jumbo Carry Bag</a></h5>
                                <div class="ec-pro-rating">
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star"></i>
                                </div>
                                <div class="ec-pro-list-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dutmmy text ever since the 1500s, when an unknown printer took a galley.</div>
                                <span class="ec-price">
                                    <span class="old-price">$50.00</span>
                                    <span class="new-price">$40.00</span>
                                </span>                                                
                                <div class="ec-pro-option">
                                    <div class="ec-pro-color">
                                        <span class="ec-pro-opt-label">Color</span>
                                        <ul class="ec-opt-swatch ec-change-img">
                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                  data-src="assets/images/product-image/2_1.jpg"
                                                                  data-src-hover="assets/images/product-image/2_2.jpg"
                                                                  data-tooltip="Gray"><span
                                                        style="background-color:#fdbf04;"></span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Related Product end -->

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
                            <div class="col-sm-12 col-lg-2 ec-footer-info">
                                <div class="ec-footer-widget">
                                    <h4 class="ec-footer-heading">Information</h4>
                                    <div class="ec-footer-links">
                                        <ul class="align-items-center">
                                            <li class="ec-footer-link"><a href="about-us.jsp">About us</a></li>
                                            <li class="ec-footer-link"><a href="faq.jsp">FAQ</a></li>
                                            <li class="ec-footer-link"><a href="track-order.jsp">Delivery Information</a></li>
                                            <li class="ec-footer-link"><a href="contact-us.jsp">Contact us</a></li>
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

        <!-- 360 Modal -->
        <div class="modal fade" id="ec_360_view_modal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="row ec-product-360">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="ec-360-panel ec-360-panel-default">
                                    <a class="btn btn-default ec-360-btn qty_close" data-bs-dismiss="modal"
                                       aria-label="Close">x</a>
                                    <div class="ec-360-panel-body">
                                        <div id="circlr" class="ec-circlr">
                                            <img data-src="assets/images/product-360/00.jpg" src="assets/images/product-360/00.jpg" alt="product image">
                                            <img data-src="assets/images/product-360/01.jpg" src="assets/images/product-360/01.jpg" alt="product image">
                                            <img data-src="assets/images/product-360/02.jpg" src="assets/images/product-360/02.jpg" alt="product image">
                                            <img data-src="assets/images/product-360/03.jpg" src="assets/images/product-360/03.jpg" alt="product image">
                                            <img data-src="assets/images/product-360/04.jpg" src="assets/images/product-360/04.jpg" alt="product image">
                                            <img data-src="assets/images/product-360/05.jpg" src="assets/images/product-360/05.jpg" alt="product image">
                                            <img data-src="assets/images/product-360/06.jpg" src="assets/images/product-360/06.jpg" alt="product image">
                                            <img data-src="assets/images/product-360/07.jpg" src="assets/images/product-360/07.jpg" alt="product image">
                                            <img data-src="assets/images/product-360/08.jpg" src="assets/images/product-360/08.jpg" alt="product image">
                                            <img data-src="assets/images/product-360/09.jpg" src="assets/images/product-360/09.jpg" alt="product image">
                                            <img data-src="assets/images/product-360/10.jpg" src="assets/images/product-360/10.jpg" alt="product image">
                                            <img data-src="assets/images/product-360/11.jpg" src="assets/images/product-360/11.jpg" alt="product image">
                                            <img data-src="assets/images/product-360/12.jpg" src="assets/images/product-360/12.jpg" alt="product image">
                                            <img data-src="assets/images/product-360/13.jpg" src="assets/images/product-360/13.jpg" alt="product image">
                                            <img data-src="assets/images/product-360/14.jpg" src="assets/images/product-360/14.jpg" alt="product image">
                                            <img data-src="assets/images/product-360/15.jpg" src="assets/images/product-360/15.jpg" alt="product image">
                                            <div id="loader" class="ec-img-loader"></div>
                                        </div>
                                    </div>
                                    <p class="ec-tool-play">
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.play();
                                                   return false;"><i class="fi-rr-play"></i></a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.stop(); return false;"><i class="fi-rr-stop"></i></a>
                                    </p>
                                </div>
                            </div>

                            <div class="ec-tool-box-sec">
                                <div class="ec-tool-box space-b-15">
                                    <h4>Cycle</h4>
                                    <label class="ec-switch">
                                        <input class="ec-cycle" type="checkbox">
                                        <span class="ec-slider"></span>
                                    </label>
                                </div>

                                <div class="ec-tool-box space-b-15">
                                    <h4>Reverse</h4>
                                    <label class="ec-switch">
                                        <input class="ec-reverse" type="checkbox">
                                        <span class="ec-slider"></span>
                                    </label>
                                </div>

                                <div class="ec-tool-box space-b-15">
                                    <h4>Vertical</h4>
                                    <label class="ec-switch">
                                        <input class="ec-vertical" type="checkbox">
                                        <span class="ec-slider"></span>
                                    </label>
                                </div>

                                <div class="ec-tool-box-2 space-b-15">
                                    <h4>Rotation</h4>
                                    <p>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.turn(9); return false;">9</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.turn(8); return false;">8</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.turn(7); return false;">7</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.turn(6); return false;">6</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.turn(5); return false;">5</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.turn(4); return false;">4</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.turn(3); return false;">3</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.turn(2); return false;">2</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.turn(1); return false;">1</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.turn(0); return false;">0</a>
                                    </p>
                                </div>

                                <div class="ec-tool-box-2">
                                    <h4>Goto n frame</h4>
                                    <p>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.go(9); return false;">9</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.go(8); return false;">8</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.go(7); return false;">7</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.go(6); return false;">6</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.go(5); return false;">5</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.go(4); return false;">4</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.go(3); return false;">3</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.go(2); return false;">2</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.go(1); return false;">1</a>
                                        <a href="#" class="btn btn-default ec-360-btn"
                                           onclick="crl.go(0); return false;">0</a>
                                    </p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal end -->

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
                                    <h5 class="ec-quick-title"><a href="product-left-sidebar.jsp">Handbag leather purse for women</a>
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
                                            <button class="btn btn-primary"><i class="fi-rr-shopping-basket"></i> Add To Cart</button>
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
                        <a href="index.jsp" class="ec-header-btn"><i class="fi-rr-home"></i></a>
                    </div>
                    <div class="ec-nav-panel-icons">
                        <a href="wishlist.jsp" class="ec-header-btn"><i class="fi-rr-heart"></i><span
                                class="ec-cart-noti">0</span></a>
                    </div>
                    <div class="ec-nav-panel-icons">
                        <a href="login.jsp" class="ec-header-btn"><i class="fi-rr-user"></i></a>
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

    </body>

    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/product-full-width.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:32:20 GMT -->
</html>