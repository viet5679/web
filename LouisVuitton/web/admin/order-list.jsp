<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Orders" %> 
<!DOCTYPE html>
<html lang="en" dir="ltr">


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/order-list.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:41 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="admin, dashboard, crm, analytics, ecommerce, team, vendor, ai chat bot, backend, panel" />
        <meta name="description" content="LouisVuitton - Admin.">
        <meta name="author" content="LouisVuitton">

        <title>LouisVuitton - Admin.</title>

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon/favicon.ico">

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

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <style>
            table {
                width: 100%;
                border-collapse: collapse;
                table-layout: fixed; /* Cố định bố cục để không bị kéo giãn */
            }

            td, th {
                padding: 2px; /* Giảm padding để tiết kiệm không gian */
                text-align: center;
                font-size: 11px; /* Thu nhỏ font hơn nữa */
            }

            /* Giảm kích thước avatar */
            .cat-thumb {
                width: 20px;
                height: 20px;
                object-fit: cover;
            }

            /* Tinh chỉnh độ rộng từng cột */
            td:nth-child(1), th:nth-child(1) {
                width: 40px;
            }  /* ID */
            td:nth-child(2), th:nth-child(2) {
                width: 100px;
            } /* Email */
            td:nth-child(3), th:nth-child(3) {
                width: 100px;
            } /* Customer */
            td:nth-child(4), th:nth-child(4) {
                width: 60px;
            }  /* Total Amount */
            td:nth-child(5), th:nth-child(5) {
                width: 30px;
            }  /* Quantity */
            td:nth-child(6), th:nth-child(6) {
                width: 40px;
            }  /* Status */
            td:nth-child(7), th:nth-child(7) {
                width: 120px;
            } /* Address */
            td:nth-child(8), th:nth-child(8) {
                width: 80px;
            }  /* Action */

            /* Giảm padding nút bấm */
            button {
                padding: 2px 4px;
                font-size: 10px;
            }

            .fa {
                font-size: 10px;
            }

            /* Ẩn bớt nội dung trên màn hình nhỏ */
            @media (max-width: 1024px) {
                td:nth-child(2), th:nth-child(2) {
                    display: none;
                } /* Ẩn Email nếu không cần thiết */
            }
            /* Giới hạn chiều rộng của Address */
            td:nth-child(7), th:nth-child(7) {
                max-width: 120px; /* Thu nhỏ hơn nữa */
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
            }

            /* Khi hover vào thì hiển thị tooltip đầy đủ */
            td:nth-child(7):hover::after {
                content: attr(data-full-address); /* Hiển thị nội dung đầy đủ */
                position: absolute;
                background: rgba(0, 0, 0, 0.8);
                color: white;
                padding: 5px;
                border-radius: 5px;
                white-space: normal;
                max-width: 250px; /* Giới hạn chiều rộng tooltip */
                word-break: break-word;
                top: 100%;
                left: 0;
                z-index: 10;
            }

            .highlight-row {
                background-color: peachpuff !important;
                font-weight: bold;
            }

            .highlight-text {
                color: orange !important;
                font-weight: bold;
            }

            .action-buttons {
                display: none; /* Ẩn mặc định */
                margin-top: 5px;
            }
            .invoice-btn:hover + .action-buttons {
                display: block; /* Hiện khi hover vào icon */
            }
            .btn-group.dropup .dropdown-menu {
                background-color: white;
                border-radius: 10px;
                padding: 5px;
                min-width: 120px;
                text-align: center;
                box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            }

            .btn-group.dropup .dropdown-menu button {
                width: 100%;
                padding: 8px;
                border: none;
                background: none;
            }

            .btn-group.dropup .dropdown-menu button:hover {
                background-color: rgba(0, 0, 0, 0.05);
                border-radius: 8px;
            }


        </style>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


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
                                            <p class="message">Budget threshold was exceeded for project "LouisVuitton" B612
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
                                            <img src="assets/images/user/9.jpg" alt="user">
                                            <span class="label online"></span>
                                        </div>
                                        <div class="detail">
                                            <a href="chatapp.jsp" class="name">Boris Whisli</a>
                                            <p class="time">5:30AM, Today</p>
                                            <p class="message">Hello, I am sending some file. Please use this in landing
                                                page. And make sure this all files are comppress.</p>
                                            <span class="download-files">
                                                <span class="download">
                                                    <img src="assets/images/other/1.jpg" alt="image">
                                                    <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                                </span>
                                                <span class="download">
                                                    <img src="assets/images/other/2.jpg" alt="image">
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
                                            <img src="assets/images/user/8.jpg" alt="user">
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
                                            <img src="assets/images/user/7.jpg" alt="user">
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
                                            <img src="assets/images/user/6.jpg" alt="user">
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
                                            <img src="assets/images/user/5.jpg" alt="user">
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
                                                <img src="assets/images/other/1.jpg" alt="image">
                                                <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                            </span>
                                            <span class="download">
                                                <img src="assets/images/other/2.jpg" alt="image">
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
                                                <img src="assets/images/other/3.jpg" alt="image">
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
                    <!-- Page title & breadcrumb -->
                    <div class="gi-page-title gi-page-title-2">
                        <div class="gi-breadcrumb">
                            <h5>Order List</h5>
                            <ul>
                                <li><a href="dashboard">LouisVuitton</a></li>
                                <li>Order List</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="gi-card" id="ordertbl">
                                <div class="gi-card-header">
                                    <h4 class="gi-card-title">Recent Orders</h4>
                                    <div class="header-tools">
                                        <a href="javascript:void(0)" class="m-r-10 gi-full-card"><i
                                                class="ri-fullscreen-line"></i></a>
                                        <div class="gi-date-range dots">
                                            <span></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="gi-card-content card-default">
                                    <div class="order-table">
                                        <div class="table-responsive tbl-1200">
                                            <table id="recent_order" class="table">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Email</th>
                                                        <th>Customer</th>
                                                        <th>Total Amount</th>
                                                        <th>Quantity</th>
                                                        <th>Status</th>
                                                        <th>Address</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="o" items="${requestScope.listO}">
                                                        <tr>
                                                            <td class="token">#${o.id}</td>
                                                            <td>
                                                                <img class="cat-thumb" src="${o.user.avatar}">
                                                                <p class="">${o.user.email}</p>
                                                            </td>
                                                            <td>${o.name}</td>
                                                            <td><fmt:formatNumber value="${o.totalPrice}" type="currency" currencySymbol="$" /></td>
                                                            <td>${o.totalProduct}</td>

                                                            <td>
                                                                <c:choose>
                                                                    <c:when test="${o.status == 'Pending'}">
                                                                        <span class="badge bg-warning text-dark w-100 py-2 d-flex align-items-center justify-content-center">
                                                                            <i class="fa-solid fa-hourglass-half fs-5 me-1"></i> Pending
                                                                        </span>
                                                                    </c:when>
                                                                    <c:when test="${o.status == 'Processing'}">
                                                                        <span class="badge bg-primary w-100 py-2 d-flex align-items-center justify-content-center">
                                                                            <i class="fa-solid fa-cogs fs-5 me-1"></i> Processing
                                                                        </span>
                                                                    </c:when>
                                                                    <c:when test="${o.status == 'Shipped'}">
                                                                        <span class="badge bg-info text-dark w-100 py-2 d-flex align-items-center justify-content-center">
                                                                            <i class="fa-solid fa-truck fs-5 me-1"></i> Shipped
                                                                        </span>
                                                                    </c:when>
                                                                    <c:when test="${o.status == 'Delivered'}">
                                                                        <span class="badge bg-success w-100 py-2 d-flex align-items-center justify-content-center">
                                                                            <i class="fa-solid fa-check-circle fs-5 me-1"></i> Delivered
                                                                        </span>
                                                                    </c:when>
                                                                    <c:when test="${o.status == 'Canceled'}">
                                                                        <span class="badge bg-danger w-100 py-2 d-flex align-items-center justify-content-center">
                                                                            <i class="fa-solid fa-times-circle fs-5 me-1"></i> Canceled
                                                                        </span>
                                                                    </c:when>
                                                                    <c:when test="${o.status == 'Returned'}">
                                                                        <span class="badge bg-secondary w-100 py-2 d-flex align-items-center justify-content-center">
                                                                            <i class="fa-solid fa-undo fs-5 me-1"></i> Returned
                                                                        </span>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <span class="badge bg-dark w-100 py-2 d-flex align-items-center justify-content-center">
                                                                            <i class="fa-solid fa-question-circle fs-5 me-1"></i> Unknown
                                                                        </span>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </td>
                                                            <td>${o.address}</td>
                                                            <td>
                                                                <c:if test="${o.status == 'Pending'}">
                                                                    <div class="btn-group">
                                                                        <button class="btn btn-sm btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                                                            <i class="fa fa-file-invoice"></i>
                                                                        </button>

                                                                        <ul class="dropdown-menu">
                                                                            <li>
                                                                                <form action="listo" method="post">
                                                                                    <input type="hidden" name="orderId" value="${o.id}">
                                                                                    <input type="hidden" name="status" value="Delivered">
                                                                                    <button type="submit" class="dropdown-item text-success fw-bold">
                                                                                        ✔ Accept
                                                                                    </button>
                                                                                </form>
                                                                            </li>
                                                                            <li>
                                                                                <form action="listo" method="post">
                                                                                    <input type="hidden" name="orderId" value="${o.id}">
                                                                                    <input type="hidden" name="status" value="Canceled">
                                                                                    <button type="submit" class="dropdown-item text-danger fw-bold">
                                                                                        ✖ Reject
                                                                                    </button>
                                                                                </form>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </c:if>

                                                                <!-- Nút xem chi tiết -->
                                                                <button class="btn btn-sm btn-primary" onclick="window.location.href = 'invoice.jsp'">
                                                                    <i class="fa fa-eye"></i>
                                                                </button>
                                                            </td>
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

        <!-- Thêm thư viện SweetAlert2 (nếu chưa có) -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
                                                                    function showOrderOptions(orderId) {
                                                                        Swal.fire({
                                                                            title: "Xác nhận đơn hàng",
                                                                            text: "Bạn muốn chấp nhận hay từ chối đơn hàng này?",
                                                                            icon: "question",
                                                                            showCancelButton: true,
                                                                            confirmButtonText: "✔ Accept",
                                                                            cancelButtonText: "✖ Reject",
                                                                            cancelButtonColor: "#d33",
                                                                            confirmButtonColor: "#28a745",
                                                                            reverseButtons: true
                                                                        }).then((result) => {
                                                                            if (result.isConfirmed) {
                                                                                // Nếu chọn Accept
                                                                                document.getElementById("orderStatus-" + orderId).value = "Delivered";
                                                                            } else if (result.dismiss === Swal.DismissReason.cancel) {
                                                                                // Nếu chọn Reject
                                                                                document.getElementById("orderStatus-" + orderId).value = "Canceled";
                                                                            } else {
                                                                                return;
                                                                            }
                                                                            // Gửi form
                                                                            document.getElementById("orderForm-" + orderId).submit();
                                                                        });
                                                                    }
        </script>
    </body>
    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/order-list.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:41 GMT -->
</html>