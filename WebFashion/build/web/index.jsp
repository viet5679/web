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

        <title>Ekka - Ecommerce HTML Template + Admin Dashboard.</title>
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
                                    <a href="index.jsp"><img src="assets/images/logo/logo4.png" alt="Site Logo" /><img
                                            class="dark-logo" src="assets/images/logo/logo4.png" alt="Site Logo"
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
                                <a href="index.jsp"><img src="assets/images/logo/logo4.png" alt="Site Logo" /><img
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


                                    <li class="dropdown scroll-to"><a href="javascript:void(0)"><i
                                                class="fi fi-rr-sort-amount-down-alt"></i></a>
                                        <ul class="sub-menu">
                                            <li class="menu_title">Scroll To Section</li>
                                            <li><a href="javascript:void(0)" data-scroll="collection" class="nav-scroll">Top
                                                    Collection</a></li>
                                            <li><a href="shop-left-sidebar-col-3.jsp" data-scroll="categories"
                                                   class="nav-scroll">Categories</a></li>
                                            <li><a href="javascript:void(0)" data-scroll="offers"
                                                   class="nav-scroll">Offers</a></li>
                                            <li><a href="javascript:void(0)" data-scroll="services"
                                                   class="nav-scroll">Services</a></li>
                                            <li><a href="javascript:void(0)" data-scroll="arrivals" class="nav-scroll">New
                                                    Arrivals</a></li>
                                            <li><a href="javascript:void(0)" data-scroll="reviews" class="nav-scroll">Client
                                                    Review</a></li>
                                            <li><a href="javascript:void(0)" data-scroll="insta"
                                                   class="nav-scroll">Fashion style</a></li>
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

        <!-- Main Slider Start -->
        <div class="sticky-header-next-sec ec-main-slider section section-space-pb">
            <div class="ec-slider swiper-container main-slider-nav main-slider-dot">
                <!-- Main slider -->
                <div class="swiper-wrapper">
                    <div class="ec-slide-item swiper-slide d-flex ec-slide-1">
                        <div class="container align-self-center">
                            <div class="row">
                                <div class="col-xl-6 col-lg-7 col-md-7 col-sm-7 align-self-center">
                                    <div class="ec-slide-content slider-animation">
                                        <h1 class="ec-slide-title">New Fashion Collection</h1>
                                        <h2 class="ec-slide-stitle">Sale Offer</h2>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do</p>
                                        <a href="#" class="btn btn-lg btn-secondary">Order Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ec-slide-item swiper-slide d-flex ec-slide-2">
                        <div class="container align-self-center">
                            <div class="row">
                                <div class="col-xl-6 col-lg-7 col-md-7 col-sm-7 align-self-center">
                                    <div class="ec-slide-content slider-animation">
                                        <h1 class="ec-slide-title">Boat Headphone Sets</h1>
                                        <h2 class="ec-slide-stitle">Sale Offer</h2>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do</p>
                                        <a href="#" class="btn btn-lg btn-secondary">Order Now</a>
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
                            <h2 class="ec-bg-title">Our Top Collection</h2>
                            <h2 class="ec-title">Our Top Collection</h2>
                            <p class="sub-title">Browse The Collection of Top Products</p>
                        </div>
                    </div>

                    <!-- Tab Start -->
                    <div class="col-md-12 text-center">
                        <ul class="ec-pro-tab-nav nav justify-content-center">
                            <li class="nav-item"><a class="nav-link active" data-bs-toggle="tab" href="#tab-pro-for-all">For
                                    All</a></li>
                            <li class="nav-item"><a class="nav-link" data-bs-toggle="tab" href="#tab-pro-for-men">For
                                    Men</a></li>
                            <li class="nav-item"><a class="nav-link" data-bs-toggle="tab" href="#tab-pro-for-women">For
                                    Women</a></li>
                            <li class="nav-item"><a class="nav-link" data-bs-toggle="tab" href="#tab-pro-for-child">For
                                    Children</a></li>
                        </ul>
                    </div>
                    <!-- Tab End -->
                </div>
                <div class="row">
                    <div class="col">
                        <div class="tab-content">
                            <!-- 1st Product tab start -->
                            <div class="tab-pane fade show active" id="tab-pro-for-all">
                                <div class="row">
                                    <!-- Product Content -->
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content"
                                         data-animation="fadeIn">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/6_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/6_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Round Neck
                                                        T-Shirt</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
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
                                                            <li><a href="#" class="ec-opt-sz" data-old="$30.00"
                                                                   data-new="$25.00" data-tooltip="Large">X</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$35.00"
                                                                   data-new="$30.00" data-tooltip="Extra Large">XL</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content"
                                         data-animation="fadeIn">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/7_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/7_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="flags">
                                                        <span class="sale">Sale</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Full Sleeve
                                                        Shirt</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
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
                                                            <li><a href="#" class="ec-opt-sz" data-old="$18.00"
                                                                   data-new="$15.00" data-tooltip="Large">X</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$20.00"
                                                                   data-new="$17.00" data-tooltip="Extra Large">XL</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content"
                                         data-animation="fadeIn">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/1_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/1_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Cute Baby
                                                        Toy's</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
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
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content"
                                         data-animation="fadeIn">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/2_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/2_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="flags">
                                                        <span class="new">New</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Jumbo Carry
                                                        Bag</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
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
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content"
                                         data-animation="fadeIn">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/3_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/3_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">15%</span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Designer
                                                        Leather Purses</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$40.00</span>
                                                    <span class="new-price">$30.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/3_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/3_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#75e3ff;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/3_2.jpg"
                                                                   data-src-hover="assets/images/product-image/3_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#11f7d8;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/3_3.jpg"
                                                                   data-src-hover="assets/images/product-image/3_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#acff7c;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/3_5.jpg"
                                                                   data-src-hover="assets/images/product-image/3_5.jpg"
                                                                   data-tooltip="Sky Blue"><span
                                                                        style="background-color:#e996fa;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content"
                                         data-animation="fadeIn">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/4_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/4_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Canvas Cowboy
                                                        Hat</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$12.00</span>
                                                    <span class="new-price">$10.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/4_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/4_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#ebbf60;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/4_2.jpg"
                                                                   data-src-hover="assets/images/product-image/4_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#b4fc57;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/4_3.jpg"
                                                                   data-src-hover="assets/images/product-image/4_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#2ea1cd;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/4_4.jpg"
                                                                   data-src-hover="assets/images/product-image/4_4.jpg"
                                                                   data-tooltip="Sky Blue"><span
                                                                        style="background-color:#c1a1fd;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content"
                                         data-animation="fadeIn">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/5_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/5_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="flags">
                                                        <span class="new">New</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Leather Belt
                                                        for Men</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$15.00</span>
                                                    <span class="new-price">$10.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/5_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/5_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#9e9e9e;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/5_2.jpg"
                                                                   data-src-hover="assets/images/product-image/5_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#eb8e76;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="ec-pro-size">
                                                        <span class="ec-pro-opt-label">Size</span>
                                                        <ul class="ec-opt-size">
                                                            <li class="active"><a href="#" class="ec-opt-sz"
                                                                                  data-old="$15.00" data-new="$10.00"
                                                                                  data-tooltip="Small">32</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$17.00"
                                                                   data-new="$12.00" data-tooltip="Medium">34</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$20.00"
                                                                   data-new="$15.00" data-tooltip="Large">36</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content"
                                         data-animation="fadeIn">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/8_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/8_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">35%</span>
                                                    <span class="flags">
                                                        <span class="new">New</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Digital Smart
                                                        Watches</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$100.00</span>
                                                    <span class="new-price">$80.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/8_2.jpg"
                                                                                  data-src-hover="assets/images/product-image/8_2.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#e9dddd;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/8_3.jpg"
                                                                   data-src-hover="assets/images/product-image/8_3.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#ffd5cb;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/8_4.jpg"
                                                                   data-src-hover="assets/images/product-image/8_4.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#92e4fd;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-12 shop-all-btn"><a href="shop-left-sidebar-col-3.jsp">Shop All
                                            Collection</a></div>
                                </div>
                            </div>
                            <!-- ec 1st Product tab end -->
                            <!-- ec 2nd Product tab start -->
                            <div class="tab-pane fade" id="tab-pro-for-men">
                                <div class="row">
                                    <!-- Product Content -->
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/6_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/6_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Round Neck
                                                        T-Shirt</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$30.00</span>
                                                    <span class="new-price">$25.00</span>
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
                                                            <li><a href="#" class="ec-opt-sz" data-old="$30.00"
                                                                   data-new="$25.00" data-tooltip="Large">X</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$35.00"
                                                                   data-new="$30.00" data-tooltip="Extra Large">XL</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/7_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/7_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="sale">Sale</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Full Sleeve
                                                        Shirt</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
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
                                                            <li><a href="#" class="ec-opt-sz" data-old="$18.00"
                                                                   data-new="$15.00" data-tooltip="Large">X</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$20.00"
                                                                   data-new="$17.00" data-tooltip="Extra Large">XL</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/2_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/2_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="new">New</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Jumbo Carry
                                                        Bag</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$40.00</span>
                                                    <span class="new-price">$20.00</span>
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
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/4_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/4_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Canvas Cowboy
                                                        Hat</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$12.00</span>
                                                    <span class="new-price">$10.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/4_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/4_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#ebbf60;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/4_2.jpg"
                                                                   data-src-hover="assets/images/product-image/4_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#b4fc57;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/4_3.jpg"
                                                                   data-src-hover="assets/images/product-image/4_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#2ea1cd;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/4_4.jpg"
                                                                   data-src-hover="assets/images/product-image/4_4.jpg"
                                                                   data-tooltip="Sky Blue"><span
                                                                        style="background-color:#c1a1fd;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/5_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/5_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="flags">
                                                        <span class="new">New</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Leather Belt
                                                        for Men</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$15.00</span>
                                                    <span class="new-price">$10.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/5_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/5_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#9e9e9e;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/5_2.jpg"
                                                                   data-src-hover="assets/images/product-image/5_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#eb8e76;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="ec-pro-size">
                                                        <span class="ec-pro-opt-label">Size</span>
                                                        <ul class="ec-opt-size">
                                                            <li class="active"><a href="#" class="ec-opt-sz"
                                                                                  data-old="$15.00" data-new="$10.00"
                                                                                  data-tooltip="Small">32</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$17.00"
                                                                   data-new="$12.00" data-tooltip="Medium">34</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$20.00"
                                                                   data-new="$15.00" data-tooltip="Large">36</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/8_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/8_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="new">New</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Digital Smart
                                                        Watches</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$100.00</span>
                                                    <span class="new-price">$80.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/8_2.jpg"
                                                                                  data-src-hover="assets/images/product-image/8_2.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#e9dddd;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/8_3.jpg"
                                                                   data-src-hover="assets/images/product-image/8_3.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#ffd5cb;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/8_4.jpg"
                                                                   data-src-hover="assets/images/product-image/8_4.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#92e4fd;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/10_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/10_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="sale">Sale</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Canvas Shoes
                                                        for Men</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$30.00</span>
                                                    <span class="new-price">$25.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/10_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/10_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#41d49c;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/10_2.jpg"
                                                                   data-src-hover="assets/images/product-image/10_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#fc8484;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/10_3.jpg"
                                                                   data-src-hover="assets/images/product-image/10_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#db94f7;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/10_4.jpg"
                                                                   data-src-hover="assets/images/product-image/10_4.jpg"
                                                                   data-tooltip="Sky Blue"><span
                                                                        style="background-color:#24da0c;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="ec-pro-size">
                                                        <span class="ec-pro-opt-label">Size</span>
                                                        <ul class="ec-opt-size">
                                                            <li class="active"><a href="#" class="ec-opt-sz"
                                                                                  data-old="$30.00" data-new="$25.00"
                                                                                  data-tooltip="Small">6</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$35.00"
                                                                   data-new="$27.00" data-tooltip="Medium">7</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$40.00"
                                                                   data-new="$30.00" data-tooltip="Large">8</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$45.00"
                                                                   data-new="$35.00" data-tooltip="Extra Large">9</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/9_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/9_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="sale">Sale</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Full Sleeve
                                                        T-Shirt</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$30.00</span>
                                                    <span class="new-price">$25.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/9_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/9_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#21b7fc;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/9_2.jpg"
                                                                   data-src-hover="assets/images/product-image/9_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#1df0ff;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/9_3.jpg"
                                                                   data-src-hover="assets/images/product-image/9_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#94f7a1;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="ec-pro-size">
                                                        <span class="ec-pro-opt-label">Size</span>
                                                        <ul class="ec-opt-size">
                                                            <li class="active"><a href="#" class="ec-opt-sz"
                                                                                  data-old="$30.00" data-new="$25.00"
                                                                                  data-tooltip="Small">S</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$35.00"
                                                                   data-new="$27.00" data-tooltip="Medium">M</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$40.00"
                                                                   data-new="$30.00" data-tooltip="Large">X</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$45.00"
                                                                   data-new="$35.00" data-tooltip="Extra Large">XL</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 shop-all-btn"><a href="shop-left-sidebar-col-3.jsp">Shop All
                                            Collection</a></div>
                                </div>
                            </div>
                            <!-- ec 2nd Product tab end -->
                            <!-- ec 3rd Product tab start -->
                            <div class="tab-pane fade" id="tab-pro-for-women">
                                <div class="row">
                                    <!-- Product Content -->
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/9_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/9_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="sale">Sale</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Canvas Shoes
                                                        for Men</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$30.00</span>
                                                    <span class="new-price">$25.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/9_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/9_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#21b7fc;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/9_2.jpg"
                                                                   data-src-hover="assets/images/product-image/9_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#1df0ff;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/9_3.jpg"
                                                                   data-src-hover="assets/images/product-image/9_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#94f7a1;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="ec-pro-size">
                                                        <span class="ec-pro-opt-label">Size</span>
                                                        <ul class="ec-opt-size">
                                                            <li class="active"><a href="#" class="ec-opt-sz"
                                                                                  data-old="$30.00" data-new="$25.00"
                                                                                  data-tooltip="Small">S</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$35.00"
                                                                   data-new="$27.00" data-tooltip="Medium">M</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$40.00"
                                                                   data-new="$30.00" data-tooltip="Large">X</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$45.00"
                                                                   data-new="$35.00" data-tooltip="Extra Large">XL</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/6_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/6_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Round Neck
                                                        T-Shirt</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$30.00</span>
                                                    <span class="new-price">$25.00</span>
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
                                                            <li><a href="#" class="ec-opt-sz" data-old="$30.00"
                                                                   data-new="$25.00" data-tooltip="Large">X</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$35.00"
                                                                   data-new="$30.00" data-tooltip="Extra Large">XL</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/8_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/8_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="new">New</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Digital Smart
                                                        Watches</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$100.00</span>
                                                    <span class="new-price">$80.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/8_2.jpg"
                                                                                  data-src-hover="assets/images/product-image/8_2.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#e9dddd;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/8_3.jpg"
                                                                   data-src-hover="assets/images/product-image/8_3.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#ffd5cb;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/8_4.jpg"
                                                                   data-src-hover="assets/images/product-image/8_4.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#92e4fd;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/3_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/3_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="new">New</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Designer
                                                        Leather Purses</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$40.00</span>
                                                    <span class="new-price">$30.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/3_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/3_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#75e3ff;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/3_2.jpg"
                                                                   data-src-hover="assets/images/product-image/3_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#11f7d8;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/3_3.jpg"
                                                                   data-src-hover="assets/images/product-image/3_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#acff7c;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/3_5.jpg"
                                                                   data-src-hover="assets/images/product-image/3_5.jpg"
                                                                   data-tooltip="Sky Blue"><span
                                                                        style="background-color:#e996fa;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/11_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/11_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="new">New</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Classic Leather
                                                        purse</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$100.00</span>
                                                    <span class="new-price">$80.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/11_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/11_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#dba4ff;"></span></a>
                                                            </li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/11_2.jpg"
                                                                   data-src-hover="assets/images/product-image/11_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#ff4a77;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/11_3.jpg"
                                                                   data-src-hover="assets/images/product-image/11_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#c9ff55;"></span></a>
                                                            </li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/11_4.jpg"
                                                                   data-src-hover="assets/images/product-image/11_4.jpg"
                                                                   data-tooltip="Sky Blue"><span
                                                                        style="background-color:#ffcc5e;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/12_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/12_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="sale">Sale</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Fancy Ladies
                                                        Sandal</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$100.00</span>
                                                    <span class="new-price">$80.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/12_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/12_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#db9dff;"></span></a>
                                                            </li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/12_2.jpg"
                                                                   data-src-hover="assets/images/product-image/12_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#00ffff;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/12_3.jpg"
                                                                   data-src-hover="assets/images/product-image/12_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#ffa7f3;"></span></a>
                                                            </li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/12_4.jpg"
                                                                   data-src-hover="assets/images/product-image/12_4.jpg"
                                                                   data-tooltip="Sky Blue"><span
                                                                        style="background-color:#89ff7e;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="ec-pro-size">
                                                        <span class="ec-pro-opt-label">Size</span>
                                                        <ul class="ec-opt-size">
                                                            <li class="active"><a href="#" class="ec-opt-sz"
                                                                                  data-old="$50.00" data-new="$40.00"
                                                                                  data-tooltip="Small">6</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$60.00"
                                                                   data-new="$50.00" data-tooltip="Medium">7</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$70.00"
                                                                   data-new="$60.00" data-tooltip="Large">8</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$80.00"
                                                                   data-new="$70.00" data-tooltip="Extra Large">9</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/13_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/13_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Womens Leather
                                                        Backpack</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$100.00</span>
                                                    <span class="new-price">$80.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/13_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/13_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#deffa4;"></span></a>
                                                            </li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/13_2.jpg"
                                                                   data-src-hover="assets/images/product-image/13_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#ffcdbe;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/13_3.jpg"
                                                                   data-src-hover="assets/images/product-image/13_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#ff94df;"></span></a>
                                                            </li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/13_4.jpg"
                                                                   data-src-hover="assets/images/product-image/13_4.jpg"
                                                                   data-tooltip="Sky Blue"><span
                                                                        style="background-color:#dd9bfc;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/14_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/14_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Beautiful Watch
                                                        for Women</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$100.00</span>
                                                    <span class="new-price">$80.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/14_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/14_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#bb8641;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/14_2.jpg"
                                                                   data-src-hover="assets/images/product-image/14_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#5dd677;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/14_3.jpg"
                                                                   data-src-hover="assets/images/product-image/14_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#32ffdd;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/14_4.jpg"
                                                                   data-src-hover="assets/images/product-image/14_4.jpg"
                                                                   data-tooltip="Sky Blue"><span
                                                                        style="background-color:#56ccfa;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="ec-pro-size">
                                                        <span class="ec-pro-opt-label">Size</span>
                                                        <ul class="ec-opt-size">
                                                            <li class="active"><a href="#" class="ec-opt-sz"
                                                                                  data-old="$70.00" data-new="$60.00"
                                                                                  data-tooltip="Small">6</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$80.00"
                                                                   data-new="$70.00" data-tooltip="Medium">7</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$90.00"
                                                                   data-new="$80.00" data-tooltip="Large">8</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$100.00"
                                                                   data-new="$90.00" data-tooltip="Extra Large">9</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-12 shop-all-btn"><a href="shop-left-sidebar-col-3.jsp">Shop All
                                            Collection</a></div>
                                </div>
                            </div>
                            <!-- ec 3rd Product tab end -->
                            <!-- ec 4th Product tab start -->
                            <div class="tab-pane fade" id="tab-pro-for-child">
                                <div class="row">
                                    <!-- Product Content -->
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/1_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/1_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="sale">Sale</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Cute Baby
                                                        Toy's</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
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
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/15_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/15_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="sale">Sale</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Clasic Baby
                                                        Shoes
                                                    </a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$80.00</span>
                                                    <span class="new-price">$70.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/15_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/15_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#ffacfb;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/15_2.jpg"
                                                                   data-src-hover="assets/images/product-image/15_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#90dfff;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/15_3.jpg"
                                                                   data-src-hover="assets/images/product-image/15_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#c6ff4a;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/15_4.jpg"
                                                                   data-src-hover="assets/images/product-image/15_4.jpg"
                                                                   data-tooltip="Sky Blue"><span
                                                                        style="background-color:#ffb158;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="ec-pro-size">
                                                        <span class="ec-pro-opt-label">Size</span>
                                                        <ul class="ec-opt-size">
                                                            <li class="active"><a href="#" class="ec-opt-sz"
                                                                                  data-old="$80.00" data-new="$70.00"
                                                                                  data-tooltip="Small">4</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$70.00"
                                                                   data-new="$60.00" data-tooltip="Medium">5</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$60.00"
                                                                   data-new="$50.00" data-tooltip="Large">6</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$50.00"
                                                                   data-new="$40.00" data-tooltip="Extra Large">7</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/16_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/16_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="new">New</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Baby Doctor Toy
                                                        Kit</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$50.00</span>
                                                    <span class="new-price">$40.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/16_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/16_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#6ee9ff;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/16_2.jpg"
                                                                   data-src-hover="assets/images/product-image/16_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#eb99ff;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/16_3.jpg"
                                                                   data-src-hover="assets/images/product-image/16_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#ff6464;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/16_4.jpg"
                                                                   data-src-hover="assets/images/product-image/16_4.jpg"
                                                                   data-tooltip="Sky Blue"><span
                                                                        style="background-color:#e476ff;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/17_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/17_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="sale">Sale</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Baby Leather
                                                        Purse</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$60.00</span>
                                                    <span class="new-price">$50.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/17_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/17_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#8ad2fc;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/17_2.jpg"
                                                                   data-src-hover="assets/images/product-image/17_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#ff8ef6;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/17_3.jpg"
                                                                   data-src-hover="assets/images/product-image/17_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#ffbe31;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/17_4.jpg"
                                                                   data-src-hover="assets/images/product-image/17_4.jpg"
                                                                   data-tooltip="Sky Blue"><span
                                                                        style="background-color:#a3ffba;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/9_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/9_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="sale">Sale</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Canvas Shoes
                                                        for Boy</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$30.00</span>
                                                    <span class="new-price">$25.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/9_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/9_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#21b7fc;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/9_2.jpg"
                                                                   data-src-hover="assets/images/product-image/9_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#1df0ff;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/9_3.jpg"
                                                                   data-src-hover="assets/images/product-image/9_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#94f7a1;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="ec-pro-size">
                                                        <span class="ec-pro-opt-label">Size</span>
                                                        <ul class="ec-opt-size">
                                                            <li class="active"><a href="#" class="ec-opt-sz"
                                                                                  data-old="$30.00" data-new="$25.00"
                                                                                  data-tooltip="Small">S</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$35.00"
                                                                   data-new="$27.00" data-tooltip="Medium">M</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$40.00"
                                                                   data-new="$30.00" data-tooltip="Large">X</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$45.00"
                                                                   data-new="$35.00" data-tooltip="Extra Large">XL</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/6_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/6_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Round Neck
                                                        T-Shirt</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$30.00</span>
                                                    <span class="new-price">$25.00</span>
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
                                                            <li><a href="#" class="ec-opt-sz" data-old="$30.00"
                                                                   data-new="$25.00" data-tooltip="Large">X</a></li>
                                                            <li><a href="#" class="ec-opt-sz" data-old="$35.00"
                                                                   data-new="$30.00" data-tooltip="Extra Large">XL</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/8_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/8_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="new">New</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Digital Smart
                                                        Watches</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$100.00</span>
                                                    <span class="new-price">$80.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/8_2.jpg"
                                                                                  data-src-hover="assets/images/product-image/8_2.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#e9dddd;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/8_3.jpg"
                                                                   data-src-hover="assets/images/product-image/8_3.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#ffd5cb;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/8_4.jpg"
                                                                   data-src-hover="assets/images/product-image/8_4.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#92e4fd;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content">
                                        <div class="ec-product-inner">
                                            <div class="ec-pro-image-outer">
                                                <div class="ec-pro-image">
                                                    <a href="product-left-sidebar.jsp" class="image">
                                                        <img class="main-image" src="assets/images/product-image/3_1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image" src="assets/images/product-image/3_2.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="percentage">20%</span>
                                                    <span class="flags">
                                                        <span class="new">New</span>
                                                    </span>
                                                    <a href="#" class="quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                                    <div class="ec-pro-actions">
                                                        <a href="compare.jsp" class="ec-btn-group compare"
                                                           title="Compare"><i class="fi fi-rr-arrows-repeat"></i></a>
                                                        <button title="Add To Cart" class="add-to-cart"><i
                                                                class="fi-rr-shopping-basket"></i> Add To Cart</button>
                                                        <a class="ec-btn-group wishlist" title="Wishlist"><i
                                                                class="fi-rr-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ec-pro-content">
                                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Designer
                                                        Leather Purses</a></h5>
                                                <div class="ec-pro-rating">
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star fill"></i>
                                                    <i class="ecicon eci-star"></i>
                                                </div>
                                                <span class="ec-price">
                                                    <span class="old-price">$40.00</span>
                                                    <span class="new-price">$30.00</span>
                                                </span>
                                                <div class="ec-pro-option">
                                                    <div class="ec-pro-color">
                                                        <span class="ec-pro-opt-label">Color</span>
                                                        <ul class="ec-opt-swatch ec-change-img">
                                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                  data-src="assets/images/product-image/3_1.jpg"
                                                                                  data-src-hover="assets/images/product-image/3_1.jpg"
                                                                                  data-tooltip="Gray"><span
                                                                        style="background-color:#75e3ff;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/3_2.jpg"
                                                                   data-src-hover="assets/images/product-image/3_2.jpg"
                                                                   data-tooltip="Orange"><span
                                                                        style="background-color:#11f7d8;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/3_3.jpg"
                                                                   data-src-hover="assets/images/product-image/3_3.jpg"
                                                                   data-tooltip="Green"><span
                                                                        style="background-color:#acff7c;"></span></a></li>
                                                            <li><a href="#" class="ec-opt-clr-img"
                                                                   data-src="assets/images/product-image/3_5.jpg"
                                                                   data-src-hover="assets/images/product-image/3_5.jpg"
                                                                   data-tooltip="Sky Blue"><span
                                                                        style="background-color:#e996fa;"></span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-12 shop-all-btn"><a href="shop-left-sidebar-col-3.jsp">Shop All
                                            Collection</a></div>
                                </div>
                            </div>
                            <!-- ec 4th Product tab end -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ec Product tab Area End -->

        <!-- ec Banner Section Start -->
        <section class="ec-banner section section-space-p">
            <h2 class="d-none">Banner</h2>
            <div class="container">
                <!-- ec Banners Start -->
                <div class="ec-banner-inner">
                    <!--ec Banner Start -->
                    <div class="ec-banner-block ec-banner-block-2">
                        <div class="row">
                            <div class="banner-block col-lg-6 col-md-12 margin-b-30" data-animation="slideInRight">
                                <div class="bnr-overlay">
                                    <img src="assets/images/banner/2.jpg" alt="" />
                                    <div class="banner-text">
                                        <span class="ec-banner-stitle">New Arrivals</span>
                                        <span class="ec-banner-title">mens<br> Sport shoes</span>
                                        <span class="ec-banner-discount">30% Discount</span>
                                    </div>
                                    <div class="banner-content">
                                        <span class="ec-banner-btn"><a href="#">Order Now</a></span>
                                    </div>
                                </div>
                            </div>
                            <div class="banner-block col-lg-6 col-md-12" data-animation="slideInLeft">
                                <div class="bnr-overlay">
                                    <img src="assets/images/banner/3.jpg" alt="" />
                                    <div class="banner-text">
                                        <span class="ec-banner-stitle">New Trending</span>
                                        <span class="ec-banner-title">Smart<br> watches</span>
                                        <span class="ec-banner-discount">Buy any 3 Items & get <br>20% Discount</span>
                                    </div>
                                    <div class="banner-content">
                                        <span class="ec-banner-btn"><a href="#">Order Now</a></span>
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

        <!--  Category Section Start -->
        <section class="section ec-category-section section-space-p" id="categories">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="section-title">
                            <h2 class="ec-bg-title">Our Top Collection</h2>

                        </div>
                    </div>
                </div>


            </div>
        </section>
        <!-- Category Section End -->

        <!--  Feature & Special Section Start -->
        <section class="section ec-fre-spe-section section-space-p" id="offers">
            <div class="container">
                <div class="row">
                    <!--  Feature Section Start -->
                    <div class="ec-fre-section col-lg-6 col-md-6 col-sm-6 margin-b-30" data-animation="slideInRight">
                        <div class="col-md-12 text-left">
                            <div class="section-title">
                                <h2 class="ec-bg-title">Feature Items</h2>
                                <h2 class="ec-title">Feature Items</h2>
                            </div>
                        </div>

                        <div class="ec-fre-products">
                            <div class="ec-fs-product">
                                <div class="ec-fs-pro-inner">
                                    <div class="ec-fs-pro-image-outer col-lg-6 col-md-6 col-sm-6">
                                        <div class="ec-fs-pro-image">
                                            <a href="product-left-sidebar.jsp" class="image"><img class="main-image"
                                                                                                  src="assets/images/product-image/1_1.jpg" alt="Product" /></a>
                                            <a href="#" class="quickview" data-link-action="quickview" title="Quick view"
                                               data-bs-toggle="modal" data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                        </div>
                                    </div>
                                    <div class="ec-fs-pro-content col-lg-6 col-md-6 col-sm-6">
                                        <h5 class="ec-fs-pro-title"><a href="product-left-sidebar.jsp">Baby Toy
                                                Teddybear</a>
                                        </h5>
                                        <div class="ec-fs-pro-rating">
                                            <span class="ec-fs-rating-icon">
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star"></i>
                                            </span>
                                            <span class="ec-fs-rating-text">4 Review</span>
                                        </div>
                                        <div class="ec-fs-price">
                                            <span class="old-price">$549.00</span>
                                            <span class="new-price">$480.00</span>
                                        </div>


                                        <div class="ec-fs-pro-desc">Lorem Ipsum is simply dummy text the printing and
                                            typesetting.
                                        </div>

                                        <div class="ec-fs-pro-btn">
                                            <a href="#" class="btn btn-lg btn-secondary">Remind Me</a>
                                            <a href="#" class="btn btn-lg btn-primary">Book Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ec-fs-product">
                                <div class="ec-fs-pro-inner">
                                    <div class="ec-fs-pro-image-outer col-lg-6 col-md-6 col-sm-6">
                                        <div class="ec-fs-pro-image">
                                            <a href="product-left-sidebar.jsp" class="image"><img class="main-image"
                                                                                                  src="assets/images/product-image/3_1.jpg" alt="Product" /></a>
                                            <a href="#" class="quickview" data-link-action="quickview" title="Quick view"
                                               data-bs-toggle="modal" data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                        </div>
                                    </div>
                                    <div class="ec-fs-pro-content col-lg-6 col-md-6 col-sm-6">
                                        <h5 class="ec-fs-pro-title"><a href="product-left-sidebar.jsp">Leather Purse For
                                                Women</a>
                                        </h5>
                                        <div class="ec-fs-pro-rating">
                                            <span class="ec-fs-rating-icon">
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                            </span>
                                            <span class="ec-fs-rating-text">4 Review</span>
                                        </div>
                                        <div class="ec-fs-price">
                                            <span class="old-price">$300.00</span>
                                            <span class="new-price">$250.00</span>
                                        </div>


                                        <div class="ec-fs-pro-desc">Lorem Ipsum is simply dummy text the printing and
                                            typesetting.
                                        </div>

                                        <div class="ec-fs-pro-btn">
                                            <a href="#" class="btn btn-lg btn-secondary">Remind Me</a>
                                            <a href="#" class="btn btn-lg btn-primary">Book Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--  Feature Section End -->
                    <!--  Special Section Start -->
                    <div class="ec-spe-section col-lg-6 col-md-6 col-sm-6" data-animation="slideInLeft">
                        <div class="col-md-12 text-left">
                            <div class="section-title">
                                <h2 class="ec-bg-title">Limited Time Offer</h2>
                                <h2 class="ec-title">Limited Time Offer</h2>
                            </div>
                        </div>

                        <div class="ec-spe-products">
                            <div class="ec-fs-product">
                                <div class="ec-fs-pro-inner">
                                    <div class="ec-fs-pro-image-outer col-lg-6 col-md-6 col-sm-6">
                                        <div class="ec-fs-pro-image">
                                            <a href="product-left-sidebar.jsp" class="image"><img class="main-image"
                                                                                                  src="assets/images/product-image/8_1.jpg" alt="Product" /></a>
                                            <a href="#" class="quickview" data-link-action="quickview" title="Quick view"
                                               data-bs-toggle="modal" data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                        </div>
                                    </div>
                                    <div class="ec-fs-pro-content col-lg-6 col-md-6 col-sm-6">
                                        <h5 class="ec-fs-pro-title"><a href="product-left-sidebar.jsp">Smart watch
                                                Firebolt</a>
                                        </h5>
                                        <div class="ec-fs-pro-rating">
                                            <span class="ec-fs-rating-icon">
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star"></i>
                                            </span>
                                            <span class="ec-fs-rating-text">4 Review</span>
                                        </div>
                                        <div class="ec-fs-price">
                                            <span class="old-price">$200.00</span>
                                            <span class="new-price">$180.00</span>
                                        </div>

                                        <div class="ec-fs-pro-desc">Lorem Ipsum is simply dummy text the printing and
                                            typesetting.
                                        </div>

                                        <div class="ec-fs-pro-btn">
                                            <a href="#" class="btn btn-lg btn-secondary">Remind Me</a>
                                            <a href="#" class="btn btn-lg btn-primary">Book Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ec-fs-product">
                                <div class="ec-fs-pro-inner">
                                    <div class="ec-fs-pro-image-outer col-lg-6 col-md-6 col-sm-6">
                                        <div class="ec-fs-pro-image">
                                            <a href="product-left-sidebar.jsp" class="image"><img class="main-image"
                                                                                                  src="assets/images/product-image/10_1.jpg" alt="Product" /></a>
                                            <a href="#" class="quickview" data-link-action="quickview" title="Quick view"
                                               data-bs-toggle="modal" data-bs-target="#ec_quickview_modal"><i class="fi-rr-eye"></i></a>
                                        </div>
                                    </div>
                                    <div class="ec-fs-pro-content col-lg-6 col-md-6 col-sm-6">
                                        <h5 class="ec-fs-pro-title"><a href="product-left-sidebar.jsp">Casual Shoes Men</a>
                                        </h5>
                                        <div class="ec-fs-pro-rating">
                                            <span class="ec-fs-rating-icon">
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                            </span>
                                            <span class="ec-fs-rating-text">4 Review</span>
                                        </div>
                                        <div class="ec-fs-price">
                                            <span class="old-price">$120.00</span>
                                            <span class="new-price">$95.00</span>
                                        </div>


                                        <div class="ec-fs-pro-desc">Lorem Ipsum is simply dummy text the printing and
                                            typesetting.
                                        </div>

                                        <div class="ec-fs-pro-btn">
                                            <a href="#" class="btn btn-lg btn-secondary">Remind Me</a>
                                            <a href="#" class="btn btn-lg btn-primary">Book Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--  Special Section End -->
                </div>
            </div>
        </section>
        <!-- Feature & Special Section End -->


        <!--  services Section Start -->
        <section class="section ec-services-section section-space-p" id="services">
            <h2 class="d-none">Services</h2>
            <div class="container">
                <div class="row">
                    <div class="ec_ser_content ec_ser_content_1 col-sm-12 col-md-6 col-lg-3" data-animation="zoomIn">
                        <div class="ec_ser_inner">
                            <div class="ec-service-image">
                                <i class="fi fi-ts-truck-moving"></i>
                            </div>
                            <div class="ec-service-desc">
                                <h2>Free Shipping</h2>
                                <p>Free shipping on all US order or order above $200</p>
                            </div>
                        </div>
                    </div>
                    <div class="ec_ser_content ec_ser_content_2 col-sm-12 col-md-6 col-lg-3" data-animation="zoomIn">
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
                    <div class="ec_ser_content ec_ser_content_3 col-sm-12 col-md-6 col-lg-3" data-animation="zoomIn">
                        <div class="ec_ser_inner">
                            <div class="ec-service-image">
                                <i class="fi fi-ts-badge-percent"></i>
                            </div>
                            <div class="ec-service-desc">
                                <h2>30 Days Return</h2>
                                <p>Simply return it within 30 days for an exchange</p>
                            </div>
                        </div>
                    </div>
                    <div class="ec_ser_content ec_ser_content_4 col-sm-12 col-md-6 col-lg-3" data-animation="zoomIn">
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

        <!--  offer Section Start -->
        <section class="section ec-offer-section section-space-p section-space-m">
            <h2 class="d-none">Offer</h2>
            <div class="container">
                <div class="row justify-content-end">
                    <div class="col-xl-6 col-lg-7 col-md-7 col-sm-7 align-self-center ec-offer-content">
                        <h2 class="ec-offer-title">Sunglasses</h2>
                        <h3 class="ec-offer-stitle" data-animation="slideInDown">Super Offer</h3>
                        <span class="ec-offer-img" data-animation="zoomIn"><img src="assets/images/offer-image/1.png"
                                                                                alt="offer image" /></span>
                        <span class="ec-offer-desc">Acetate Frame Sunglasses</span>
                        <span class="ec-offer-price">$40.00 Only</span>
                        <a class="btn btn-primary" href="shop-left-sidebar-col-3.jsp" data-animation="zoomIn">Shop Now</a>
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
                            <p class="sub-title">Browse The Collection of Top Products</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- New Product Content -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content" data-animation="flipInY">
                        <div class="ec-product-inner">
                            <div class="ec-pro-image-outer">
                                <div class="ec-pro-image">
                                    <a href="product-left-sidebar.jsp" class="image">
                                        <img class="main-image" src="assets/images/product-image/9_1.jpg" alt="Product" />
                                        <img class="hover-image" src="assets/images/product-image/9_2.jpg" alt="Product" />
                                    </a>
                                    <span class="flags">
                                        <span class="sale">Sale</span>
                                    </span>
                                    <a href="#" class="quickview" data-link-action="quickview" title="Quick view"
                                       data-bs-toggle="modal" data-bs-target="#ec_quickview_modal"><i
                                            class="fi-rr-eye"></i></a>
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
                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Full Sleeve Cap T-Shirt</a>
                                </h5>
                                <div class="ec-pro-rating">
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star"></i>
                                </div>
                                <span class="ec-price">
                                    <span class="old-price">$20.00</span>
                                    <span class="new-price">$15.00</span>
                                </span>
                                <div class="ec-pro-option">
                                    <div class="ec-pro-color">
                                        <span class="ec-pro-opt-label">Color</span>
                                        <ul class="ec-opt-swatch ec-change-img">
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/9_1.jpg"
                                                   data-src-hover="assets/images/product-image/9_1.jpg"
                                                   data-tooltip="Orange"><span
                                                        style="background-color:#74c7ff;"></span></a></li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/9_2.jpg"
                                                   data-src-hover="assets/images/product-image/9_2.jpg"
                                                   data-tooltip="Green"><span style="background-color:#7af6ff;"></span></a>
                                            </li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/9_3.jpg"
                                                   data-src-hover="assets/images/product-image/9_3.jpg"
                                                   data-tooltip="Sky Blue"><span
                                                        style="background-color:#85ffeb;"></span></a></li>
                                        </ul>
                                    </div>
                                    <div class="ec-pro-size">
                                        <span class="ec-pro-opt-label">Size</span>
                                        <ul class="ec-opt-size">
                                            <li class="active"><a href="#" class="ec-opt-sz" data-old="$20.00"
                                                                  data-new="$15.00" data-tooltip="Small">S</a></li>
                                            <li><a href="#" class="ec-opt-sz" data-old="$22.00" data-new="$17.00"
                                                   data-tooltip="Medium">M</a></li>
                                            <li><a href="#" class="ec-opt-sz" data-old="$25.00" data-new="$20.00"
                                                   data-tooltip="Large">X</a></li>
                                            <li><a href="#" class="ec-opt-sz" data-old="$27.00" data-new="$22.00"
                                                   data-tooltip="Extra Large">XL</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content" data-animation="flipInY">
                        <div class="ec-product-inner">
                            <div class="ec-pro-image-outer">
                                <div class="ec-pro-image">
                                    <a href="product-left-sidebar.jsp" class="image">
                                        <img class="main-image" src="assets/images/product-image/11_1.jpg" alt="Product" />
                                        <img class="hover-image" src="assets/images/product-image/11_2.jpg" alt="Product" />
                                    </a>
                                    <span class="flags">
                                        <span class="new">New</span>
                                    </span>
                                    <a href="#" class="quickview" data-link-action="quickview" title="Quick view"
                                       data-bs-toggle="modal" data-bs-target="#ec_quickview_modal"><i
                                            class="fi-rr-eye"></i></a>
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
                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Classic Leather purse</a></h5>
                                <div class="ec-pro-rating">
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star"></i>
                                </div>
                                <span class="ec-price">
                                    <span class="old-price">$100.00</span>
                                    <span class="new-price">$80.00</span>
                                </span>
                                <div class="ec-pro-option">
                                    <div class="ec-pro-color">
                                        <span class="ec-pro-opt-label">Color</span>
                                        <ul class="ec-opt-swatch ec-change-img">
                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                  data-src="assets/images/product-image/11_1.jpg"
                                                                  data-src-hover="assets/images/product-image/11_1.jpg"
                                                                  data-tooltip="Gray"><span style="background-color:#dba4ff;"></span></a>
                                            </li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/11_2.jpg"
                                                   data-src-hover="assets/images/product-image/11_2.jpg"
                                                   data-tooltip="Orange"><span
                                                        style="background-color:#ff4a77;"></span></a></li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/11_3.jpg"
                                                   data-src-hover="assets/images/product-image/11_3.jpg"
                                                   data-tooltip="Green"><span style="background-color:#c9ff55;"></span></a>
                                            </li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/11_4.jpg"
                                                   data-src-hover="assets/images/product-image/11_4.jpg"
                                                   data-tooltip="Sky Blue"><span
                                                        style="background-color:#ffcc5e;"></span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content" data-animation="flipInY">
                        <div class="ec-product-inner">
                            <div class="ec-pro-image-outer">
                                <div class="ec-pro-image">
                                    <a href="product-left-sidebar.jsp" class="image">
                                        <img class="main-image" src="assets/images/product-image/12_1.jpg" alt="Product" />
                                        <img class="hover-image" src="assets/images/product-image/12_2.jpg" alt="Product" />
                                    </a>
                                    <span class="percentage">5%</span>
                                    <a href="#" class="quickview" data-link-action="quickview" title="Quick view"
                                       data-bs-toggle="modal" data-bs-target="#ec_quickview_modal"><i
                                            class="fi-rr-eye"></i></a>
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
                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Fancy Ladies Sandal</a></h5>
                                <div class="ec-pro-rating">
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star"></i>
                                </div>
                                <span class="ec-price">
                                    <span class="old-price">$100.00</span>
                                    <span class="new-price">$80.00</span>
                                </span>
                                <div class="ec-pro-option">
                                    <div class="ec-pro-color">
                                        <span class="ec-pro-opt-label">Color</span>
                                        <ul class="ec-opt-swatch ec-change-img">
                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                  data-src="assets/images/product-image/12_1.jpg"
                                                                  data-src-hover="assets/images/product-image/12_1.jpg"
                                                                  data-tooltip="Gray"><span style="background-color:#db9dff;"></span></a>
                                            </li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/12_2.jpg"
                                                   data-src-hover="assets/images/product-image/12_2.jpg"
                                                   data-tooltip="Orange"><span
                                                        style="background-color:#00ffff;"></span></a></li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/12_3.jpg"
                                                   data-src-hover="assets/images/product-image/12_3.jpg"
                                                   data-tooltip="Green"><span style="background-color:#ffa7f3;"></span></a>
                                            </li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/12_4.jpg"
                                                   data-src-hover="assets/images/product-image/12_4.jpg"
                                                   data-tooltip="Sky Blue"><span
                                                        style="background-color:#89ff7e;"></span></a></li>
                                        </ul>
                                    </div>
                                    <div class="ec-pro-size">
                                        <span class="ec-pro-opt-label">Size</span>
                                        <ul class="ec-opt-size">
                                            <li class="active"><a href="#" class="ec-opt-sz" data-old="$50.00"
                                                                  data-new="$40.00" data-tooltip="Small">6</a></li>
                                            <li><a href="#" class="ec-opt-sz" data-old="$60.00" data-new="$50.00"
                                                   data-tooltip="Medium">7</a></li>
                                            <li><a href="#" class="ec-opt-sz" data-old="$70.00" data-new="$60.00"
                                                   data-tooltip="Large">8</a></li>
                                            <li><a href="#" class="ec-opt-sz" data-old="$80.00" data-new="$70.00"
                                                   data-tooltip="Extra Large">9</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6  ec-product-content" data-animation="flipInY">
                        <div class="ec-product-inner">
                            <div class="ec-pro-image-outer">
                                <div class="ec-pro-image">
                                    <a href="product-left-sidebar.jsp" class="image">
                                        <img class="main-image" src="assets/images/product-image/13_1.jpg" alt="Product" />
                                        <img class="hover-image" src="assets/images/product-image/13_2.jpg" alt="Product" />
                                    </a>
                                    <a href="#" class="quickview" data-link-action="quickview" title="Quick view"
                                       data-bs-toggle="modal" data-bs-target="#ec_quickview_modal"><i
                                            class="fi-rr-eye"></i></a>
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
                                <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Womens Leather Backpack</a>
                                </h5>
                                <div class="ec-pro-rating">
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star"></i>
                                </div>
                                <span class="ec-price">
                                    <span class="old-price">$100.00</span>
                                    <span class="new-price">$80.00</span>
                                </span>
                                <div class="ec-pro-option">
                                    <div class="ec-pro-color">
                                        <span class="ec-pro-opt-label">Color</span>
                                        <ul class="ec-opt-swatch ec-change-img">
                                            <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                  data-src="assets/images/product-image/13_1.jpg"
                                                                  data-src-hover="assets/images/product-image/13_1.jpg"
                                                                  data-tooltip="Gray"><span style="background-color:#deffa4;"></span></a>
                                            </li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/13_2.jpg"
                                                   data-src-hover="assets/images/product-image/13_2.jpg"
                                                   data-tooltip="Orange"><span
                                                        style="background-color:#ffcdbe;"></span></a></li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/13_3.jpg"
                                                   data-src-hover="assets/images/product-image/13_3.jpg"
                                                   data-tooltip="Green"><span style="background-color:#ff94df;"></span></a>
                                            </li>
                                            <li><a href="#" class="ec-opt-clr-img"
                                                   data-src="assets/images/product-image/13_4.jpg"
                                                   data-src-hover="assets/images/product-image/13_4.jpg"
                                                   data-tooltip="Sky Blue"><span
                                                        style="background-color:#dd9bfc;"></span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 shop-all-btn"><a href="shop-left-sidebar-col-3.jsp">Shop All Collection</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- New Product end -->

        <!-- ec testmonial Start -->
        <section class="section ec-test-section section-space-ptb-100 section-space-m" id="reviews">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="section-title mb-0">
                            <h2 class="ec-bg-title">Testimonial</h2>
                            <h2 class="ec-title">Client Review</h2>
                            <p class="sub-title mb-3">What say client about us</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="ec-test-outer">
                        <ul id="ec-testimonial-slider">
                            <li class="ec-test-item">
                                <i class="fi-rr-quote-right top"></i>
                                <div class="ec-test-inner">
                                    <div class="ec-test-img"><img alt="testimonial" title="testimonial"
                                                                  src="assets/images/testimonial/1.jpg" /></div>
                                    <div class="ec-test-content">
                                        <div class="ec-test-desc">Lorem Ipsum is simply dummy text of the printing and
                                            typesetting industry. Lorem Ipsum has been the industry's standard dummy text
                                            ever since the 1500s, when an unknown printer took a galley of type and
                                            scrambled it to make a type specimen</div>
                                        <div class="ec-test-name">John Doe</div>
                                        <div class="ec-test-designation">General Manager</div>
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
                                    <div class="ec-test-img"><img alt="testimonial" title="testimonial"
                                                                  src="assets/images/testimonial/2.jpg" /></div>
                                    <div class="ec-test-content">
                                        <div class="ec-test-desc">Lorem Ipsum is simply dummy text of the printing and
                                            typesetting industry. Lorem Ipsum has been the industry's standard dummy text
                                            ever since the 1500s, when an unknown printer took a galley of type and
                                            scrambled it to make a type specimen</div>
                                        <div class="ec-test-name">John Doe</div>
                                        <div class="ec-test-designation">General Manager</div>
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
                                    <div class="ec-test-img"><img alt="testimonial" title="testimonial"
                                                                  src="assets/images/testimonial/3.jpg" /></div>
                                    <div class="ec-test-content">
                                        <div class="ec-test-desc">Lorem Ipsum is simply dummy text of the printing and
                                            typesetting industry. Lorem Ipsum has been the industry's standard dummy text
                                            ever since the 1500s, when an unknown printer took a galley of type and
                                            scrambled it to make a type specimen</div>
                                        <div class="ec-test-name">John Doe</div>
                                        <div class="ec-test-designation">General Manager</div>
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

        <!-- Ec Brand Section Start -->
        <section class="section ec-brand-area section-space-p">
            <h2 class="d-none">Brand</h2>
            <div class="container">
                <div class="row">
                    <div class="ec-brand-outer">
                        <ul id="ec-brand-slider">
                            <li class="ec-brand-item" data-animation="zoomIn">
                                <div class="ec-brand-img"><a href="#"><img alt="brand" title="brand"
                                                                           src="assets/images/brand-image/1.png" /></a></div>
                            </li>
                            <li class="ec-brand-item" data-animation="zoomIn">
                                <div class="ec-brand-img"><a href="#"><img alt="brand" title="brand"
                                                                           src="assets/images/brand-image/2.png" /></a></div>
                            </li>
                            <li class="ec-brand-item" data-animation="zoomIn">
                                <div class="ec-brand-img"><a href="#"><img alt="brand" title="brand"
                                                                           src="assets/images/brand-image/3.png" /></a></div>
                            </li>
                            <li class="ec-brand-item" data-animation="zoomIn">
                                <div class="ec-brand-img"><a href="#"><img alt="brand" title="brand"
                                                                           src="assets/images/brand-image/4.png" /></a></div>
                            </li>
                            <li class="ec-brand-item" data-animation="zoomIn">
                                <div class="ec-brand-img"><a href="#"><img alt="brand" title="brand"
                                                                           src="assets/images/brand-image/5.png" /></a></div>
                            </li>
                            <li class="ec-brand-item" data-animation="zoomIn">
                                <div class="ec-brand-img"><a href="#"><img alt="brand" title="brand"
                                                                           src="assets/images/brand-image/6.png" /></a></div>
                            </li>
                            <li class="ec-brand-item" data-animation="zoomIn">
                                <div class="ec-brand-img"><a href="#"><img alt="brand" title="brand"
                                                                           src="assets/images/brand-image/7.png" /></a></div>
                            </li>
                            <li class="ec-brand-item" data-animation="zoomIn">
                                <div class="ec-brand-img"><a href="#"><img alt="brand" title="brand"
                                                                           src="assets/images/brand-image/8.png" /></a></div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Ec Brand Section End -->

        <!-- Ec Instagram Start -->
        <section class="section ec-instagram-section module section-space-p" id="insta">
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
                                    <img src="assets/images/instragram-image/1.jpg" >
                                </div>
                            </div>
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <img src="assets/images/instragram-image/2.jpg">
                                </div>
                            </div>
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <img src="assets/images/instragram-image/3.jpg">
                                </div>
                            </div>
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <img src="assets/images/instragram-image/4.jpg" >
                                </div>
                            </div>
                            <!-- instagram item -->
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <img src="assets/images/instragram-image/5.jpg">
                                </div>
                            </div>
                            <!-- instagram item -->
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <img src="assets/images/instragram-image/6.jpg">
                                </div>
                            </div>
                            <!-- instagram item -->
                            <!-- instagram item -->
                            <div class="ec-insta-item">
                                <div class="ec-insta-inner">
                                    <img src="assets/images/instragram-image/7.jpg">
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
                                            <li class="ec-footer-link"><a href="track-order.jsp">Delivery Information</a>
                                            </li>
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
                                    <div class="ec-copy">Copyright Â© <span id="copyright_year"></span> <a class="site-name text-upper"
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
                                                    <li><span style="background-color:#ebbf60;"></span></li>
                                                    <li><span style="background-color:#75e3ff;"></span></li>
                                                    <li><span style="background-color:#11f7d8;"></span></li>
                                                    <li><span style="background-color:#acff7c;"></span></li>
                                                    <li><span style="background-color:#e996fa;"></span></li>
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

        <!-- Newsletter Modal Start -->
        <div id="ec-popnews-bg"></div>
        <div id="ec-popnews-box">
            <div id="ec-popnews-close"><i class="ecicon eci-close"></i></div>
            <div class="row">
                <div class="col-md-6 disp-no-767">
                    <img src="assets/images/banner/newsletter.png" alt="newsletter">
                </div>
                <div class="col-md-6">
                    <div id="ec-popnews-box-content">
                        <h2>Subscribe Newsletter</h2>
                        <p>Subscribe the ekka ecommerce to get in touch and get the future update. </p>
                        <form id="ec-popnews-form" action="#" method="post">
                            <input type="email" name="newsemail" placeholder="Email Address" required />
                            <button type="button" class="btn btn-primary" name="subscribe">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Newsletter Modal end -->

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
                                class="ec-cart-noti ec-header-count  wishlist-count-label">0</span></a>
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
                        <img class="whatsapp" src="assets/images/common/whatsapp.png" alt="whatsapp icon">
                    </div>
                </div>
            </div>
            <!--/ End Right Floating Button-->
        </div>
        <!-- Whatsapp end -->



        <!-- Vendor JS -->
        <script src="<%= request.getContextPath() %>/assets/js/vendor/jquery-3.5.1.min.js"></script>
        <script src="<%= request.getContextPath() %>/assets/js/vendor/popper.min.js"></script>
        <script src="<%= request.getContextPath() %>/assets/js/vendor/bootstrap.min.js"></script>
        <script src="<%= request.getContextPath() %>/assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>
        <script src="<%= request.getContextPath() %>/assets/js/vendor/modernizr-3.11.2.min.js"></script>

        <!--Plugins JS-->
        <script src="<%= request.getContextPath() %>/assets/js/plugins/swiper-bundle.min.js"></script>
        <script src="<%= request.getContextPath() %>/assets/js/plugins/countdownTimer.min.js"></script>
        <script src="<%= request.getContextPath() %>/assets/js/plugins/scrollup.js"></script>
        <script src="<%= request.getContextPath() %>/assets/js/plugins/jquery.zoom.min.js"></script>
        <script src="<%= request.getContextPath() %>/assets/js/plugins/slick.min.js"></script>
        <script src="<%= request.getContextPath() %>/assets/js/plugins/infiniteslidev2.js"></script>
        <script src="<%= request.getContextPath() %>/assets/js/vendor/jquery.magnific-popup.min.js"></script>
        <script src="<%= request.getContextPath() %>/assets/js/plugins/jquery.sticky-sidebar.js"></script>

        <!-- Main Js -->
        <script src="<%= request.getContextPath() %>/assets/js/vendor/index.js"></script>
        <script src="<%= request.getContextPath() %>/assets/js/main.js"></script>
    </body>


    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:31:52 GMT -->
</html>