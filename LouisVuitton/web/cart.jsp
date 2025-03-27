<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

    <body class="cart_page">
        <style>
            .ec_cart_qtybtn {
                display: none !important;
            }
        </style>
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
                        <div class="ec-cart-leftside col-lg-12 col-md-12 ">
                            <!-- cart content Start -->
                            <div class="ec-cart-content">
                                <div class="ec-cart-inner">
                                    <div class="row">
                                        <form action="checkout">
                                            <div class="table-content cart-table-content">
                                                <table>
                                                    <thead>
                                                        <tr>
                                                            <th>Product</th>
                                                            <th>Price</th>
                                                            <th>Sale</th>
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
                                                                    href="product?id=${i.product.id}"><img
                                                                        class="ec-cart-pro-img mr-4"
                                                                        src="${i.product.avatar}" alt="" />${i.product.name}</a></td>
                                                            <td data-label="Price" class="ec-cart-pro-price"><span
                                                                    class="amount">$${i.product.price}</span></td>
                                                            <td data-label="Sale" class="ec-cart-pro-price">
                                                                <span class="amount">
                                                                    <c:choose>
                                                                        <c:when test="${i.product.sale % 1 == 0}">
                                                                            <fmt:formatNumber value="${i.product.sale}" pattern="#"/>%
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <fmt:formatNumber value="${i.product.sale}" pattern="#.##"/>%
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </span>
                                                            </td>
                                                            <td data-label="Quantity" class="ec-cart-pro-qty" style="text-align: center;">
                                                                <div class="cart-qty-plus-minus">
                                                                    <button class="qty-minus" type="button" data-product-id="${i.product.id}" onclick="changeQuantity(this, -1)">-</button>
                                                                    <input class="cart-plus-minus qty-input" type="text"
                                                                           name="cartqtybutton" value="${i.quantity}" data-product-id="${i.product.id}" data-price="${i.product.totalPay}" readonly/>
                                                                    <button class="qty-plus" type="button" data-product-id="${i.product.id}" onclick="changeQuantity(this, 1)">+</button>
                                                                </div>
                                                            </td>
                                                            <td data-label="Total" class="ec-cart-pro-subtotal">
                                                                $<fmt:formatNumber pattern="##.##" value="${(i.product.totalPay*i.quantity)}"/>
                                                            </td>
                                                            <td data-label="Remove" class="ec-cart-pro-remove" onclick="removeProduct(${i.product.id})">
                                                                <a href="#"><i class="ecicon eci-trash-o"></i></a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                            <!-- Sidebar Area Start -->
                                            <div class="ec-cart-rightside col-lg-12 col-md-12">
                                                <div class="ec-sidebar-wrap">
                                                    <div class="ec-sidebar-block">
                                                        <div class="ec-sb-block-content">
                                                            <div class="ec-cart-summary-bottom">
                                                                <div class="ec-cart-summary">
                                                                    <div class="ec-cart-summary-total">
                                                                        <span class="text-left">Total Amount</span>
                                                                        <span class="text-right">
                                                                            $<fmt:formatNumber pattern="##.##" value="${o.totalMoney}"/>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <% String message = (String) request.getAttribute("message"); %>
                                                <% boolean isCartEmpty = (message != null); %>
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="ec-cart-update-bottom">
                                                            <a href="shop">Continue Shopping</a>
                                                            <% if (isCartEmpty) { %>
                                                            <p style="color: red; font-weight: bold;"><%= message %></p>
                                                            <% } %>
                                                            <button class="btn btn-primary" <%= isCartEmpty ? "disabled" : "" %>>Check Out</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--cart content End -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <script>
            function removeProduct(productId) {
                $.ajax({
                    type: "POST",
                    url: "cart",
                    data: {
                        productId: productId,
                        action: "remove"
                    },
                    success: function () {
                        location.reload(); // Load lại trang sau khi xóa
                    }
                });
            }

            function changeQuantity(button, change) {
                var productId = $(button).data('product-id');
                var quantityInput = $(button).closest('tr').find('.qty-input');
                var currentQuantity = parseInt(quantityInput.val());
                var newQuantity = currentQuantity + change;

                if (newQuantity < 1) {
                    removeProduct(productId);
                    return;
                }

                quantityInput.val(newQuantity);
                updateCart(productId, newQuantity);
            }



            function updateCart(productId, quantity) {
                $.ajax({
                    type: "POST",
                    url: "cart",
                    data: {
                        productId: productId,
                        quantity: quantity,
                        action: "updateCart"
                    },
                    success: function () {
                        window.location.reload();
                    }
                });
            }

        </script>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const removeButtons = document.querySelectorAll('.ec-cart-pro-remove a');

                removeButtons.forEach(function (button) {
                    button.addEventListener('click', function (event) {
                        event.preventDefault();
                        const row = button.closest('tr');
                        row.remove();
                    });
                });
            });
        </script>

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