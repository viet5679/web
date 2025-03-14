

<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en" dir="ltr">


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/add-product.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:40 GMT -->
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
                                            <p class="message">Check your account wallet. if there is any issue, create support ticket.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon gi-warn">
                                            <i class="ri-error-warning-line"></i>
                                        </div>
                                        <div class="detail">
                                            <div class="title">Budget threshold exceeded!</div>
                                            <p class="time">4:15AM - 01/04/2023</p>
                                            <p class="message">Budget threshold was exceeded for project "Grabit" B612 elements.</p>
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
                                            <p class="message">Check your account wallet. if there is any issue, create support ticket.</p>
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
                                            <p class="message">Hello,  I am sending some file. Please use this in landing page. And make sure this all files are comppress.</p>
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
                                            <p class="message">Please take a look on landing page. There is some bus to open popup model. and save form data.</p>
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
                                            <p class="message">Please take a look on landing page. There is some bus to open popup model. and save form data.</p>
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
                                            <p class="message">Landing page issues are done. and now i am working on admin user module.</p>
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
                    <!-- Page title & breadcrumb -->
                    <div class="gi-page-title gi-page-title-2">
                        <div class="gi-breadcrumb">
                            <h5>Add Product</h5>
                            <ul>
                                <li><a href="index.jsp">Grabit</a></li>
                                <li>Add Product</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="gi-card card-default">
                                <div class="gi-card-content">
                                    <<<<<<< HEAD
                                    <form action="add" method="post" class="row g-3" enctype="multipart/form-data" >
                                        <div class="row gi-product-uploads">
                                            <div class="col-lg-4 mb-991">
                                                <div class="gi-vendor-img-upload">
                                                    <div class="gi-vendor-main-img">
                                                        <div class="avatar-container">
                                                            <div class="avatar-upload">
                                                                <div class="avatar-edit">
                                                                    <input type='file' id="product_main" class="gi-image-upload" accept=".png, .jpg, .jpeg" name="picture" required>
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="avatar-preview gi-preview">
                                                                    <div class="imagePreview gi-div-preview">
                                                                        <img  class="gi-image-preview" src="assets/images/product/preview.jpg" alt="edit " >
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="avatar-upload">
                                                                <div class="avatar-edit">
                                                                    <input type='file' id="product_main1" class="gi-image-upload" accept=".png, .jpg, .jpeg" name="picture" required>
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="avatar-preview gi-preview">
                                                                    <div class="imagePreview gi-div-preview">
                                                                        <img class="gi-image-preview" src="assets/images/product/preview.jpg" alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="thumb-upload-set colo-md-12">

                                                            <div class="thumb-upload">
                                                                <div class="thumb-edit">
                                                                    <input type='file' id="thumbUpload01"
                                                                           class="gi-image-upload" 
                                                                           accept=".png, .jpg, .jpeg" name="picture">
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="thumb-preview gi-preview">
                                                                    <div class="image-thumb-preview">
                                                                        <img class="image-thumb-preview gi-image-preview"
                                                                             src="assets/images/product/preview.jpg"
                                                                             alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="thumb-upload">
                                                                <div class="thumb-edit">
                                                                    <input type='file' id="thumbUpload01"
                                                                           class="gi-image-upload"
                                                                           accept=".png, .jpg, .jpeg" name="picture">
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="thumb-preview gi-preview">
                                                                    <div class="image-thumb-preview">
                                                                        <img class="image-thumb-preview gi-image-preview"
                                                                             src="assets/images/product/preview.jpg"
                                                                             alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="thumb-upload">
                                                                <div class="thumb-edit">
                                                                    <input type='file' id="thumbUpload01"
                                                                           class="gi-image-upload"
                                                                           accept=".png, .jpg, .jpeg" name="picture">
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="thumb-preview gi-preview">
                                                                    <div class="image-thumb-preview">
                                                                        <img class="image-thumb-preview gi-image-preview"
                                                                             src="assets/images/product/preview.jpg"
                                                                             alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="thumb-upload">
                                                                <div class="thumb-edit">
                                                                    <input type='file' id="thumbUpload01"
                                                                           class="gi-image-upload"
                                                                           accept=".png, .jpg, .jpeg" name="picture">
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="thumb-preview gi-preview">
                                                                    <div class="image-thumb-preview">
                                                                        <img class="image-thumb-preview gi-image-preview"
                                                                             src="assets/images/product/preview.jpg"
                                                                             alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="thumb-upload">
                                                                <div class="thumb-edit">
                                                                    <input type='file' id="thumbUpload01"
                                                                           class="gi-image-upload"
                                                                           accept=".png, .jpg, .jpeg" name="picture">
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="thumb-preview gi-preview">
                                                                    <div class="image-thumb-preview">
                                                                        <img class="image-thumb-preview gi-image-preview"
                                                                             src="assets/images/product/preview.jpg"
                                                                             alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="thumb-upload">
                                                                <div class="thumb-edit">
                                                                    <input type='file' id="thumbUpload01"
                                                                           class="gi-image-upload"
                                                                           accept=".png, .jpg, .jpeg" name="picture">
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="thumb-preview gi-preview">
                                                                    <div class="image-thumb-preview">
                                                                        <img class="image-thumb-preview gi-image-preview"
                                                                             src="assets/images/product/preview.jpg"
                                                                             alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-8">
                                                <div class="gi-vendor-upload-detail">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label for="inputEmail4" class="col-12 col-form-label">Id</label>
                                                            <input type="text" class="form-control slug-title" id="inputEmail4" value="${requestScope.id}" name="id" readonly>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label for="inputEmail4" class="col-12 col-form-label">Product name</label>
                                                            <input type="text" class="form-control slug-title" id="inputEmail4" name="name" required>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 ">
                                                            <label class="col-12 col-form-label">Select Gender</label>
                                                            <select class="form-control form-select" name="opg">


                                                                <option value="1">Women</option>
                                                                <option value="2">Men</option>
                                                                <option value="3">Both</option>




                                                            </select>
                                                        </div>

                                                        <div class="col-md-6 ">
                                                            <label class="col-12 col-form-label">Select Categories</label>
                                                            <select class="form-control form-select" name="opc">
                                                                <c:forEach var="c" items="${requestScope.listC1}">

                                                                    <option value="${c.id}">${c.name}</option>

                                                                </c:forEach>

                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-12">
                                                        <label for="slug" class="col-12 col-form-label">Description</label> 
                                                        <textarea name="description" id="slug" name="slug" class="form-control here set-slug ckeditor" rows="3"></textarea>

                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="col-12 col-form-label">Sub Description</label>

                                                        <textarea name="subDescription" class="form-control ckeditor" rows="2"></textarea>

                                                    </div>


                                                    <div class="col-md-6 pt-2">
                                                        <label class="col-12 col-form-label " >Price <span>( In USD
                                                                )</span></label>
                                                        <input type="number" step="0.01" class="form-control" id="price1" name="price" required>
                                                    </div>
                                                    <div class="col-md-6 pt-2">
                                                        <label class="col-12 col-form-label ">Quantity</label>
                                                        <input type="number" class="form-control" id="quantity1" name="quantity" requireds>
                                                    </div>
                                                    <div class="col-md-6  pt-2">
                                                        <label class="col-12 col-form-label">Sale <span></span></label>
                                                        <input type="number" step="0.01" class="form-control" id="price1" name="sale" required>
                                                    </div><br/>

                                                    <div class="col-md-12">
                                                        <button type="submit" class="btn gi-btn-primary">Submit</button>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="gi-vendor-upload-detail">
                                                <form class="row g-3">
                                                    <div class="col-md-6">
                                                        <label for="inputEmail4" class="form-label">Product name</label>
                                                        <input type="text" class="form-control slug-title" id="inputEmail4">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label class="form-label">Select Categories</label>
                                                        <select class="form-control form-select">
                                                            <optgroup label="Fashion">
                                                                <option value="t-shirt">T-shirt</option>
                                                                <option value="dress">Dress</option>
                                                            </optgroup>
                                                            <optgroup label="Furniture">
                                                                <option value="table">Table</option>
                                                                <option value="sofa">Sofa</option>
                                                            </optgroup>
                                                            <optgroup label="Electronic">
                                                                <option value="phone">I Phone</option>
                                                                <option value="laptop">Laptop</option>
                                                            </optgroup>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label for="slug" class="col-12 col-form-label">Slug</label> 
                                                        <div class="col-12">
                                                            <input id="slug" name="slug" class="form-control here set-slug" type="text">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="form-label">Sort Description</label>
                                                        <textarea class="form-control" rows="2"></textarea>
                                                    </div>
                                                    <div class="col-md-4 mb-25">
                                                        <label class="form-label color-label">Colors</label>
                                                        <input type="color" class="form-control form-control-color"
                                                               id="exampleColorInput1" value="#ff6191"
                                                               title="Choose your color">
                                                        <input type="color" class="form-control form-control-color"
                                                               id="exampleColorInput2" value="#33317d"
                                                               title="Choose your color">
                                                        <input type="color" class="form-control form-control-color"
                                                               id="exampleColorInput3" value="#56d4b7"
                                                               title="Choose your color">
                                                        <input type="color" class="form-control form-control-color"
                                                               id="exampleColorInput4" value="#009688"
                                                               title="Choose your color">
                                                    </div>
                                                    <div class="col-md-8 mb-25">
                                                        <label class="form-label">Size</label>
                                                        <div class="form-checkbox-box">
                                                            <div class="form-check form-check-inline">
                                                                <input type="checkbox" name="size1" value="size">
                                                                <label>S</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input type="checkbox" name="size1" value="size">
                                                                <label>M</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input type="checkbox" name="size1" value="size">
                                                                <label>L</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input type="checkbox" name="size1" value="size">
                                                                <label>XL</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input type="checkbox" name="size1" value="size">
                                                                <label>XXL</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label class="form-label">Price <span>( In USD
                                                                )</span></label>
                                                        <input type="number" class="form-control" id="price1">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label class="form-label">Quantity</label>
                                                        <input type="number" class="form-control" id="quantity1">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="form-label">Ful Detail</label>
                                                        <textarea class="form-control" rows="4"></textarea>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="form-label">Product Tags <span>( Type and
                                                                make comma to separate tags )</span></label>
                                                        <input type="text" class="form-control" id="group_tag"
                                                               name="group_tag" value="" placeholder=""
                                                               data-role="tagsinput">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <button type="submit" class="btn gi-btn-primary">Submit</button>
                                                    </div>
                                                </form>
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


<!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/add-product.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:41 GMT -->
</html>
