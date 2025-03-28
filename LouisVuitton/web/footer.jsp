<%-- 
    Document   : footer
    Created on : Mar 10, 2025, 9:24:16 PM
    Author     : adim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Footer Start -->
<div id="notification-box" style="display: none; position: fixed; top: 150px; right: 20px; background: #f8d7da; padding: 10px; border-radius: 5px; z-index: 9999;">
</div>

<footer class="ec-footer section-space-mt">
    <div class="footer-container">
<!--        <div class="footer-offer">6

        </div>-->
        <div class="footer-top section-space-footer-p">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-lg-3 ec-footer-contact">
                        <div class="ec-footer-widget">
                            <div class="ec-footer-logo">
                                <a href="home">
                                    <img src="assets/images/logo/logo4.png" alt>
                                    <img class="dark-footer-logo" src="assets/images/logo/logo4.png" alt="Site Logo" style="display: none;" />
                                </a>
                            </div>
                            <h4 class="ec-footer-heading">Contact us</h4>
                            <div class="ec-footer-links">
                                <ul class="align-items-center">
                                    <li class="ec-footer-link">Hoa Lac Hi-tech Park, km 29, Đại lộ Thăng Long, Hà Nội, Vietnam</li>
                                    <li class="ec-footer-link"><span>Call Us:</span><a>0967870138</a></li>
                                    <li class="ec-footer-link"><span>Email:</span><a>louisvuittonstore102@gmail.com</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-lg-2 ec-footer-info">
                        <div class="ec-footer-widget">
                            <h4 class="ec-footer-heading">Information</h4>
                            <div class="ec-footer-links">
                                <ul class="align-items-center">
                                    <li class="ec-footer-link"><a href="about-us">About us</a></li>
                                    <li class="ec-footer-link"><a href="faq">FAQ</a></li>
                                    <li class="ec-footer-link"><a href="order-history">Delivery Information</a></li>
                                    <li class="ec-footer-link"><a href="contact-us">Contact us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12 col-lg-2 ec-footer-service">
                        <div class="ec-footer-widget">
                            <h4 class="ec-footer-heading">Services</h4>
                            <div class="ec-footer-links">
                                <ul class="align-items-center">
                                    <li class="ec-footer-link"><a href="privacy-policy">Private & policy </a></li>
                                    <li class="ec-footer-link"><a href="terms-condition">Term & condition</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-lg-3 ec-footer-news">
                        <div class="ec-footer-widget">
                            <h4 class="ec-footer-heading">Stay Connected</h4>
                            <div class="ec-footer-links">
                                <ul class="align-items-center">
                                    <li class="ec-footer-link">Subscribe to explore exclusive collections, bespoke services, and invitations to Louis Vuitton events.</li>
                                </ul>
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
                            <div class="ec-copy">Copyright ©<span id="copyright_year"></span>
                                <a class="site-name text-upper" href="home">NYFS<span>.</span></a>
                                . All Rights Reserved</div>
                        </div>
                    </div>
                    <!-- Footer Copyright End -->
                    <!-- Footer payment -->
                    <div class="col footer-bottom-right">
                        <div class="footer-bottom-payment d-flex justify-content-end">
                            <div class="payment-link">
                                <img src="assets/images/icons/payment.png" alt>
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
<!-- Footer navigation panel for responsive display -->
<div class="ec-nav-toolbar">
    <div class="container">
        <div class="ec-nav-panel">
            <div class="ec-nav-panel-icons">
                <a href="#ec-mobile-menu" class="navbar-toggler-btn ec-header-btn ec-side-toggle"><i
                        class="fi-rr-menu-burger"></i></a>
            </div>
            <div class="ec-nav-panel-icons">
                <a href="#ec-side-cart" class="toggle-cart ec-header-btn ec-side-toggle"><i class="fi-rr-shopping-bag"></i><span
                        class="ec-cart-noti ec-header-count cart-count-lable">0</span></a>
            </div>
            <div class="ec-nav-panel-icons">
                <a href="home" class="ec-header-btn"><i class="fi-rr-home"></i></a>
            </div>
            <div class="ec-nav-panel-icons">
                <a href="wishlist.jsp" class="ec-header-btn"><i class="fi-rr-heart"></i><span
                        class="ec-cart-noti">0</span></a>
            </div>
            <div class="ec-nav-panel-icons">
                <a href="login" class="ec-header-btn"><i class="fi-rr-user"></i></a>
            </div>

        </div>
    </div>
</div>
<!-- Footer navigation panel for responsive display end -->
<script>
    let userId = ${sessionScope.user.id};  // Lấy userId của user đang đăng nhập
    let socket = new WebSocket("ws://" + window.location.host + "/louisvuitton/notifications");

    socket.onopen = function () {
        socket.send(userId);  // Gửi userId đến server
    };

    socket.onerror = function (error) {
        console.error("❌ Lỗi WebSocket:", error);
    };

    let notificationCount = 0; // Biến đếm số lượng thông báo

    socket.onmessage = function (event) {
        console.log("📢 Nhận thông báo:", event.data);

        let notificationBox = document.getElementById("notification-box");
        let notificationCountElement = document.getElementById("notification-count"); // Phần tử hiển thị số lượng

        if (!event.data || event.data.trim() === "") {
            console.warn("❌ Nhận thông báo nhưng nội dung rỗng!");
            return;
        }

        // Tăng số lượng thông báo
        notificationCount++;
        notificationCountElement.textContent = notificationCount;
        notificationCountElement.style.display = "block"; // Hiện số lượng thông báo

        // Thêm thông báo vào box
        let p = document.createElement("p");
        p.textContent = event.data;
        p.style.margin = "5px 0";
        notificationBox.appendChild(p);
        notificationBox.style.display = "block";

        // Tự động ẩn thông báo sau 15 giây nhưng vẫn giữ số lượng
        setTimeout(() => {
            notificationBox.style.display = "none";
            notificationBox.innerHTML = "";
        }, 15000);
    };



</script>


