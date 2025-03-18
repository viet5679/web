<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-----------------------------------------------------------------------------------
Item Name: LouisVuitton - Multipurpose eCommerce HTML Template.
Author: LouisVuitton
Version: 3.0.2
Copyright 2024
----------------------------------------------------------------------------------->
<!DOCTYPE html>
<html lang="en" dir="ltr">


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:02 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords"
              content="admin, dashboard, crm, analytics, ecommerce, team, vendor, ai chat bot, backend, panel" />
        <meta name="description" content="LouisVuitton - Admin.">
        <meta name="author" content="LouisVuitton">

        <title>LouisVuitton - Admin.</title>

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon/favicon.ico">

        <!-- Icon CSS -->
        <link href="assets/css/vendor/materialdesignicons.min.css" rel="stylesheet">
        <link href="assets/css/vendor/remixicon.css" rel="stylesheet">
        <link href="assets/css/vendor/owl.carousel.min.css" rel="stylesheet">

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
        <main class="wrapper sb-default ecom">
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

                    <div class="row">
                        <div class="col-xl-12">
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <div class="gi-card">
                                        <div class="gi-card-content label-card">
                                            <div class="title">
                                                <span class="icon"><i class="ri-shield-user-line"></i></span>
                                                <div class="growth-numbers">
                                                    <h4>Customers</h4>
                                                    <h5>${totalCustomers}</h5>
                                                </div>
                                            </div>
                                            <p class="card-groth ${customerGrowth >= 0 ? 'up' : 'down'}">
                                                <i class="${customerGrowth >= 0 ? 'ri-arrow-up-line' : 'ri-arrow-down-line'}"></i>
                                                <fmt:formatNumber value="${customerGrowth}" maxFractionDigits="1" minFractionDigits="0" />%
                                                <span>Last Month</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="gi-card">
                                        <div class="gi-card-content label-card">
                                            <div class="title">
                                                <span class="icon"><i class="ri-shopping-bag-3-line"></i></span>
                                                <div class="growth-numbers">
                                                    <h4>Order</h4>
                                                    <h5>${totalOrders}</h5>
                                                </div>
                                            </div>
                                            <p class="card-groth ${orderGrowth >= 0 ? 'up' : 'down'}">
                                                <i class="${orderGrowth >= 0 ? 'ri-arrow-up-line' : 'ri-arrow-down-line'}"></i>
                                                <fmt:formatNumber value="${orderGrowth}" maxFractionDigits="1" minFractionDigits="0" />%
                                                <span>Last Month</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="gi-card">
                                        <div class="gi-card-content label-card">
                                            <div class="title">
                                                <span class="icon"><i class="ri-money-dollar-circle-line"></i></span>
                                                <div class="growth-numbers">
                                                    <h4>Revenue</h4>
                                                    <h5>$${String.format("%.0f", totalRevenue)}</h5>
                                                </div>
                                            </div>
                                            <p class="card-groth ${revenueGrowth >= 0 ? 'up' : 'down'}">
                                                <i class="${revenueGrowth >= 0 ? 'ri-arrow-up-line' : 'ri-arrow-down-line'}"></i>
                                                <fmt:formatNumber value="${revenueGrowth}" maxFractionDigits="1" minFractionDigits="0" />%
                                                <span>Last Month</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xxl-12 col-xl-12">
                            <div class="gi-card revenue-overview">
                                <div class="gi-card-header header-575">
                                    <h4 class="gi-card-title">Revenue Overview</h4>
                                    <div class="header-tools">
                                        <a href="javascript:void(0)" class="m-r-10 gi-full-card" title="Full Screen"><i
                                                class="ri-fullscreen-line"></i></a>
                                    </div>
                                </div>
                                <div class="gi-card-content">
                                    <div class="gi-chart-header">
                                        <div class="block">
                                            <h6>Orders</h6>
                                            <h5>${totalOrders}
                                                <span class="${orderGrowth >= 0 ? 'up' : 'down'}">
                                                    <i class="${orderGrowth >= 0 ? 'ri-arrow-up-line' : 'ri-arrow-down-line'}"></i>
                                                    <fmt:formatNumber value="${orderGrowth}" maxFractionDigits="1" minFractionDigits="0" />%
                                                </span>
                                            </h5>
                                        </div>
                                        <div class="block">
                                            <h6>Revenue</h6>
                                            <h5>$${String.format("%.2f", totalRevenue/1000)}k
                                                <span class="${revenueGrowth >= 0 ? 'up' : 'down'}">
                                                    <i class="${revenueGrowth >= 0 ? 'ri-arrow-up-line' : 'ri-arrow-down-line'}"></i>
                                                    <fmt:formatNumber value="${revenueGrowth}" maxFractionDigits="1" minFractionDigits="0" />%
                                                </span>
                                            </h5>
                                        </div>
                                        <div class="block">
                                            <h6>Customers</h6>
                                            <h5>${totalCustomers}
                                                <span class="${customerGrowth >= 0 ? 'up' : 'down'}">
                                                    <i class="${customerGrowth >= 0 ? 'ri-arrow-up-line' : 'ri-arrow-down-line'}"></i>
                                                    <fmt:formatNumber value="${customerGrowth}" maxFractionDigits="1" minFractionDigits="0" />%
                                                </span>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="gi-chart-content">
                                        <div id="newrevenueChart" class="mb-m-24"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <script type="text/javascript">
                            window.revenueData = ${revenueData};
                            window.ordersData = ${ordersData};
                            window.customersData = ${customersData};
                        </script>

                        <!-- Top User -->
                        <div class="col-xxl-12 col-xl-12">
                            <div class="gi-card" id="ordertbl">
                                <div class="gi-card-header">
                                    <h4 class="gi-card-title">Top User</h4>
                                    <div class="header-tools">
                                        <a href="javascript:void(0)" class="m-r-10 gi-full-card" title="Full Screen"><i class="ri-fullscreen-line"></i></a>
                                    </div>
                                </div>
                                <div class="gi-card-content card-default">
                                    <div class="order-table">
                                        <div class="table-responsive">
                                            <table id="recent_order_data_table" class="table">
                                                <thead>
                                                    <tr>
                                                        <th>Name</th>
                                                        <th>Phone</th>
                                                        <th>Total Order</th>
                                                        <th>Total Spend</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="user" items="${topUsers}">
                                                        <tr>
                                                            <td class="token">${user.name}</td>
                                                            <td>${user.phone}</td>
                                                            <td>${user.orderCount}</td>
                                                            <td><fmt:formatNumber value="${user.totalSpent}" type="currency" currencyCode="USD"/></td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Top Product -->
                        <div class="col-xxl-12 col-xl-12">
                            <div class="gi-card" id="best_seller_tbl">
                                <div class="gi-card-header">
                                    <h4 class="gi-card-title">Top Product</h4>
                                    <div class="header-tools">
                                        <a href="javascript:void(0)" class="m-r-10 gi-full-card" title="Full Screen"><i class="ri-fullscreen-line"></i></a>
                                    </div>
                                </div>
                                <div class="gi-card-content card-default">
                                    <div class="best-seller-table">
                                        <div class="table-responsive">
                                            <table id="best_seller_data_table" class="table">
                                                <thead>
                                                    <tr>
                                                        <th>Product</th>
                                                        <th>Sale</th>
                                                        <th>Sold</th>
                                                        <th>Stock</th>

                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="product" items="${bestSellingProducts}">
                                                        <tr>
                                                            <td>${product.name}</td>
                                                            <td>${product.sale}%</td>
                                                            <td>${product.totalSold}</td>
                                                            <td>${product.stockQuantity}</td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
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
        <script src="assets/js/vendor/owl.carousel.min.js"></script>
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
        <script src="assets/js/data/ecommerce-chart-data.js"></script>
    </body>


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:28 GMT -->
</html>
