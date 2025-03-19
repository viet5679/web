<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>`n<!DOCTYPE html>
<html lang="en" dir="ltr">


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/invoice.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:42 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="admin, dashboard, crm, analytics, ecommerce, team, vendor, ai chat bot, backend, panel" />
        <meta name="description" content="Grabit - Admin.">
        <meta name="author" content="Maraviya Infotech">

        <title>Grabit - Admin.</title>

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/img/favicon/favicon.ico">

        <!-- Icon CSS -->
        <link href="assets/css/vendor/materialdesignicons.min.css" rel="stylesheet">
        <link href="assets/css/vendor/remixicon.css" rel="stylesheet">

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
        <style>
            #logo{
                width: 191px;
                height: 100px

            }
        </style>

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

            <!-- Notify sidebar -->
            <div class="gi-notify-bar-overlay"></div>
            <div class="gi-notify-bar">
                <div class="gi-bar-title">
                    <h6>Notifications<span class="label">12</span></h6>
                    <a href="javascript:void(0)" class="close-notify"><i class="ri-close-line"></i></a>
                </div>
                <div class="gi-bar-content">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="alert-tab" data-bs-toggle="tab" data-bs-target="#alert"
                                    type="button" role="tab" aria-controls="alert" aria-selected="true">Alert</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="messages-tab" data-bs-toggle="tab" data-bs-target="#messages"
                                    type="button" role="tab" aria-controls="messages" aria-selected="false">Messages</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="log-tab" data-bs-toggle="tab" data-bs-target="#log" type="button"
                                    role="tab" aria-controls="log" aria-selected="false">Log</button>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="alert" role="tabpanel" aria-labelledby="alert-tab">
                            <div class="gi-alert-list">
                                <ul>
                                    <li>
                                        <div class="icon gi-alert">
                                            <i class="ri-alarm-warning-line"></i>
                                        </div>
                                        <div class="detail">
                                            <div class="title">Your final report is overdue</div>
                                            <p class="time">Just now</p>
                                            <p class="message">Please submit your quarterly report before - June 15.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon gi-warn">
                                            <i class="ri-error-warning-line"></i>
                                        </div>
                                        <div class="detail">
                                            <div class="title">Your product campaign is stop!</div>
                                            <p class="time">5:45AM - 25/05/2023</p>
                                            <p class="message">Please submit your quarterly report before Jun 15.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon gi-success">
                                            <i class="ri-check-double-line"></i>
                                        </div>
                                        <div class="detail">
                                            <div class="title">Your payment is successfully processed</div>
                                            <p class="time">9:20PM - 19/06/2023</p>
                                            <p class="message">Check your account wallet. if there is any issue, create
                                                support ticket.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon gi-warn">
                                            <i class="ri-error-warning-line"></i>
                                        </div>
                                        <div class="detail">
                                            <div class="title">Budget threshold exceeded!</div>
                                            <p class="time">4:15AM - 01/04/2023</p>
                                            <p class="message">Budget threshold was exceeded for project "Grabit" B612
                                                elements.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon gi-warn">
                                            <i class="ri-close-line"></i>
                                        </div>
                                        <div class="detail">
                                            <div class="title">Project submission was decline!</div>
                                            <p class="time">4:15AM - 01/04/2023</p>
                                            <p class="message">Your project "B126" is declined by Theresa Mayeras.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon gi-success">
                                            <i class="ri-check-double-line"></i>
                                        </div>
                                        <div class="detail">
                                            <div class="title">Your payment is successfully processed</div>
                                            <p class="time">9:20PM - 19/06/2023</p>
                                            <p class="message">Check your account wallet. if there is any issue, create
                                                support ticket.</p>
                                        </div>
                                    </li>
                                    <li class="check"><a class="gi-primary-btn" href="chatapp.jsp">View all</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="messages" role="tabpanel" aria-labelledby="messages-tab">
                            <div class="gi-message-list">
                                <ul>
                                    <li>
                                        <a href="chatapp.jsp" class="reply">Reply</a>
                                        <div class="user">
                                            <img src="assets/img/user/9.jpg" alt="user">
                                            <span class="label online"></span>
                                        </div>
                                        <div class="detail">
                                            <a href="chatapp.jsp" class="name">Boris Whisli</a>
                                            <p class="time">5:30AM, Today</p>
                                            <p class="message">Hello, I am sending some file. Please use this in landing
                                                page. And make sure this all files are comppress.</p>
                                            <span class="download-files">
                                                <span class="download">
                                                    <img src="assets/img/other/1.jpg" alt="image">
                                                    <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                                </span>
                                                <span class="download">
                                                    <img src="assets/img/other/2.jpg" alt="image">
                                                    <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                                </span>
                                                <span class="download">
                                                    <span class="file">
                                                        <i class="ri-file-ppt-line"></i>
                                                    </span>
                                                    <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                                </span>
                                            </span>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="chatapp.jsp" class="reply">Reply</a>
                                        <div class="user">
                                            <img src="assets/img/user/8.jpg" alt="user">
                                            <span class="label offline"></span>
                                        </div>
                                        <div class="detail">
                                            <a href="chatapp.jsp" class="name">Frank N. Stein</a>
                                            <p class="time">8:30PM, 05/12/2023</p>
                                            <p class="message">Please take a look on landing page. There is some bus to open
                                                popup model. and save form data.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="chatapp.jsp" class="reply">Reply</a>
                                        <div class="user">
                                            <img src="assets/img/user/7.jpg" alt="user">
                                            <span class="label busy"></span>
                                        </div>
                                        <div class="detail">
                                            <a href="chatapp.jsp" class="name">Frank N. Stein</a>
                                            <p class="time">8:30PM, 05/12/2023</p>
                                            <p class="message">Please take a look on landing page. There is some bus to open
                                                popup model. and save form data.</p>
                                            <span class="download-files">
                                                <span class="download">
                                                    <span class="file">
                                                        <i class="ri-file-zip-line"></i>
                                                    </span>
                                                    <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                                </span>
                                                <span class="download">
                                                    <span class="file">
                                                        <i class="ri-file-text-line"></i>
                                                    </span>
                                                    <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                                </span>
                                                <span class="download">
                                                    <span class="file">
                                                        <i class="ri-file-ppt-line"></i>
                                                    </span>
                                                    <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                                </span>
                                            </span>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="chatapp.jsp" class="reply">Reply</a>
                                        <div class="user">
                                            <img src="assets/img/user/6.jpg" alt="user">
                                            <span class="label busy"></span>
                                        </div>
                                        <div class="detail">
                                            <a href="chatapp.jsp" class="name">Paige Turner</a>
                                            <p class="time">4:30PM, 12/12/2023</p>
                                            <p class="message">Landing page issues are done. and now i am working on admin
                                                user module.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="chatapp.jsp" class="reply">Reply</a>
                                        <div class="user">
                                            <img src="assets/img/user/5.jpg" alt="user">
                                            <span class="label busy"></span>
                                        </div>
                                        <div class="detail">
                                            <a href="chatapp.jsp" class="name">Allie Grater</a>
                                            <p class="time">8:30PM, 05/12/2023</p>
                                            <p class="message">Take marketing module task.</p>
                                        </div>
                                    </li>
                                    <li class="check"><a class="gi-primary-btn" href="chatapp.jsp">View all</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="log" role="tabpanel" aria-labelledby="log-tab">
                            <div class="gi-activity-list activity-list">
                                <ul>
                                    <li>
                                        <span class="date-time">8 Thu<span class="time">11:30 AM - 05:10 PM
                                            </span></span>
                                        <p class="title">Project Submitted from Smith</p>
                                        <p class="detail">Lorem Ipsum is simply dummy text of the printing and
                                            lorem is typesetting industry.</p>
                                        <span class="download-files">
                                            <span class="download">
                                                <img src="assets/img/other/1.jpg" alt="image">
                                                <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                            </span>
                                            <span class="download">
                                                <img src="assets/img/other/2.jpg" alt="image">
                                                <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                            </span>
                                            <span class="download">
                                                <span class="file">
                                                    <i class="ri-file-ppt-line"></i>
                                                </span>
                                                <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                            </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span class="date-time warn">7 Wed<span class="time">1:30 PM - 02:30 PM
                                            </span></span>
                                        <p class="title">Morgus pvt - project due</p>
                                        <p class="detail">Project modul delay for some bugs.</p>
                                        <span class="download-files">
                                            <span class="download">
                                                <span class="file">
                                                    <i class="ri-file-zip-line"></i>
                                                </span>
                                                <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                            </span>
                                            <span class="download">
                                                <span class="file">
                                                    <i class="ri-file-text-line"></i>
                                                </span>
                                                <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                            </span>
                                            <span class="download">
                                                <img src="assets/img/other/3.jpg" alt="image">
                                                <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                            </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span class="date-time">6 Tue<span class="time">9:30 AM - 11:00 AM
                                            </span></span>
                                        <p class="title">Interview for management dept.</p>
                                        <p class="detail">There are many variations of passages of Lorem Ipsum
                                            available, but the majority have suffered alteration in some form,
                                            by injected humour.</p>
                                        <span class="download-files">
                                            <span class="download">
                                                <span class="file">
                                                    <i class="ri-file-zip-line"></i>
                                                </span>
                                                <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                            </span>
                                            <span class="download">
                                                <span class="file">
                                                    <i class="ri-file-text-line"></i>
                                                </span>
                                                <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                            </span>
                                            <span class="download">
                                                <span class="file">
                                                    <i class="ri-file-ppt-line"></i>
                                                </span>
                                                <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                            </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span class="date-time">5 Mon<span class="time">3:30 AM - 4:00 PM
                                            </span></span>
                                        <p class="title">Meeting with mr. Ken doe</p>
                                        <p class="detail">The majority have suffered alteration in some form,
                                            by injected humour.</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- main content -->
            <div class="gi-main-content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="gi-card gi-invoice max-width-1170">
                                <div class="gi-card-header">
                                    <h4 class="gi-card-title">Invoice</h4>

                                </div>
                                <div class="gi-card-content card-default">

                                    <c:set var="o" value="${requestScope.order}"/>
                                    <div class="invoice-wrapper">

                                        <div class="row">
                                            <div class="d-flex justify-content-between align-items-start flex-wrap">
                                                <div class="col-md-6 col-lg-3 col-sm-6">
                                                    <img id="logo" src="assets/images/logo/full-logo.png" alt="logo">

                                                    <address>
                                                        <br> Hoa Lac Hi-tech Park, km 29, Đại lộ Thăng Long, Hà Nội, Vietnam
                                                    </address>
                                                </div>
                                                <div class="col-md-6 col-lg-3 col-sm-6">
                                                    <p class="text-dark mb-2">From</p>

                                                    <address>
                                                        <span>LouisVuitton</span>

                                                        <br> <span>Email:</span> louisvuittonstore102@gmail.com
                                                        <br> <span>Phone:</span> 0967870138
                                                    </address>
                                                </div>
                                                <div class="col-md-6 col-lg-3 col-sm-6">
                                                    <p class="text-dark mb-2">To</p>

                                                    <address>
                                                        <span>${o.name}</span>
                                                        <br> ${o.address}
                                                        <br> <span>Email</span>: ${o.user.email}
                                                        <br> <span>Phone:</span> ${o.phone}
                                                    </address>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="gi-chart-header">
                                            <div class="block">
                                                <h6>Invoice</h6>
                                                <h5>#${o.id}
                                                </h5>
                                            </div>

                                            <div class="block">
                                                <h6>Quantity</h6>
                                                <h5>${o.totalProduct}
                                                </h5>
                                            </div>
                                            <div class="block">
                                                <h6>Date</h6>
                                                <h5>${o.createdAt}
                                                </h5>
                                            </div>
                                        </div>
                                        <div class="table-responsive tbl-800">
                                            <div>
                                                <table class="table-invoice table-striped" style="width:100%">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>Image</th>
                                                            <th>Item</th>
                                                            <th>Quantity</th>
                                                            <th>Unit_Cost</th>
                                                            <th>Total</th>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                        <c:forEach var="od" items="${requestScope.listOD}">

                                                            <c:set var="totalAmount" value="${totalAmount + od.totalPrice}"/>
                                                            <tr>
                                                                <td>1</td>
                                                                <td><img class="invoice-item-img" src="${od.avatar}"
                                                                         alt="product-image"></td>
                                                                <td>${od.name} </td>
                                                                <td>${od.quantity}</td>
                                                                <td>$${od.price}</td>
                                                                <td>$${od.totalPrice}</td>
                                                            </tr>
                                                        </c:forEach>


                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>

                                        <div class="row justify-content-end inc-total">
                                            <div class="col-lg-9 order-lg-1 order-md-2 order-sm-2">
                                                <div class="note">
                                                    <label>Note</label>
                                                    <p>${order.comments}</p>

                                                </div>
                                            </div>
                                            <div class="col-lg-3 order-lg-2 order-md-1 order-sm-1">
                                                <ul class="list-unstyled">

                                                    <li class="text-dark">Total
                                                        <span class="d-inline-block float-right">$${totalAmount}</span>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <footer>
                <div class="container-fluid">
                    <div class="copyright">
                        <p><span id="copyright_year"></span> © Grabit, All rights Reserved.</p>
                        <p>Design by MaraviyaInfotech.</p>
                    </div>
                </div>
            </footer>

            <!-- Feature tools -->
            <div class="gi-tools-sidebar-overlay"></div>
            <div class="gi-tools-sidebar">
                <a href="javascript:void(0)" class="gi-tools-sidebar-toggle in-out">
                    <i class="ri-settings-4-line"></i>
                </a>
                <div class="gi-bar-title">
                    <h6>Tools</h6>
                    <a href="javascript:void(0)" class="close-tools"><i class="ri-close-line"></i></a>
                </div>
                <div class="gi-tools-detail">
                    <div class="gi-tools-block">
                        <h3>Modes</h3>
                        <div class="gi-tools-info">
                            <div class="gi-tools-item mode active" data-gi-mode-tool="light">
                                <img src="assets/img/tools/light.png" alt="light">
                                <p>light</p>
                            </div>
                            <div class="gi-tools-item mode" data-gi-mode-tool="dark">
                                <img src="assets/img/tools/dark.png" alt="dark">
                                <p>dark</p>
                            </div>
                        </div>
                    </div>
                    <div class="gi-tools-block">
                        <h3>Sidebar</h3>
                        <div class="gi-tools-info">
                            <div class="gi-tools-item sidebar" data-sidebar-mode-tool="light">
                                <img src="assets/img/tools/side-light.png" alt="light">
                                <p>light</p>
                            </div>
                            <div class="gi-tools-item sidebar active" data-sidebar-mode-tool="dark">
                                <img src="assets/img/tools/side-dark.png" alt="dark">
                                <p>dark</p>
                            </div>
                            <div class="gi-tools-item sidebar" data-sidebar-mode-tool="bg-1">
                                <img src="assets/img/tools/side-bg-1.png" alt="background">
                                <p>Bg-1</p>
                            </div>
                            <div class="gi-tools-item sidebar" data-sidebar-mode-tool="bg-2">
                                <img src="assets/img/tools/side-bg-2.png" alt="background">
                                <p>Bg-2</p>
                            </div>
                            <div class="gi-tools-item sidebar" data-sidebar-mode-tool="bg-3">
                                <img src="assets/img/tools/side-bg-3.png" alt="background">
                                <p>Bg-3</p>
                            </div>
                            <div class="gi-tools-item sidebar" data-sidebar-mode-tool="bg-4">
                                <img src="assets/img/tools/side-bg-4.png" alt="background">
                                <p>Bg-4</p>
                            </div>
                        </div>
                    </div>
                    <div class="gi-tools-block">
                        <h3>Header</h3>
                        <div class="gi-tools-info">
                            <div class="gi-tools-item header active" data-header-mode="light">
                                <img src="assets/img/tools/header-light.png" alt="light">
                                <p>light</p>
                            </div>
                            <div class="gi-tools-item header" data-header-mode="dark">
                                <img src="assets/img/tools/header-dark.png" alt="dark">
                                <p>dark</p>
                            </div>
                        </div>
                    </div>
                    <div class="gi-tools-block">
                        <h3>Backgrounds</h3>
                        <div class="gi-tools-info">
                            <div class="gi-tools-item bg active" data-bg-mode="default">
                                <img src="assets/img/tools/bg-0.png" alt="default">
                                <p>Default</p>
                            </div>
                            <div class="gi-tools-item bg" data-bg-mode="bg-1">
                                <img src="assets/img/tools/bg-1.png" alt="bg-1">
                                <p>Bg-1</p>
                            </div>
                            <div class="gi-tools-item bg" data-bg-mode="bg-2">
                                <img src="assets/img/tools/bg-2.png" alt="bg-2">
                                <p>Bg-2</p>
                            </div>
                            <div class="gi-tools-item bg" data-bg-mode="bg-3">
                                <img src="assets/img/tools/bg-3.png" alt="bg-3">
                                <p>Bg-3</p>
                            </div>
                            <div class="gi-tools-item bg" data-bg-mode="bg-4">
                                <img src="assets/img/tools/bg-4.png" alt="bg-4">
                                <p>Bg-4</p>
                            </div>
                            <div class="gi-tools-item bg" data-bg-mode="bg-5">
                                <img src="assets/img/tools/bg-5.png" alt="bg-5">
                                <p>Bg-5</p>
                            </div>
                        </div>
                    </div>
                    <div class="gi-tools-block">
                        <h3>Box Design</h3>
                        <div class="gi-tools-info">
                            <div class="gi-tools-item box active" data-box-mode-tool="default">
                                <img src="assets/img/tools/box-0.png" alt="default">
                                <p>Default</p>
                            </div>
                            <div class="gi-tools-item box" data-box-mode-tool="box-1">
                                <img src="assets/img/tools/box-1.png" alt="box-1">
                                <p>Box-1</p>
                            </div>
                            <div class="gi-tools-item box" data-box-mode-tool="box-2">
                                <img src="assets/img/tools/box-2.png" alt="box-2">
                                <p>Box-2</p>
                            </div>
                            <div class="gi-tools-item box" data-box-mode-tool="box-3">
                                <img src="assets/img/tools/box-3.png" alt="box-3">
                                <p>Box-3</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <!-- Vendor Custom -->
        <script src="assets/js/vendor/jquery-3.6.4.min.js"></script>
        <script src="assets/js/vendor/simplebar.min.js"></script>
        <script src="assets/js/vendor/bootstrap.bundle.min.js"></script>
        <script src="assets/js/vendor/apexcharts.min.js"></script>
        <script src="assets/js/vendor/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="assets/js/vendor/jquery-jvectormap-world-mill-en.js"></script>
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


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/invoice.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:42 GMT -->
</html>
