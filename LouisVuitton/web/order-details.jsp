<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="model.Users" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;500;700&display=swap" rel="stylesheet">

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
                                    <h2 class="ec-breadcrumb-title">Order Details</h2>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <!-- ec-breadcrumb-list start -->
                                    <ul class="ec-breadcrumb-list">
                                        <li class="ec-breadcrumb-item"><a href="home">Home</a></li>
                                        <li class="ec-breadcrumb-item active">Order Details</li>
                                    </ul>
                                    <!-- ec-breadcrumb-list end -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Ec breadcrumb end -->

            <!-- Order details section -->
            <section class="ec-page-content ec-vendor-uploads ec-user-account section-space-p">
                <div class="container">
                    <div class="row">
                        <!-- Sidebar Area Start -->
                        <div class="ec-shop-rightside col-lg-12 col-md-12">
                            <div class="ec-vendor-dashboard-card">
                                <div class="ec-vendor-card-header">
                                    <h5>Order Details</h5>
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
                                                                <span class="text-600 text-sm text-grey-m2 align-middle">Customer : </span>
                                                                <span class="text-110 text-blue align-middle">${order.name}</span>
                                                        </div>
                                                        <div class="text-grey-m2">
                                                            <div class="my-2"><b class="text-600">Address : </b>${order.address}</div>
                                                            <div class="my-2"><b class="text-600">Phone : </b>${order.phone}</div>
                                                        </div>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div
                                                        class="text-95 col-sm-6 align-self-start d-sm-flex justify-content-end">
                                                        <hr class="d-sm-none" />
                                                        <div class="text-grey-m2">
                                                            <div class="my-2"><span class="text-600 text-90">OrderID : </span>${order.id}</div>
                                                            <div class="my-2"><span class="text-600 text-90">DateTime : </span>${order.createdAt}</div>
                                                            <div><span class="text-600 text-90">Status : </span>
                                                                <c:choose>
                                                                    <c:when test="${order.status eq 'Pending'}">
                                                                        <span style="color: blue;">${order.status}</span>
                                                                    </c:when>
                                                                    <c:when test="${order.status eq 'Canceled'}">
                                                                        <span style="color: red;">${order.status}</span>
                                                                    </c:when>
                                                                    <c:when test="${order.status eq 'Delivered'}">
                                                                        <span style="color: green;">${order.status}</span>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <span style="color: black;">${order.status}</span>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </div>
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
                                                                        <th scope="col">Image</th>
                                                                        <th scope="col">Name</th>
                                                                        <th scope="col">Quantity</th>
                                                                        <th scope="col">Price</th>
                                                                        <th scope="col">Amount</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <c:forEach items="${listOrderDetails}" var="od">
                                                                        <tr>
                                                                            <td><a href="product?id=${od.product.id}"><img class="prod-img" src="${od.avatar}"></a></td>
                                                                            <td><a href="product?id=${od.product.id}"><span>${od.name}</span></a></td>
                                                                            <td><span>${od.quantity}</span></td>
                                                                            <td><span>$${od.price}</span></td>
                                                                            <td><span>$${od.totalPrice}</span></td>
                                                                        </tr>
                                                                    </c:forEach>
                                                                </tbody>
                                                                <tfoot>
                                                                    <tr>
                                                                        <td class="border-none m-m15" colspan="3"><span class="text-600 text-90">Comments : </span><span class="note-text-color">${order.comments}</span></td>
                                                                        <td class="border-color m-m15" colspan="1"><span><strong>Total</strong></span>
                                                                        </td>
                                                                        <td class="border-color m-m15"><span><b>$${order.totalPrice}</b></span></td>
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
        <div class="ec-cart-update-bottom">
            <c:if test="${order.status eq 'Pending'}">
                <form action="cancel-order" method="post">
                    <input type="hidden" name="orderId" value="${order.id}">
                    <button type="submit" class="btn btn-primary" style="margin-left: 80%;">Cancel Order</button>
                </form>
            </c:if>
        </div>

        <!-- End Order details section -->

        <!-- Footer Start -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- Footer Area End -->

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