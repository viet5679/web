<!--========================================================= 
    Item Name: Louis Vuitton
    Author: ashishmaraviya
    Version: 3.7
    Copyright 2024
        Author URI: https://themeforest.net/user/ashishmaraviya
 ============================================================-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <!-- Main Style -->
        <link rel="stylesheet" href="assets/css/demo1.css" />
        <link rel="stylesheet" href="assets/css/style.css" />
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <!-- Background css -->
        <link rel="stylesheet" id="bg-switcher-css"
              href="assets/css/backgrounds/bg-4.css">
        <style>
            .star-rating {
                direction: rtl; /* Đảo ngược thứ tự sao để xử lý hover */
                display: flex;
                font-size: 2rem;
                cursor: pointer;
            }

            .star-rating input {
                display: none;
            }

            .star-rating label {
                color: #ccc;
                transition: color 0.2s;
            }

            .star-rating input:checked ~ label {
                color: gold;
            }

            .star-rating label:hover,
            .star-rating label:hover ~ label {
                color: gold;
            }
        </style>
        
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
        <jsp:include page="header.jsp"></jsp:include>
            <!-- Header End  -->

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
                                        <h5 class="ec-pro-title"><a href="product?id=${product.id}">${bestSeller.name}</a></h5>
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
                                <h2 class="ec-breadcrumb-title">Single
                                    Products</h2>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <!-- ec-breadcrumb-list start -->
                                <ul class="ec-breadcrumb-list">
                                    <li class="ec-breadcrumb-item"><a
                                            href="index.jsp">Home</a></li>
                                    <li
                                        class="ec-breadcrumb-item active">Products</li>
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
                    <div
                        class="ec-pro-rightside ec-common-rightside col-lg-12 col-md-12">

                        <!-- Single product content Start -->
                        <div class="single-pro-block">
                            <div class="single-pro-inner">
                                <div class="row">
                                    <div
                                        class="single-pro-img single-pro-img-no-sidebar">
                                        <div class="single-product-scroll">
                                            <div class="single-product-cover">
                                                <c:forEach var="c" items="${requestScope.listI}">
                                                    <div
                                                        class="single-slide zoom-image-hover">
                                                        <img class="img-responsive"
                                                             src="${c.path}"
                                                             alt>
                                                    </div>
                                                </c:forEach>

                                            </div>
                                            <div class="single-nav-thumb">
                                                <c:forEach var="c" items="${requestScope.listI}">
                                                    <div class="single-slide">
                                                        <img class="img-responsive"
                                                             src="${c.path}"
                                                             alt>
                                                    </div>
                                                </c:forEach>

                                            </div>
                                        </div>
                                    </div>
                                    <div
                                        class="single-pro-desc single-pro-desc-no-sidebar">
                                        <div class="single-pro-content">
                                            <h5 class="ec-single-title">${p.name}</h5>
                                            <div class="ec-single-rating-wrap">
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
                                            <div class="ec-single-desc">${p.description}</div>

                                            <div class="ec-single-price-stoke">
                                                <div class="ec-single-price">
                                                    <span class="ec-single-ps-title">Price</span>
                                                    <c:if test="${p.sale == 0}">
                                                        <span class="new-price">$${p.totalPay} </span>
                                                    </c:if>
                                                    <c:if test="${p.sale != 0}">
                                                        <span class="new-price">$${p.totalPay} </span>
                                                        <span class="old-price" style="color: grey;"><del>$${p.price}</del></span>
                                                    </c:if>
                                                </div>
                                            </div>
                                            <c:set value="${requestScope.listS}" var="sc"/>
                                            <c:if test="${not empty sc}">
                                                <div class="ec-pro-variation">
                                                    <div class="ec-pro-variation-inner ec-pro-variation-size">
                                                        <span>SIZE</span>
                                                        <div class="ec-pro-variation-content">
                                                            <ul id="size-options">
                                                                <c:forEach var="s" items="${sc}">
                                                                    <li class="size-options" value="${s.sizeId.id}">
                                                                        <span>${s.sizeId.name}</span>
                                                                    </li>
                                                                </c:forEach>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>

                                            <div class="ec-single-qty">
                                                <div class="qty-plus-minus">
                                                    <input class="qty-input"
                                                           id="quantity"
                                                           type="text"
                                                           name="ec_qtybtn"
                                                           value="1" />
                                                </div>
                                                <div class="ec-single-cart ">
                                                    <button
                                                        class="btn btn-primary" data-product-id="${p.id}" onclick="addToCart(${p.id}, document.getElementById('quantity').value)">Add
                                                        To Cart</button>
                                                </div>


                                            </div>
                                            <div id="cart-response" style="color: green; margin-top: 10px;"></div>

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
                                            <a class="nav-link active"
                                               data-bs-toggle="tab"
                                               data-bs-target="#ec-spt-nav-details"
                                               role="tab"
                                               aria-controls="ec-spt-nav-details"
                                               aria-selected="true">Detail</a>
                                        </li>

                                        <li class="nav-item">
                                            <a class="nav-link"
                                               data-bs-toggle="tab"
                                               data-bs-target="#ec-spt-nav-review"
                                               role="tab"
                                               aria-controls="ec-spt-nav-review"
                                               aria-selected="false">Reviews</a>
                                        </li>
                                    </ul>
                                </div>
                                <div
                                    class="tab-content  ec-single-pro-tab-content">
                                    <div id="ec-spt-nav-details"
                                         class="tab-pane fade show active">

                                        <div class="ec-single-pro-tab-desc">
                                            <p>${p.description}
                                            </p>
                                            <ul>
                                                <c:forEach var="sub" items="${requestScope.sub}">
                                                    <li>${sub}</li>
                                                    </c:forEach>

                                            </ul>
                                        </div>
                                    </div>


                                    <div id="ec-spt-nav-review"
                                         class="tab-pane fade">
                                        <div class="row">
                                            <div class="ec-t-review-wrapper">
                                                <c:forEach var="r" items="${requestScope.listR}">
                                                    <div class="ec-t-review-item">
                                                        <div
                                                            class="ec-t-review-avtar">
                                                            <img
                                                                src="${r.userId.avatar}"
                                                                alt />
                                                        </div>
                                                        <div
                                                            class="ec-t-review-content">
                                                            <div
                                                                class="ec-t-review-top">
                                                                <div
                                                                    class="ec-t-review-name">${r.userId.name}</div>
                                                                <div
                                                                    class="ec-t-review-rating">
                                                                    <c:forEach var="i" begin="1" end="5">
                                                                        <c:choose>
                                                                            <c:when test="${i <= r.numberStars}">
                                                                                <i class="ecicon eci-star fill"></i>  <!-- Filled star -->
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                                <i class="ecicon eci-star"></i> <!-- Empty star -->
                                                                            </c:otherwise>
                                                                        </c:choose>
                                                                    </c:forEach>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="ec-t-review-bottom">
                                                                <p>${r.description}
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                                <div class="ec-ratting-content">
                                                    <h3>Add a Review</h3>

                                                    <c:if test="${empty sessionScope.user}">
                                                        <p>You must <a href="login.jsp">Login</a> to review.</p>
                                                    </c:if>

                                                    <c:if test="${not empty sessionScope.user}">
                                                        <div class="ec-ratting-form">
                                                            <form action="product" method="POST">
                                                                <input type="hidden" name="pid" value="${p.id}">
                                                                <input type="hidden" name="uid" value="${sessionScope.user.id}">
                                                                <div class="ec-ratting-star">
                                                                    <span>Your rating:</span>
                                                                    <div class="ec-t-review-rating star-rating">
                                                                        <input type="radio" name="rating" id="star5" value="5"><label for="star5">★</label>
                                                                        <input type="radio" name="rating" id="star4" value="4"><label for="star4">★</label>
                                                                        <input type="radio" name="rating" id="star3" value="3"><label for="star3">★</label>
                                                                        <input type="radio" name="rating" id="star2" value="2"><label for="star2">★</label>
                                                                        <input type="radio" name="rating" id="star1" value="1"><label for="star1">★</label>
                                                                    </div>
                                                                </div>
                                                                <div class="ec-ratting-input">
                                                                    <textarea name="comment" placeholder="Enter Your Comment"></textarea>
                                                                    <button class="btn btn-primary" type="submit">Submit</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </c:if>
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

        <!-- Main Js -->
        <script src="assets/js/vendor/index.js"></script>
        <script src="assets/js/main.js"></script>
        <script>
                                                            function addToCart(productId, quantity) {
                                                                $.ajax({
                                                                    type: "POST",
                                                                    url: "cart",
                                                                    data: {
                                                                        productId: productId,
                                                                        quantity: quantity
                                                                    }
                                                                });
                                                            }
        </script>


        <script>
            document.addEventListener("DOMContentLoaded", function () {
                let selectedSize = null;
                let sizeContainer = document.querySelector("#size-options");
                let hasSizeOptions = sizeContainer && sizeContainer.children.length > 0;

                if (hasSizeOptions) {
                    document.querySelectorAll(".size-options").forEach(item => {
                        item.addEventListener("click", function () {
                            document.querySelectorAll(".size-options").forEach(el => el.classList.remove("active"));
                            this.classList.add("active");
                            selectedSize = this.getAttribute("value");
                        });
                    });

                    document.querySelector(".ec-single-cart button").addEventListener("click", function (event) {
                        if (!selectedSize) {
                            event.preventDefault();
                            alert("Vui lòng chọn size trước khi thêm vào giỏ hàng!");
                        }
                    });
                }
            });
        </script>


    </body>

</html>