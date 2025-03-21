<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>`n<!DOCTYPE html>
<html lang="en" dir="ltr">


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/add-category.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:41 GMT -->
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
                            <h5>Category</h5>
                            <ul>
                                <li><a href="dashboard">LouisVuitton</a></li>
                                <li>Category</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row gi-category">
                        <div class="col-xl-4 col-lg-12">
                            <div class="team-sticky-bar">
                                <div class="col-md-12">
                                    <div class="gi-cat-list gi-card card-default mb-24px">
                                        <div class="gi-card-content">
                                            <div class="gi-cat-form">
                                                <h3>Add New Category</h3>
                                                <form action="add-categories" method="POST">   
                                                    <div class="form-group">
                                                        <label for="id">Id</label>
                                                        <div class="col-12">
                                                            <input id="id" name="id" class="form-control here slug-title" type="text" value="${requestScope.id}" readonly />
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Name</label>
                                                        <div class="col-12">
                                                            <input id="text" name="name" class="form-control here slug-title" type="text">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12 d-flex">
                                                            <button type="submit" class="gi-btn-primary">Submit</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-12">
                            <div class="gi-card card-default product-list">
                                <div class="gi-card-content ">
                                    <div class="table-responsive">
                                        <table id="product_list" class="table" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>Id</th>
                                                    <th>Name</th>
                                                    <th>Total Product</th>
                                                    <th>Status</th>
                                                    <th>Create At</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <c:forEach items="${categoryProductCountMap}" var="c">
                                                    <tr>
                                                        <td>${c.key.id}</td>
                                                        <td>${c.key.name}</td>
                                                        <td><span class="gi-sub-cat-list" title="Total Sub Categories">${c.value}</span>
                                                        </td>
                                                        <c:if test="${c.key.status == 1}"> 
                                                            <td> <span class="active">Enable</span></td>
                                                        </c:if>
                                                        <c:if test="${c.key.status != 1}"> 
                                                            <td class="active">Disable</td>
                                                        </c:if>
                                                        <td>${c.key.createdAt}</td>
                                                        <td>
                                                            <button type="button" class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">
                                                                <span class="sr-only"><i class="ri-settings-3-line"></i></span>
                                                            </button>
                                                            <form action="category" method="post" id="updateForm">                               
                                                                        <input type="hidden" name="id" id="categoryId">
                                                                        <input type="hidden" name="type" id="typeId">
                                                                </form>
                                                                
                                                                <script>
                                                                    function updateStatusUser(id, type) {
                                                                        document.getElementById("categoryId").value = id;
                                                                        document.getElementById("typeId").value = type;
                                                                        document.getElementById("updateForm").submit();                                                                                                              
                                                                    }
                                                                </script>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="javascript:void(0);" onclick="deleteCategory(${c.key.id})">Delete</a>
                                                                <c:choose>
                                                                    <c:when test="${c.key.status == 1}">
                                                                        <a class="dropdown-item" href="javascript:void(0);" onclick="updateStatusUser(${c.key.id}, 'disable')">Disable</a>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <a class="dropdown-item" href="javascript:void(0);" onclick="updateStatusUser(${c.key.id}, 'enable')">Enable</a>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </div>
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
            <!-- footer -->
            <jsp:include page="footer.jsp"/>
        </main>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
            function deleteCategory(categoryID) {
                Swal.fire({
                    title: "Are you sure you want to delete?",
                    text: "This category will be permanently deleted!",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#d33",
                    cancelButtonColor: "#3085d6",
                    confirmButtonText: "Delete",
                    cancelButtonText: "Cancel"
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = "category?categoryID=" + categoryID;
                    }
                });
            }
        </script>

        <%-- Display notification if exists --%>
        <c:if test="${not empty success}">
            <script>
                Swal.fire({
                    title: "Success!",
                    text: "${success}",
                    icon: "success",
                    confirmButtonText: "OK"
                });
            </script>
        </c:if>

        <c:if test="${not empty error}">
            <script>
                Swal.fire({
                    title: "Error!",
                    text: "${error}",
                    icon: "error",
                    confirmButtonText: "OK"
                });
            </script>
        </c:if>

        <!-- Vendor Custom -->
        <script src="assets/js/vendor/jquery-3.6.4.min.js"></script>
        <script src="assets/js/vendor/simplebar.min.js"></script>
        <script src="assets/js/vendor/bootstrap.bundle.min.js"></script>
        <script src="assets/js/vendor/apexcharts.min.js"></script>
        <script src="assets/js/vendor/bootstrap-tagsinput.js"></script>
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


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/add-category.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:41 GMT -->
</html>
