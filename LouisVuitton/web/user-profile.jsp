<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.Users" %>

<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/user-profile.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:32:37 GMT -->
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
                                        <li><a class="dropdown-item" href="login">Login</a></li>
                                    </ul>
                                </div>
                                <!-- Header User End -->
                                <!-- Header Cart Start -->
                                <a href="wishlist.jsp" class="ec-header-btn ec-header-wishlist">
                                    <div class="header-icon"><i class="fi-rr-heart"></i></div>
                                    <span class="ec-header-count">0</span>
                                </a>
                                <!-- Header Cart End -->
                                <!-- Header Cart Start -->
                                <a href="#ec-side-cart" class="ec-header-btn ec-side-toggle">
                                    <div class="header-icon"><i class="fi-rr-shopping-bag"></i></div>
                                    <span class="ec-header-count cart-count-lable">0</span>
                                </a>
                                <!-- Header Cart End -->
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
                                            <li><a class="dropdown-item" href="user-profile">Edit Profile</a></li>
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
                                    <a href="wishlist.jsp" class="ec-header-btn ec-header-wishlist">
                                        <div class="header-icon"><i class="fi-rr-heart"></i></div>
                                        <span class="ec-header-count">0</span>
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
                                <ul>
                                    <li><a href="home">Home</a></li>
                                    <li><a href="shop-left-sidebar-col-3.jsp">Shop</a></li>
                                    <li><a href="checkout.jsp">Checkout</a></li>   
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
                            <li><a href="checkout.jsp">Checkout</a></li> 
                            <li><a href="about-us">About Us</a></li>
                            <li><a href="contact-us">Contact Us</a></li>
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


        <!-- Ec breadcrumb start -->
        <div class="sticky-header-next-sec  ec-breadcrumb section-space-mb">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="row ec_breadcrumb_inner">
                            <div class="col-md-6 col-sm-12">
                                <h2 class="ec-breadcrumb-title">User Profile</h2>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <!-- ec-breadcrumb-list start -->
                                <ul class="ec-breadcrumb-list">
                                    <li class="ec-breadcrumb-item"><a href="home">Home</a></li>
                                    <li class="ec-breadcrumb-item active">Profile</li>
                                </ul>
                                <!-- ec-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Ec breadcrumb end -->

        <!-- User profile section -->
        <section class="ec-page-content ec-vendor-uploads ec-user-account section-space-p">
            <div class="container">
                <div class="row">
                    <!-- Sidebar Area Start -->
                    <div class="ec-shop-leftside ec-vendor-sidebar col-lg-3 col-md-12">
                        <div class="ec-sidebar-wrap ec-border-box">
                            <!-- Sidebar Category Block -->
                            <div class="ec-sidebar-block">
                                <div class="ec-vendor-block">
                                    <div class="ec-vendor-block-bg"></div>
                                    <div class="ec-vendor-block-detail">
                                        <img class="v-img" src="<%= user.getAvatar() != null ? user.getAvatar() : "assets/images/user/default.jpg" %>" alt="user image">
                                        <h5><%= user.getName() %></h5>
                                    </div> 
                                    <div class="ec-vendor-block-items">
                                        <ul>
                                            <li><a href="profile">User Profile</a></li>
                                            <li><a href="user-history.jsp">History</a></li>
                                            <li><a href="wishlist.jsp">Wishlist</a></li>
                                            <li><a href="cart.jsp">Cart</a></li>
                                            <li><a href="checkout.jsp">Checkout</a></li>
                                            <li><a href="track-order.jsp">Track Order</a></li>
                                            <li><a href="user-invoice.jsp">Invoice</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ec-shop-rightside col-lg-9 col-md-12">
                        <div class="ec-vendor-dashboard-card ec-vendor-setting-card">
                            <div class="ec-vendor-card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="ec-vendor-block-profile">
                                            <div class="ec-vendor-block-img space-bottom-30">
                                                <div class="ec-vendor-block-bg">
                                                    <a href="#" class="btn btn-lg btn-primary"
                                                       data-link-action="editmodal" title="Edit Detail"
                                                       data-bs-toggle="modal" data-bs-target="#edit_modal">Edit Detail</a>
                                                </div>

                                                <div class="ec-vendor-block-detail">
                                                    <img class="v-img" src="<%= user.getAvatar() != null ? user.getAvatar() : "assets/images/user/default.jpg" %>" alt="user image">
                                                    <h5 class="name"><%= user.getName() %></h5>
                                                </div>
                                                <p>Hello <span><%= user.getName() %>!</span></p>
                                                <p>From your account you can easily view and track orders. You can manage and change your account information like address, contact information and history of orders.</p>
                                            </div>
                                            <h5>Account Information</h5>

                                            <div class="row">
                                                <div class="col-md-6 col-sm-12">
                                                    <div class="ec-vendor-detail-block ec-vendor-block-email space-bottom-30">
                                                        <h6>E-mail address</h6>
                                                        <ul>
                                                            <li><strong>Email : </strong><%= user.getEmail() %></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-12">
                                                    <div class="ec-vendor-detail-block ec-vendor-block-contact space-bottom-30">
                                                        <h6>Contact Number</h6>
                                                        <ul>
                                                            <li><strong>Phone Number : </strong><%= user.getPhone() != null ? user.getPhone() : "N/A" %></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-12">
                                                    <div class="ec-vendor-detail-block ec-vendor-block-address space-bottom-30">
                                                        <h6>Address</h6>
                                                        <ul>
                                                            <li><strong>Home : </strong><%= user.getAddress() != null ? user.getAddress() : "N/A" %></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-12">
                                                    <div class="ec-vendor-detail-block ec-vendor-block-address space-bottom-30">
                                                        <h6>Shipping Address</h6>
                                                        <ul>
                                                            <li><strong>Office : </strong><%= user.getAddress() != null ? user.getAddress() : "N/A" %></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-12">
                                                    <div class="ec-vendor-detail-block ec-vendor-block-address">
                                                        <h6>Gender</h6>
                                                        <ul>
                                                            <li><strong>Gender : </strong><%= user.getGender() != null ? user.getGender() : "N/A" %></li>
                                                        </ul>
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
            </div>
        </section>
        <!-- End User profile section -->

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

        <!-- Modal -->
        <div class="modal fade" id="edit_modal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="row">
                            <div class="ec-vendor-block-img space-bottom-30">
                                <div class="ec-vendor-block-bg cover-upload">
                                    <div class="thumb-upload">
                                        <div class="thumb-edit">
                                            <input type='file' id="thumbUpload01" class="ec-image-upload" accept=".png, .jpg, .jpeg" />
                                            <label><i class="fi-rr-edit"></i></label>
                                        </div>
                                        <div class="thumb-preview ec-preview">
                                            <div class="image-thumb-preview">
                                                <img class="image-thumb-preview ec-image-preview v-img" src="assets/images/banner/8.jpg" alt="edit" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ec-vendor-block-detail">
                                    <div class="thumb-upload">
                                        <div class="thumb-edit">
                                            <input type='file' id="thumbUpload02" class="ec-image-upload" accept=".png, .jpg, .jpeg" />
                                            <label><i class="fi-rr-edit"></i></label>
                                        </div>
                                        <div class="thumb-preview ec-preview">
                                            <div class="image-thumb-preview">
                                                <img class="image-thumb-preview ec-image-preview v-img" src="assets/images/user/<%= user.getAvatar() %>" alt="edit" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ec-vendor-upload-detail">
                                    <form class="row g-3" id="editForm" action="profile" method="POST" >
                                        <div class="col-md-6 space-t-15">
                                            <label class="form-label">First name</label>
                                            <input type="text" class="form-control" name="firstName" value="<%= user != null ? user.getName().split(" ")[0] : "" %>">
                                        </div>
                                        <div class="col-md-6 space-t-15">
                                            <label class="form-label">Last name</label>
                                            <input type="text" class="form-control" name="lastName" value="<%= user != null ? user.getName().substring(user.getName().indexOf(" ") + 1) : "" %>">
                                        </div>
                                        <div class="col-md-12 space-t-15">
                                            <label class="form-label">Address</label>
                                            <input type="text" class="form-control" name="address" value="<%= user != null ? user.getAddress() : "" %>">
                                        </div>
                                        <div class="col-md-12 space-t-15">
                                            <label class="form-label">Email</label>
                                            <input type="text" class="form-control" name="email" value="<%= user != null ? user.getEmail() : "" %>">
                                        </div>
                                        <div class="col-md-12 space-t-15">
                                            <label class="form-label">Phone number</label>
                                            <input type="text" class="form-control" name="phone" value="<%= user != null ? user.getPhone() : "" %>">
                                        </div>
                                        <div class="col-md-12 space-t-15">
                                            <label class="form-label">Gender</label>
                                            <input type="text" class="form-control" name="gender" value="<%= user != null ? user.getGender() : "" %>">
                                        </div>
                                        <div class="col-md-12 space-t-15">
                                            <button type="submit" class="btn btn-primary">Update</button>
                                            <a href="#" class="btn btn-lg btn-secondary qty_close" data-bs-dismiss="modal" aria-label="Close">Close</a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <% String message = (String) request.getAttribute("message"); %>
        <% String status = (String) request.getAttribute("status"); %>
        <% if (message != null) { %>
        <div class="alert alert-<%= "success".equals(status) ? "success" : "danger" %>">
            <%= message %>
        </div>
        <% } %>


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
        <script src="assets/js/plugins/nouislider.js"></script>

        <!-- Main Js -->
        <script src="assets/js/vendor/index.js"></script>
        <script src="assets/js/main.js"></script>

    </body>

    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/user-profile.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:32:38 GMT -->
</html>