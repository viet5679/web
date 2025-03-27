<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.Users" %>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/register.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:32:09 GMT -->
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
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body class="register_page">
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
                                    <h2 class="ec-breadcrumb-title">Verify Code</h2>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <!-- ec-breadcrumb-list start -->
                                    <ul class="ec-breadcrumb-list">
                                        <li class="ec-breadcrumb-item"><a href="home">Home</a></li>
                                        <li class="ec-breadcrumb-item active">Verify Code</li>
                                    </ul>
                                    <!-- ec-breadcrumb-list end -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Ec breadcrumb end -->

            <!-- Start Register -->
            <section class="ec-page-content section-space-p">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <div class="section-title">
                                <h2 class="ec-bg-title">Verify Code</h2>
                                <h2 class="ec-title">Verify Code</h2>
                                <p class="sub-title mb-3">Verify code has been send to your email</p>
                            </div>
                        </div>
                        <div class="ec-register-wrapper">
                            <div class="ec-register-container">
                                <div class="ec-register-form">
                                    <form action="verify-code" method="post">
                                        <label>Enter verification code:</label>
                                        <input type="text" name="code" required />
                                        <c:if test="${not empty sessionScope.error}">
                                        <script>
                                            document.addEventListener("DOMContentLoaded", function () {
                                                let errorMessage = "${sessionScope.error}";
                                                if (errorMessage && errorMessage.trim() !== "") { // Kiểm tra tránh hiển thị nếu chuỗi rỗng
                                                    Swal.fire({
                                                        icon: "error",
                                                        title: "Registration Failed",
                                                        text: errorMessage,
                                                        confirmButtonText: "Try Again"
                                                    })
                                                }
                                            });
                                        </script>
                                        <% session.removeAttribute("error"); %> <%-- Xóa session ngay sau khi hiển thị --%>
                                    </c:if>

                                    <c:if test="${not empty sessionScope.mess}">
                                        <script>
                                            document.addEventListener("DOMContentLoaded", function () {
                                                let successMessage = "${sessionScope.mess}";
                                                if (successMessage && successMessage.trim() !== "") {
                                                    Swal.fire({
                                                        icon: "success",
                                                        title: "Registration Successful!",
                                                        text: successMessage,
                                                        confirmButtonText: "Go to Login"
                                                    }).then(() => {
                                                        window.location.href = "login";
                                                    });
                                                }
                                            });
                                        </script>
                                        <% session.removeAttribute("mess"); %> <%-- Xóa session ngay sau khi hiển thị --%>
                                    </c:if>
                                    <span class="ec-register-wrap ec-register-btn">
                                        <button class="btn btn-primary" type="submit">VERIFY</button>
                                    </span>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Register -->

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

    </body>

</html>