<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.Users" %>

<!DOCTYPE html>
<html lang="en">
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
    <body class="checkout_page">
        <div id="ec-overlay">
            <div class="ec-ellipsis">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>

        <!-- Header start  -->
        <jsp:include page="header.jsp"></jsp:include>
        <!-- Header End  -->

        <!-- Ec breadcrumb start -->
        <div class="sticky-header-next-sec  ec-breadcrumb section-space-mb">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="row ec_breadcrumb_inner">
                            <div class="col-md-6 col-sm-12">
                                <h2 class="ec-breadcrumb-title">Checkout</h2>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <!-- ec-breadcrumb-list start -->
                                <ul class="ec-breadcrumb-list">
                                    <li class="ec-breadcrumb-item"><a href="index.jsp">Home</a></li>
                                    <li class="ec-breadcrumb-item active">Checkout</li>
                                </ul>
                                <!-- ec-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Ec breadcrumb end -->

        <!-- Ec checkout page -->
        <section class="ec-page-content section-space-p">
            <div class="container">
                <div class="row">
                    <div class="ec-checkout-leftside col-lg-8 col-md-12 ">
                        <!-- checkout content Start -->
                        <div class="ec-checkout-content">
                            <div class="ec-checkout-inner">
                                <div class="ec-checkout-wrap margin-bottom-30 padding-bottom-3">
                                    <div class="ec-checkout-block ec-check-bill">
                                        <h3 class="ec-checkout-title">Billing Details</h3>
                                        <div class="ec-bl-block-content">
                                            <div class="ec-check-subtitle">Checkout Options</div>
                                            <span class="ec-bill-option">
                                                <span>
                                                    <input type="radio" id="bill1" name="radio-group">
                                                    <label for="bill1">I want to use an existing address</label>
                                                </span>
                                                <span>
                                                    <input type="radio" id="bill2" name="radio-group" checked>
                                                    <label for="bill2">I want to use new address</label>
                                                </span>
                                            </span>
                                            <div class="ec-check-bill-form">
                                                <form action="#" method="post">
                                                    <span class="ec-bill-wrap ec-bill-half">
                                                        <label>First Name*</label>
                                                        <input type="text" name="firstname"
                                                               placeholder="Enter your first name" required />
                                                    </span>
                                                    <span class="ec-bill-wrap ec-bill-half">
                                                        <label>Last Name*</label>
                                                        <input type="text" name="lastname"
                                                               placeholder="Enter your last name" required />
                                                    </span>
                                                    <span class="ec-bill-wrap">
                                                        <label>Address</label>
                                                        <input type="text" name="address" placeholder="Address Line 1" />
                                                    </span>
                                                    <span class="ec-bill-wrap ec-bill-half">
                                                        <label>City *</label>
                                                        <span class="ec-bl-select-inner">
                                                            <select name="ec_select_city" id="ec-select-city"
                                                                    class="ec-bill-select">
                                                                <option selected disabled>City</option>
                                                                <option value="1">City 1</option>
                                                                <option value="2">City 2</option>
                                                                <option value="3">City 3</option>
                                                                <option value="4">City 4</option>
                                                                <option value="5">City 5</option>
                                                            </select>
                                                        </span>
                                                    </span>
                                                    <span class="ec-bill-wrap ec-bill-half">
                                                        <label>Post Code</label>
                                                        <input type="text" name="postalcode" placeholder="Post Code" />
                                                    </span>
                                                    <span class="ec-bill-wrap ec-bill-half">
                                                        <label>Country *</label>
                                                        <span class="ec-bl-select-inner">
                                                            <select name="ec_select_country" id="ec-select-country"
                                                                    class="ec-bill-select">
                                                                <option selected disabled>Country</option>
                                                                <option value="1">Country 1</option>
                                                                <option value="2">Country 2</option>
                                                                <option value="3">Country 3</option>
                                                                <option value="4">Country 4</option>
                                                                <option value="5">Country 5</option>
                                                            </select>
                                                        </span>
                                                    </span>
                                                    <span class="ec-bill-wrap ec-bill-half">
                                                        <label>Region State</label>
                                                        <span class="ec-bl-select-inner">
                                                            <select name="ec_select_state" id="ec-select-state"
                                                                    class="ec-bill-select">
                                                                <option selected disabled>Region/State</option>
                                                                <option value="1">Region/State 1</option>
                                                                <option value="2">Region/State 2</option>
                                                                <option value="3">Region/State 3</option>
                                                                <option value="4">Region/State 4</option>
                                                                <option value="5">Region/State 5</option>
                                                            </select>
                                                        </span>
                                                    </span>
                                                </form>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                                <span class="ec-check-order-btn">
                                    <a class="btn btn-primary" href="#">Place Order</a>
                                </span>
                            </div>
                        </div>
                        <!--cart content End -->
                    </div>
                    <!-- Sidebar Area Start -->
                    <div class="ec-checkout-rightside col-lg-4 col-md-12">
                        <div class="ec-sidebar-wrap">
                            <!-- Sidebar Summary Block -->
                            <div class="ec-sidebar-block">
                                <div class="ec-sb-title">
                                    <h3 class="ec-sidebar-title">Summary</h3>
                                </div>
                                <div class="ec-sb-block-content">
                                    <div class="ec-checkout-summary">
                                        <div class="ec-checkout-coupan-content">
                                            <form class="ec-checkout-coupan-form" name="ec-checkout-coupan-form"
                                                  method="post" action="#">
                                                <input class="ec-coupan" type="text" required=""
                                                       placeholder="Enter Your Coupan Code" name="ec-coupan" value="">
                                                <button class="ec-coupan-btn button btn-primary" type="submit"
                                                        name="subscribe" value="">Apply</button>
                                            </form>
                                        </div>
                                        <div class="ec-checkout-summary-total">
                                            <span class="text-left">Total Amount</span>
                                            <span class="text-right">$80.00</span>
                                        </div>
                                    </div>
                                    <div class="ec-checkout-pro">
                                        <div class="col-sm-12 mb-6">
                                            <div class="ec-product-inner">
                                                <div class="ec-pro-image-outer">
                                                    <div class="ec-pro-image">
                                                        <a href="product-left-sidebar.jsp" class="image">
                                                            <img class="main-image"
                                                                 src="assets/images/product-image/1_1.jpg"
                                                                 alt="Product" />
                                                            <img class="hover-image"
                                                                 src="assets/images/product-image/1_2.jpg"
                                                                 alt="Product" />
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="ec-pro-content">
                                                    <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Baby toy teddy bear</a></h5>
                                                    <div class="ec-pro-rating">
                                                        <i class="ecicon eci-star fill"></i>
                                                        <i class="ecicon eci-star fill"></i>
                                                        <i class="ecicon eci-star fill"></i>
                                                        <i class="ecicon eci-star fill"></i>
                                                        <i class="ecicon eci-star"></i>
                                                    </div>
                                                    <span class="ec-price">
                                                        <span class="old-price">$95.00</span>
                                                        <span class="new-price">$79.00</span>
                                                    </span>
                                                    <div class="ec-pro-option">
                                                        <div class="ec-pro-color">
                                                            <span class="ec-pro-opt-label">Color</span>
                                                            <ul class="ec-opt-swatch ec-change-img">
                                                                <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                      data-src="assets/images/product-image/1_1.jpg"
                                                                                      data-src-hover="assets/images/product-image/1_1.jpg"
                                                                                      data-tooltip="Gray"><span
                                                                            style="background-color:#6d4c36;"></span></a>
                                                                </li>
                                                                <li><a href="#" class="ec-opt-clr-img"
                                                                       data-src="assets/images/product-image/1_2.jpg"
                                                                       data-src-hover="assets/images/product-image/1_2.jpg"
                                                                       data-tooltip="Orange"><span
                                                                            style="background-color:#ffb0e1;"></span></a>
                                                                </li>
                                                                <li><a href="#" class="ec-opt-clr-img"
                                                                       data-src="assets/images/product-image/1_3.jpg"
                                                                       data-src-hover="assets/images/product-image/1_3.jpg"
                                                                       data-tooltip="Green"><span
                                                                            style="background-color:#8beeff;"></span></a>
                                                                </li>
                                                                <li><a href="#" class="ec-opt-clr-img"
                                                                       data-src="assets/images/product-image/1_4.jpg"
                                                                       data-src-hover="assets/images/product-image/1_4.jpg"
                                                                       data-tooltip="Sky Blue"><span
                                                                            style="background-color:#74f8d1;"></span></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="ec-pro-size">
                                                            <span class="ec-pro-opt-label">Size</span>
                                                            <ul class="ec-opt-size">
                                                                <li class="active"><a href="#" class="ec-opt-sz"
                                                                                      data-old="$95.00" data-new="$79.00"
                                                                                      data-tooltip="Small">S</a></li>
                                                                <li><a href="#" class="ec-opt-sz" data-old="$90.00"
                                                                       data-new="$70.00" data-tooltip="Medium">M</a></li>
                                                                <li><a href="#" class="ec-opt-sz" data-old="$80.00"
                                                                       data-new="$60.00" data-tooltip="Large">X</a></li>
                                                                <li><a href="#" class="ec-opt-sz" data-old="$70.00"
                                                                       data-new="$50.00" data-tooltip="Extra Large">XL</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-12 mb-0">
                                            <div class="ec-product-inner">
                                                <div class="ec-pro-image-outer">
                                                    <div class="ec-pro-image">
                                                        <a href="product-left-sidebar.jsp" class="image">
                                                            <img class="main-image"
                                                                 src="assets/images/product-image/8_1.jpg"
                                                                 alt="Product" />
                                                            <img class="hover-image"
                                                                 src="assets/images/product-image/8_2.jpg"
                                                                 alt="Product" />
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="ec-pro-content">
                                                    <h5 class="ec-pro-title"><a href="product-left-sidebar.jsp">Smart I watch 2GB</a></h5>
                                                    <div class="ec-pro-rating">
                                                        <i class="ecicon eci-star fill"></i>
                                                        <i class="ecicon eci-star fill"></i>
                                                        <i class="ecicon eci-star fill"></i>
                                                        <i class="ecicon eci-star fill"></i>
                                                        <i class="ecicon eci-star"></i>
                                                    </div>
                                                    <span class="ec-price">
                                                        <span class="old-price">$58.00</span>
                                                        <span class="new-price">$45.00</span>
                                                    </span>
                                                    <div class="ec-pro-option">
                                                        <div class="ec-pro-color">
                                                            <span class="ec-pro-opt-label">Color</span>
                                                            <ul class="ec-opt-swatch ec-change-img">
                                                                <li class="active"><a href="#" class="ec-opt-clr-img"
                                                                                      data-src="assets/images/product-image/8_2.jpg"
                                                                                      data-src-hover="assets/images/product-image/8_2.jpg"
                                                                                      data-tooltip="Gray"><span
                                                                            style="background-color:#f3f3f3;"></span></a>
                                                                </li>
                                                                <li><a href="#" class="ec-opt-clr-img"
                                                                       data-src="assets/images/product-image/8_3.jpg"
                                                                       data-src-hover="assets/images/product-image/8_3.jpg"
                                                                       data-tooltip="Orange"><span
                                                                            style="background-color:#fac7f3;"></span></a>
                                                                </li>
                                                                <li><a href="#" class="ec-opt-clr-img"
                                                                       data-src="assets/images/product-image/8_4.jpg"
                                                                       data-src-hover="assets/images/product-image/8_4.jpg"
                                                                       data-tooltip="Green"><span
                                                                            style="background-color:#c5f1ff;"></span></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="ec-pro-size">
                                                            <span class="ec-pro-opt-label">Size</span>
                                                            <ul class="ec-opt-size">
                                                                <li class="active"><a href="#" class="ec-opt-sz"
                                                                                      data-old="$48.00" data-new="$45.00"
                                                                                      data-tooltip="Small">S</a></li>
                                                                <li><a href="#" class="ec-opt-sz" data-old="$90.00"
                                                                       data-new="$70.00" data-tooltip="Medium">M</a></li>
                                                                <li><a href="#" class="ec-opt-sz" data-old="$80.00"
                                                                       data-new="$60.00" data-tooltip="Large">X</a></li>
                                                                <li><a href="#" class="ec-opt-sz" data-old="$70.00"
                                                                       data-new="$50.00" data-tooltip="Extra Large">XL</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Sidebar Summary Block -->
                        </div>
                        <div class="ec-sidebar-wrap ec-checkout-del-wrap">
                            <!-- Sidebar Summary Block -->
                            <div class="ec-sidebar-block">
                                <div class="ec-sb-title">
                                    <h3 class="ec-sidebar-title">Delivery Method</h3>
                                </div>
                                <div class="ec-sb-block-content">
                                    <div class="ec-checkout-del">
                                        <div class="ec-del-desc">Please select the preferred shipping method to use on this
                                            order.</div>
                                        <form action="#">
                                            <span class="ec-del-option">
                                                <span>
                                                    <span class="ec-del-opt-head">Free Shipping</span>
                                                    <input type="radio" id="del1" name="radio-group" checked>
                                                    <label for="del1">Rate - $0 .00</label>
                                                </span>
                                                <span>
                                                    <span class="ec-del-opt-head">Flat Rate</span>
                                                    <input type="radio" id="del2" name="radio-group">
                                                    <label for="del2">Rate - $5.00</label>
                                                </span>
                                            </span>
                                            <span class="ec-del-commemt">
                                                <span class="ec-del-opt-head">Add Comments About Your Order</span>
                                                <textarea name="your-commemt" placeholder="Comments"></textarea>
                                            </span>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- Sidebar Summary Block -->
                        </div>
                    </div>
                </div>
            </div>
        </section>

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

        <!-- Main Js -->
        <script src="assets/js/vendor/index.js"></script>
        <script src="assets/js/main.js"></script>

    </body>
</html>