<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from maraviyainfotech.com/projects/ekka/ekka-v37/ekka-html/login.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Jan 2025 14:32:11 GMT -->
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
    <body>
        <input type="hidden" name="token" value="<%= request.getParameter("token") %>">
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
                                    <h2 class="ec-breadcrumb-title">Login</h2>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <!-- ec-breadcrumb-list start -->
                                    <ul class="ec-breadcrumb-list">
                                        <li class="ec-breadcrumb-item"><a href="home">Home</a></li>
                                        <li class="ec-breadcrumb-item active">Login</li>
                                    </ul>
                                    <!-- ec-breadcrumb-list end -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Ec breadcrumb end -->

            <!-- Change Password Start -->
            <section class="change-password-section">
                <div class="change-password-container">
                    <h2>Change your password</h2>
                    <form action="change-password" method="post" id="change-password-form">
                        <!-- Lấy email & token từ URL -->
                        <input type="hidden" id="email" name="email">
                        <input type="hidden" id="<%= request.getParameter("token")%>" name="token" value="<%= request.getParameter("token") %>">

                    <div class="form-group">
                        <input type="password" id="new_password" name="new_password" placeholder="New password" required>
                    </div>
                    <div class="form-group">
                        <input type="password" id="confirm_password" name="confirm_password" placeholder="Confirm password" required>
                    </div>
                    <div class="form-group">
                        <p id="error-message" style="color: red; display: none;">Passwords do not match!</p>
                    </div>
                    <p style=""></p>
                    <div class="button-group">
                        <a href="login" class="btn btn-cancel">Cancel</a>
                        <button type="submit" id="change-button" class="btn btn-primary" disabled>Change</button>
                    </div>
                </form>
                <!-- Hiển thị thông báo nếu có -->
                <% 
    String message = (String) request.getAttribute("successMess"); 
    String error = (String) request.getAttribute("error"); 
                %>

                <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                <script>
                    document.addEventListener("DOMContentLoaded", function () {
                    <% if (message != null && !message.isEmpty()) { %>
                        Swal.fire({
                            title: "Password Changed Successfully!",
                            text: "<%= message %>",
                            icon: "success",
                            confirmButtonText: "Go to Login"
                        }).then(() => {
                            window.location.href = "login";
                        });
                    <% } else if (error != null && !error.isEmpty()) { %>
                        Swal.fire({
                            title: "Error!",
                            text: "<%= error %>",
                            icon: "error",
                            confirmButtonText: "Try Again"
                        });
                    <% } %>
                    });
                </script>
            </div>
        </section>
        <script>
            const newPasswordInput = document.getElementById('new_password');
            const confirmPasswordInput = document.getElementById('confirm_password');
            const changeButton = document.getElementById('change-button');
            const errorMessage = document.getElementById('error-message');

            function validateConfirmPassword() {
                const newPassword = newPasswordInput.value;
                const confirmPassword = confirmPasswordInput.value;

                if (newPassword === confirmPassword && confirmPassword !== '') {
                    changeButton.disabled = false;
                    errorMessage.style.display = 'none';
                } else {
                    changeButton.disabled = true;
                    errorMessage.style.display = 'block';
                }
            }

            // Lấy email & token từ URL và gán vào form
            function getQueryParams() {
                const params = new URLSearchParams(window.location.search);
                document.getElementById("email").value = params.get("email") || "";
                document.getElementById("token").value = params.get("token") || "";
            }

            newPasswordInput.addEventListener('input', validateConfirmPassword);
            confirmPasswordInput.addEventListener('input', validateConfirmPassword);

            // Gọi khi trang tải
            window.onload = getQueryParams;
        </script>


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