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
        <link rel="shortcut icon" href="assets/images/logo/full-lo.png">

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
                                                                        <span class="badge bg-info w-100 py-2 d-flex align-items-center justify-content-center">
                                                                            <i class="fa-solid fa-truck fs-5 me-1"></i> Shipped
                                                                        </span>
                                                                    </c:when>
                                                                    <c:when test="${o.status == 'Delivered'}">
                                                                        <span class="badge bg-success w-100 py-2 d-flex align-items-center justify-content-center">
                                                                            <i class="fa-solid fa-check-circle fs-5 me-1"></i> Delivered
                                                                        </span>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <span class="badge bg-danger w-100 py-2 d-flex align-items-center justify-content-center">
                                                                            <i class="fa-solid fa-times-circle fs-5 me-1"></i> Canceled
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
                                                                                <form action="list-order" method="post">
                                                                                    <input type="hidden" name="orderId" value="${o.id}">
                                                                                    <input type="hidden" name="status" value="Processing">
                                                                                    <button type="submit" class="dropdown-item text-success fw-bold">
                                                                                        Accept
                                                                                    </button>
                                                                                </form>
                                                                            </li>
                                                                            <li>
                                                                                <form action="list-order" method="post">
                                                                                    <input type="hidden" name="orderId" value="${o.id}">
                                                                                    <input type="hidden" name="status" value="Canceled">
                                                                                    <button type="submit" class="dropdown-item text-danger fw-bold">
                                                                                        Reject
                                                                                    </button>
                                                                                </form>
                                                                            </li>
                                                                        </ul>
                                                                    </c:if>
                                                                    <c:if test="${o.status == 'Processing'}">
                                                                        <div class="btn-group">
                                                                            <button class="btn btn-sm btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                                                                <i class="fa fa-file-invoice"></i>
                                                                            </button>
                                                                            <ul class="dropdown-menu">
                                                                                <li>
                                                                                    <form action="list-order" method="post">
                                                                                        <input type="hidden" name="orderId" value="${o.id}">
                                                                                        <input type="hidden" name="status" value="Canceled">
                                                                                        <button type="submit" class="dropdown-item text-danger fw-bold">
                                                                                            Reject
                                                                                        </button>
                                                                                    </form>
                                                                                </li>
                                                                                <li>
                                                                                    <form action="list-order" method="post">
                                                                                        <input type="hidden" name="orderId" value="${o.id}">
                                                                                        <input type="hidden" name="status" value="Shipped">
                                                                                        <button type="submit" class="dropdown-item text-success fw-bold">
                                                                                            Ship
                                                                                        </button>
                                                                                    </form>
                                                                                </li>
                                                                            </ul>
                                                                        </c:if>
                                                                        <c:if test="${o.status == 'Shipped'}">
                                                                            <div class="btn-group">
                                                                                <button class="btn btn-sm btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                                                                    <i class="fa fa-file-invoice"></i>
                                                                                </button>
                                                                                <ul class="dropdown-menu">
                                                                                    <li>
                                                                                        <form action="list-order" method="post">
                                                                                            <input type="hidden" name="orderId" value="${o.id}">
                                                                                            <input type="hidden" name="status" value="Canceled">
                                                                                            <button type="submit" class="dropdown-item text-danger fw-bold">
                                                                                                Reject
                                                                                            </button>
                                                                                        </form>
                                                                                    </li>
                                                                                    <li>
                                                                                        <form action="list-order" method="post">
                                                                                            <input type="hidden" name="orderId" value="${o.id}">
                                                                                            <input type="hidden" name="status" value="Delivered">
                                                                                            <button type="submit" class="dropdown-item text-success fw-bold">
                                                                                                Success
                                                                                            </button>
                                                                                        </form>
                                                                                    </li>
                                                                                </ul>
                                                                            </c:if>
                                                                            <!-- Nút xem chi tiết -->
                                                                            <form action="order-detail" method="post">
                                                                                <input type="hidden" name="orderId" value="${o.id}">
                                                                                <button type="submit" class="btn btn-sm btn-primary">
                                                                                    <i class="fa fa-eye"></i>
                                                                                </button>
                                                                            </form>
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