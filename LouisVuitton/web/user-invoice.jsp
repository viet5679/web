<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/user-invoice.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:32:38 GMT -->
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
        <jsp:include page="header.jsp"></jsp:include>
        <!-- Header End  -->

        <!-- Ec breadcrumb start -->
        <div class="sticky-header-next-sec  ec-breadcrumb section-space-mb">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="row ec_breadcrumb_inner">
                            <div class="col-md-6 col-sm-12">
                                <h2 class="ec-breadcrumb-title">User Invoice</h2>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <!-- ec-breadcrumb-list start -->
                                <ul class="ec-breadcrumb-list">
                                    <li class="ec-breadcrumb-item"><a href="index.jsp">Home</a></li>
                                    <li class="ec-breadcrumb-item active">Invoice</li>
                                </ul>
                                <!-- ec-breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Ec breadcrumb end -->

        <!-- User invoice section -->
        <section class="ec-page-content ec-vendor-uploads ec-user-account section-space-p">
            <div class="container">
                <div class="row">
                    <!-- Sidebar Area Start -->
                    <div class="ec-shop-leftside ec-vendor-sidebar col-lg-3 col-md-12">
                        <div class="ec-sidebar-wrap ec-border-box">
                            <!-- Sidebar Category Block -->
                            <div class="ec-sidebar-block">
                                <div class="ec-vendor-block">
                                    <div class="ec-vendor-block-items">
                                        <ul>
                                            <li><a href="user-profile.jsp">User Profile</a></li>
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
                        <div class="ec-vendor-dashboard-card">
                            <div class="ec-vendor-card-header">
                                <h5>Invoice</h5>
                                <div class="ec-header-btn">
                                    <a class="btn btn-lg btn-secondary" href="#">Print</a>
                                    <a class="btn btn-lg btn-primary" href="#">Export</a>
                                </div>
                            </div>
                            <div class="ec-vendor-card-body padding-b-0">
                                <div class="page-content">
                                    <div class="page-header text-blue-d2">
                                        <img src="assets/images/logo/logo4.png" alt="Site Logo">
                                    </div>

                                    <div class="container px-0">
                                        <div class="row mt-4">
                                            <div class="col-lg-12">
                                                <hr class="row brc-default-l1 mx-n1 mb-4" />

                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="my-2">
                                                            <span class="text-sm text-grey-m2 align-middle">To : </span>
                                                            <span class="text-600 text-110 text-blue align-middle">Alex
                                                                Doe</span>
                                                        </div>
                                                        <div class="text-grey-m2">
                                                            <div class="my-2">
                                                                123, Mountain View,
                                                            </div>
                                                            <div class="my-2">
                                                                California, US State.
                                                            </div>
                                                            <div class="my-2"><b class="text-600">Phone : </b>1234567890
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div
                                                        class="text-95 col-sm-6 align-self-start d-sm-flex justify-content-end">
                                                        <hr class="d-sm-none" />
                                                        <div class="text-grey-m2">

                                                            <div class="my-2"><span class="text-600 text-90">ID : </span>
                                                                #111-222</div>

                                                            <div class="my-2"><span class="text-600 text-90">HSN Code :
                                                                </span> #123456</div>
                                                            <div class="my-2"><span class="text-600 text-90">Issue Date :
                                                                </span> Oct 12, 2021-2022</div>

                                                            <div class="my-2"><span class="text-600 text-90">Invoice No :
                                                                </span>6548</div>
                                                        </div>
                                                    </div>
                                                    <!-- /.col -->
                                                </div>

                                                <div class="mt-4">

                                                    <div class="text-95 text-secondary-d3">
                                                        <div class="ec-vendor-card-table">
                                                            <table class="table ec-table">
                                                                <thead>
                                                                    <tr>
                                                                        <th scope="col">ID</th>
                                                                        <th scope="col">Name</th>
                                                                        <th scope="col">Qty</th>
                                                                        <th scope="col">Price</th>
                                                                        <th scope="col">Amount</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <th><span>225</span></th>
                                                                        <td><span>Women sliveless top</span></td>
                                                                        <td><span>2</span></td>
                                                                        <td><span>$65</span></td>
                                                                        <td><span>$130</span></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th><span>548</span></th>
                                                                        <td><span>Mens cotton fabric shirt</span></td>
                                                                        <td><span>3</span></td>
                                                                        <td><span>$10</span></td>
                                                                        <td><span>$30</span></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th><span>684</span></th>
                                                                        <td><span>Baby clothes pair</span></td>
                                                                        <td><span>1</span></td>
                                                                        <td><span>$360</span></td>
                                                                        <td><span>$360</span></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th><span>987</span></th>
                                                                        <td><span>Hand bags for women</span></td>
                                                                        <td><span>5</span></td>
                                                                        <td><span>$50</span></td>
                                                                        <td><span>$250</span></td>
                                                                    </tr>
                                                                </tbody>
                                                                <tfoot>
                                                                    <tr>
                                                                        <td class="border-none" colspan="3">
                                                                            <span></span></td>
                                                                        <td class="border-color" colspan="1">
                                                                            <span><strong>Sub Total</strong></span></td>
                                                                        <td class="border-color">
                                                                            <span><b>$3520</b></span></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="border-none" colspan="3">
                                                                            <span></span></td>
                                                                        <td class="border-color" colspan="1">
                                                                            <span><strong>Tax (10%)</strong></span></td>
                                                                        <td class="border-color">
                                                                            <span><b>$352</b></span></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="border-none m-m15"
                                                                            colspan="3"><span class="note-text-color">Extra
                                                                                note such as company or payment
                                                                                information...</span></td>
                                                                        <td class="border-color m-m15"
                                                                            colspan="1"><span><strong>Total</strong></span>
                                                                        </td>
                                                                        <td class="border-color m-m15">
                                                                            <span><b>$3872</b></span></td>
                                                                    </tr>
                                                                </tfoot>
                                                            </table>
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
            </div>
        </section>
        <!-- End User invoice section -->

        <!-- Footer Start -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- Footer Area End -->

        <!-- Modal -->
        <div class="modal fade" id="edit_modal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <button type="button" class="btn-close qty_close" data-bs-dismiss="modal" aria-label="Close"></button>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-5 col-sm-12 col-xs-12">
                                <!-- Swiper -->
                                <div class="qty-product-cover">
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/pro_1/1_1.jsp" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/pro_1/2_1.jsp" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/pro_1/3_1.jsp" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/pro_1/4_1.jsp" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/pro_1/2_1.jsp" alt="">
                                    </div>
                                </div>
                                <div class="qty-nav-thumb">
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/pro_1/1_1.jsp" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/pro_1/2_1.jsp" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/pro_1/3_1.jsp" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/pro_1/4_1.jsp" alt="">
                                    </div>
                                    <div class="qty-slide">
                                        <img class="img-responsive" src="assets/images/product-image/pro_1/2_1.jsp" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7 col-sm-12 col-xs-12">
                                <div class="quickview-pro-content">
                                    <h5 class="ec-quick-title"><a href="product-left-sidebar.jsp">Beautiful Women Dress</a>
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
        <script src="assets/js/plugins/nouislider.js"></script>
        <!-- Main Js -->
        <script src="assets/js/vendor/index.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>