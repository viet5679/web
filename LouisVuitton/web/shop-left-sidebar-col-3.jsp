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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>

    <body>
        <div id="ec-overlay">
            <div class="ec-ellipsis">
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
                                    <a href="product?id=${bestSeller.id}"
                                       class="sidekka_pro_img"><img
                                            src="${bestSeller.avatar}"
                                            alt="product" /></a>
                                    <div class="ec-pro-content">
                                        <h5 class="ec-pro-title"><a
                                                href="product?id=${bestSeller.id}">${bestSeller.name}</a></h5>
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
                                            href="home">Home</a></li>
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
                    <!-- Sidebar Area Start (Moved to the Left) -->
                    <div class="ec-shop-leftside col-lg-3 col-md-12 order-lg-first order-md-last">
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
                                                    <div class="ec-sidebar-block-item">
                                                        <input type="checkbox" name="gid" value="${c.id}" ${selectedGid.contains(c.id) ? "checked" : ""}/> 
                                                        <a>${c.name}</a><span class="checked"></span>
                                                    </div>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>

                                    <div class="ec-sb-title">
                                        <h3 class="ec-sidebar-title">Category</h3>
                                    </div>
                                    <div class="ec-sb-block-content">
                                        <ul>
                                            <c:forEach var="h" items="${requestScope.litsc}">
                                                <li>
                                                    <div class="ec-sidebar-block-item">
                                                        <input type="checkbox" name="cid" value="${h.id}" ${selectedCid.contains(h.id) ? "checked" : ""}/> 
                                                        <a>${h.name}</a><span class="checked"></span>
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
                                    <div class="ec-sb-block-content es-price-slider">
                                        <div class="ec-price-filter">
                                            <div id="ec-sliderPrice" class="filter__slider-price" data-min="0" data-max="500" data-step="10"></div>
                                            <div class="ec-price-input">
                                                <label class="filter__label"><input type="text" class="filter__input" name="price_low" id="price_low"></label>
                                                <span class="ec-price-divider"></span>
                                                <label class="filter__label"><input type="text" class="filter__input" name="price_high" id="price_high"></label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Shop Content (Right Side) -->
                    <div class="ec-shop-rightside col-lg-9 col-md-12 order-lg-last order-md-first margin-b-30">
                        <!-- Shop Top Start -->
                        <div class="ec-pro-list-top d-flex">
                            <div class="col-md-6 ec-grid-list">
                                <div class="ec-gl-btn">
                                    <button class="btn btn-grid active"><i class="fi-rr-apps"></i></button>
                                    <button class="btn btn-list"><i class="fi-rr-list"></i></button>
                                </div>
                            </div>
                            <div class="col-md-6 ec-sort-select">
                                <span class="sort-by">Sort by</span>
                                <div class="ec-select-inner">
                                    <form method="get">
                                        <select name="sort_by" id="ec-select" onchange="this.form.submit()">
                                            <option selected disabled>Position</option>
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
                                        <!-- Changed col-lg-3 to col-lg-4 to display 3 products per row -->
                                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6 mb-6 pro-gl-content">
                                            <input type="hidden" name="productId" value="${c.id}">
                                            <div class="ec-product-inner">
                                                <div class="ec-pro-image-outer">
                                                    <div class="ec-pro-image">
                                                        <a href="product?id=${product.id}" class="image">
                                                            <img class="main-image" src="${c.avatar}" alt="Product" />
                                                            <img class="hover-image" src="${c.hoverAvatar}" alt="Product" />
                                                        </a>
                                                        <c:if test="${c.tag == 'NEW'}">
                                                            <span class="flags">
                                                                <span class="new">New</span>
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
                                                        <div class="ec-pro-actions">
                                                            <button title="Add To Cart" class="add-to-cart" onclick="addToCart(${c.id}, 1)">
                                                                <i class="fi-rr-shopping-basket"></i> Add To Cart
                                                            </button>
                                                            <button title="Wishlist" class="ec-btn-group wishlist-btn" 
                                                                    data-product-id="${c.id}" 
                                                                    onclick="addToWishList(${c.id}, this)">
                                                                <i class="fi-rr-heart"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="ec-pro-content">
                                                    <h5 class="ec-pro-title"><a href="product?id=${c.id}">${c.name}</a></h5>
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
                                                    <div class="ec-pro-list-desc">${c.description}</div>

                                                    <c:if test="${c.sale == 0}">
                                                        <span class="ec-price">
                                                            <span class="new-price">$${c.totalPay}</span>
                                                        </span>
                                                    </c:if>
                                                    <c:if test="${c.sale != 0}">
                                                        <span class="ec-price">
                                                            <span class="old-price">$${c.price}</span>
                                                            <span class="new-price">$${c.totalPay}</span>
                                                        </span>
                                                    </c:if>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <!-- Shop content End -->

                        <!-- Ec Pagination Start -->
                        <div class="ec-pro-pagination">
                            <span></span>
                            <ul class="ec-pro-pagination-inner">
                                <c:forEach var="p" begin="1" end="${endP}">
                                    <li>
                                        <a class="${(currentIndex == p) ? 'active' : ''} pagination-link" data-page="${p}" 
                                           onclick="updatePage(event, ${p})">${p}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <!-- Ec Pagination End -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End Shop page -->

        <!-- JavaScript (Unchanged) -->
        <script>
            function addToCart(productId, isProductDetails = false) {
                let quantity = 1; // Mặc định là 1

                if (isProductDetails) {
                    // Nếu ở trang Product Details, lấy số lượng từ input
                    let input = document.getElementById(`qty-${p.id}`);
                    if (input) {
                        quantity = parseInt(input.value) || 1;

                        // Kiểm tra số lượng hợp lệ
                        if (isNaN(quantity) || quantity < 1) {
                            alert("Vui lòng nhập số lượng hợp lệ!");
                            return;
                        }
                    }
                }

                $.ajax({
                    type: "POST",
                    url: "cart",
                    data: {
                        productId: productId,
                        quantity: quantity,
                        action: "addToCart"
                    },
                    success: function () {
                        Swal.fire({
                            position: "center",
                            icon: "success",
                            title: "Added to cart",
                            showConfirmButton: false,
                            timer: 700,
                            width: "400px",
                            padding: "5px"
                        }).then(() => {
                            location.reload(); // Load lại trang sau khi hiển thị thông báo
                        });
                    }
                });
            }

            function addToWishList(productId, element) {
                $.ajax({
                    type: "POST",
                    url: "wishlist",
                    data: {productId: productId},
                    success: function (response) {
                        if (response.isWishlisted) {
                            $(element).addClass("active");
                        } else {
                            $(element).removeClass("active");
                        }
                        location.reload(); // Load lại trang sau khi thay đổi wishlist
                    }
                });
            }

            // Duyệt qua cookie Wishlist
            document.addEventListener("DOMContentLoaded", function () {
                let wishlist = getCookie("wishlist"); // Lấy giá trị từ cookie
                if (wishlist) {
                    let wishlistItems = wishlist.split("/"); // Chuyển chuỗi thành mảng ID
                    document.querySelectorAll(".wishlist-btn").forEach(function (btn) {
                        let productId = btn.getAttribute("data-product-id"); // Lấy ID từ nút
                        if (wishlistItems.includes(productId)) {
                            btn.classList.add("active"); // Thêm class "active"
                        }
                    });
                }
            });

            // Hàm lấy cookie theo tên
            function getCookie(name) {
                let cookies = document.cookie.split("; ");
                for (let i = 0; i < cookies.length; i++) {
                    let parts = cookies[i].split("=");
                    if (parts[0] === name) {
                        return parts[1];
                    }
                }
                return "";
            }
        </script>

        <!-- Footer Start -->
        <jsp:include page="footer.jsp"></jsp:include>
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
</html>