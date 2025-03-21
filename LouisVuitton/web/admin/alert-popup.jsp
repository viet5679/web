<%@ page contentType="text/html; charset=UTF-8" %>`n<!DOCTYPE html>
<html lang="en" dir="ltr">


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/alert-popup.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:45 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="admin, dashboard, crm, analytics, ecommerce, team, vendor, ai chat bot, backend, panel" />
        <meta name="description" content="LouisVuitton - Admin.">
        <meta name="author" content="LouisVuitton">

        <title>LouisVuitton - Admin.</title>

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/logo/full-lo.png">

        <!-- Icon CSS -->
        <link href="assets/css/vendor/materialdesignicons.min.css" rel="stylesheet">
        <link href="assets/css/vendor/remixicon.css" rel="stylesheet">
        <link href="assets/css/vendor/sweetalert2.min.css" rel="stylesheet">
        <link href="assets/css/vendor/animate.min.css" rel="stylesheet">

        <!-- Vendor CSS -->
        <link href='assets/css/vendor/datatables.bootstrap5.min.css' rel='stylesheet'>
        <link href='assets/css/vendor/responsive.datatables.min.css' rel='stylesheet'>
        <link href='assets/css/vendor/daterangepicker.css' rel='stylesheet'>
        <link href="assets/css/vendor/simplebar.css" rel="stylesheet">
        <link href="assets/css/vendor/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/vendor/apexcharts.css" rel="stylesheet">
        <link href="assets/css/vendor/jquery-jvectormap-1.2.2.css" rel="stylesheet">

        <!-- Main CSS -->
        <link id="main-css" href="assets/css/style.css" rel="stylesheet">

    </head>

    <body>
        <main class="wrapper sb-default">
            <!-- Loader -->
            <div id="gi-overlay">
                <div class="loader"></div>
            </div>

            <!-- Header -->
            <jsp:include page="header.jsp"/>

            <!-- sidebar -->
            <jsp:include page="sidebar.jsp"/>

            <!-- main content -->
            <div class="gi-main-content">
                <div class="container-fluid">
                    <!-- Page title & breadcrumb -->
                    <div class="gi-page-title gi-page-title-2">
                        <div class="gi-breadcrumb">
                            <h5>Alert Popup</h5>
                            <ul>
                                <li><a href="index.jsp">LouisVuitton</a></li>
                                <li><a href="index.jsp">CRM</a></li>
                                <li>Alert Popup</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="gi-card">
                                <div class="gi-card-content label-card">
                                    <div class="alert-popup">
                                        <ul>
                                            <li>A basic message<button class="pop-basic gi-btn-primary">Click</button></li>
                                            <li>A Success message<button class="pop-success gi-btn-primary">Click</button></li>
                                            <li>A title with a text under<button class="pop-text-under gi-btn-primary">Click</button></li>
                                            <li>A modal with a title, an error icon, a text, and a footer<button class="pop-error-icon gi-btn-primary">Click</button></li>
                                            <li>A modal window with a long content inside:<button class="pop-long-content gi-btn-primary">Click</button></li>
                                            <li>Custom HTML description and buttons with ARIA labels<button class="pop-like gi-btn-primary">Click</button></li>
                                            <li>A dialog with three buttons<button class="pop-save gi-btn-primary">Click</button></li>
                                            <li>A custom positioned dialog<button class="pop-positioned-timeout gi-btn-primary">Click</button></li>
                                            <li>Custom animation with Animate.css<button class="pop-fade-down gi-btn-primary">Click</button></li>
                                            <li>A confirm dialog, with a function attached to the "Confirm"-button<button class="pop-delete gi-btn-primary">Click</button></li>
                                            <li>By passing a parameter, you can execute something else for "Cancel"<button class="pop-delete-cancel gi-btn-primary">Click</button></li>
                                            <li>A message with a custom image<button class="pop-img gi-btn-primary">Click</button></li>
                                            <li>A message with custom width, padding, background<button class="pop-custom gi-btn-primary">Click</button></li>
                                            <li>A message with auto close timer<button class="pop-auto-close gi-btn-primary">Click</button></li>
                                            <li>Right-to-left support for Arabic, Persian, Hebrew, and other RTL languages<button class="pop-rtl gi-btn-primary">Click</button></li>
                                            <li>AJAX request example<button class="pop-ajax gi-btn-primary">Click</button></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- footer -->
            <jsp:include page="footer.jsp"/>
        </main>

        <!-- Vendor Custom -->
        <script src="assets/js/vendor/jquery-3.6.4.min.js"></script>
        <script src="assets/js/vendor/simplebar.min.js"></script>
        <script src="assets/js/vendor/bootstrap.bundle.min.js"></script>
        <script src="assets/js/vendor/apexcharts.min.js"></script>
        <script src="assets/js/vendor/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="assets/js/vendor/jquery-jvectormap-world-mill-en.js"></script>
        <script src="assets/js/vendor/sweetalert2.min.js"></script>
        <!-- Data Tables -->
        <script src='assets/js/vendor/jquery.datatables.min.js'></script>
        <script src='assets/js/vendor/datatables.bootstrap5.min.js'></script>
        <script src='assets/js/vendor/datatables.responsive.min.js'></script>
        <!-- Caleddar -->
        <script src="assets/js/vendor/jquery.simple-calendar.js"></script>
        <!-- Date Range Picker -->
        <script src="assets/js/vendor/moment.min.js"></script>
        <script src="assets/js/vendor/daterangepicker.js"></script>
        <script src="assets/js/vendor/date-range.js"></script>

        <!-- Main Custom -->
        <script src="assets/js/main.js"></script>
    </body>


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/alert-popup.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:46 GMT -->
</html>
