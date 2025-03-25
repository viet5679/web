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
        <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
        <style>
            .avatar-container {
                display: flex;
                gap: 20px; /* Khoáº£ng cÃ¡ch giá»¯a hai áº£nh */
                justify-content: center; /* Canh giá»¯a */
                align-items: center;
            }

            .avatar-upload {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .gi-image-preview {
                width: 250px; /* Äiá»u chá»‰nh kÃ­ch thÆ°á»›c áº£nh */
                height: 250px;
                object-fit: cover;
            }

            /* NÃºt dáº¥u cá»™ng */
            .add-thumb {
                width: 60px;
                height: 60px;
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 50%;
                background-color: #7bc043; /* Xanh lÃ¡ */
                color: white;
                font-size: 30px;
                cursor: pointer;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                transition: all 0.3s ease-in-out;
            }

            .add-thumb:hover {
                background-color: #6aa634;
            }

            /* Äáº·t dáº¥u cá»™ng á»Ÿ giá»¯a dÃ²ng cuá»‘i */
            .thumb-upload-container::after {
                content: "";
                flex: auto;
            }

            .thumb-upload-set {
                display: flex;
                flex-wrap: wrap;
                justify-content: center; /* CÄƒn giá»¯a thay vÃ¬ cháº¡y tá»« trÃ¡i */
                gap: 10px; /* Táº¡o khoáº£ng cÃ¡ch Ä‘á»u giá»¯a cÃ¡c áº£nh */
                max-width: 450px; /* Äiá»u chá»‰nh theo giao diá»‡n */
                margin: 0 auto; /* Giá»¯ vá»‹ trÃ­ giá»¯a trang */
            }

            .thumb-remove {
                position: absolute;
                top: 5px;  /* ÄÆ°a lÃªn cao hÆ¡n */
                left: 5px; /* Äáº£m báº£o náº±m sÃ¡t gÃ³c trÃ¡i */
                width: 30px;
                height: 30px;
                background-color: white;
                border-radius: 50%;
                box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
                display: flex;
                justify-content: center;
                align-items: center;
                cursor: pointer;
                z-index: 10;
            }

            .thumb-remove i {
                font-size: 18px;
                color: red; /* Chuyá»ƒn mÃ u Ä‘á» */
            }
            .avatar-upload {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: space-between; /* Äáº£m báº£o cÃ¡c pháº§n tá»­ cÃ¡ch Ä‘á»u nhau */
                height: 100%; /* Äáº£m báº£o táº¥t cáº£ cÃ¡c container cÃ³ cÃ¹ng chiá»u cao */
            }

            .add-thumb {
                margin-top: auto; /* Äáº©y dáº¥u "+" xuá»‘ng dÆ°á»›i cÃ¹ng */
            }

            .thumb-upload-set {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
                gap: 10px;
                justify-content: center;
                align-items: start; /* CÄƒn cÃ¡c áº£nh tá»« trÃªn xuá»‘ng Ä‘á»ƒ khÃ´ng bá»‹ lá»‡ch */
            }

            .gi-image-preview {
                width: 250px;
                height: 250px;
                object-fit: cover;
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
                                            <p class="message">Budget threshold was exceeded for project "LouisVuitton" B612 elements.</p>
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
                                            <img src="assets/images/user/9.jpg" alt="user">
                                            <span class="label online"></span>
                                        </div>
                                        <div class="detail">
                                            <a href="chatapp.jsp" class="name">Boris Whisli</a>
                                            <p class="time">5:30AM, Today</p>
                                            <p class="message">Hello,  I am sending some file. Please use this in landing page. And make sure this all files are comppress.</p>
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
                                            <p class="message">Please take a look on landing page. There is some bus to open popup model. and save form data.</p>
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
                                            <img src="assets/images/user/6.jpg" alt="user">
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
                            <h5>Edit Product</h5>
                            <ul>
                                <li><a href="index.jsp">LouisVuitton</a></li>
                                <li>Edit Product</li>
                            </ul>
                        </div>
                    </div>
                    <c:set var="p" value="${requestScope.pro}"/>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="gi-card card-default">
                                <div class="gi-card-content">
                                    <form action="edit" method="post" class="row g-3" enctype="multipart/form-data">
                                        <div class="row gi-product-uploads">
                                            <div class="col-lg-4 mb-991">
                                                <div class="gi-vendor-img-upload">

                                                    <div class="gi-vendor-main-img">
                                                        <div class="avatar-container">
                                                            <div class="avatar-upload">
                                                                <div class="avatar-edit">                                                                     
                                                                    <input type='file' id="product_main_1" class="image gi-image-upload" 
                                                                           data-index="1" accept=".png, .jpg, .jpeg" name="mainImg" 
                                                                           >
                                                                    <label><i class="ri-pencil-line"></i></label>                                                                 
                                                                </div>                                                                        
                                                                <div class="avatar-preview gi-preview">
                                                                    <div class="imagePreview gi-div-preview">
                                                                        <img class="image gi-image-preview" data-index="1" src="${p.avatar == null?'assets/images/product/preview.jpg': p.avatar}" alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="avatar-upload">
                                                                <div class="avatar-edit">                                                                     
                                                                    <input type='file' id="product_main_2" class="image gi-image-upload" 
                                                                           data-index="2" accept=".png, .jpg, .jpeg" name="hoverImg" 
                                                                           >
                                                                    <label><i class="ri-pencil-line"></i></label>                                                                 
                                                                </div>     
                                                                <div class="avatar-preview gi-preview">
                                                                    <div class="imagePreview gi-div-preview">
                                                                        <img class="image big-image-upload gi-image-preview" data-index="2" src="${p.hoverAvatar == null?'assets/images/product/preview.jpg':p.hoverAvatar}" alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="thumb-upload-set colo-md-12">
                                                            <c:forEach var="i" items="${requestScope.listI}" varStatus="status">
                                                                <div class="thumb-upload">

                                                                    <div class="thumb-remove" onclick="removeThumbnail(this)" data-id="${i.imagesId}"><i class="ri-close-line"></i></div>

                                                                    <div class="thumb-edit">                                                                         
                                                                        <input type="file" class="image gi-image-upload thumb-image-upload"
                                                                               data-index="${status.index + 1}" accept=".png, .jpg, .jpeg" name="picture"
                                                                               onchange="updateThumbnail(this)" data-id="${i.imagesId}">

                                                                        <input type="hidden" name="imageIds" class="updated-image-id" value="">
                                                                        <label><i class="ri-pencil-line"></i></label>                                                                     
                                                                    </div>                                                                     
                                                                    <div class="thumb-preview gi-preview">                                                                         
                                                                        <div class="image-thumb-preview">                                                                             
                                                                            <img class="image image-thumb-preview gi-image-preview"
                                                                                 data-index="${not empty status.index ? status.index + 1 : 'default'}"
                                                                                 src="${i.path}" alt="edit" data-id="${i.imagesId}">                                                                         
                                                                        </div>                                                                     
                                                                    </div>                 
                                                                </div>
                                                            </c:forEach>
                                                            <div class="thumb-upload-container thumb-upload">

                                                                <!-- ÄÃ¢y lÃ  nÆ¡i cÃ¡c thumbnail sáº½ Ä‘Æ°á»£c thÃªm vÃ o -->
                                                            </div><br/>
                                                            <div class="add-thumb" onclick="addThumbnail()">+</div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-8">
                                                <div class="gi-vendor-upload-detail">
                                                    <div class="row">

                                                        <div class="col-md-6">
                                                            <label for="inputEmail4" class="col-12 col-form-label">Product name</label>
                                                            <input type="text" class="form-control slug-title" id="inputEmail4" value="${p.name}" name="name">
                                                        </div>
                                                        <div class="col-md-6 ">
                                                            <label class="col-12 col-form-label">Select Categories</label>
                                                            <select class="form-control form-select" name="op">
                                                                <c:forEach var="c" items="${requestScope.listC}">

                                                                    <option value="${c.id}" ${c.id == p.categoryId.id ? 'selected' : ''}>${c.name}</option>

                                                                </c:forEach>

                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-12">
                                                        <label for="slug" class="col-12 col-form-label">Description</label> 
                                                        <textarea name="description" id="slug" name="slug" class="form-control here set-slug ckeditor" rows="3">${p.description}</textarea>

                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="col-12 col-form-label">Sub Description</label>

                                                        <textarea name="subDescription" class="form-control ckeditor" rows="2">${requestScope.sub}</textarea>

                                                    </div>


                                                    <div class="col-md-6 pt-2">
                                                        <label class="col-12 col-form-label ">Price <span>( In USD
                                                                )</span></label>
                                                        <input type="number" class="form-control" id="price1" value="${p.price}" name="price">
                                                    </div>
                                                    <div class="col-md-6 pt-2">
                                                        <label class="col-12 col-form-label ">Quantity</label>
                                                        <input type="number" class="form-control" id="quantity1" value="${p.stockQuantity}" name="quantity">
                                                    </div>
                                                    <div class="col-md-6  pt-2">
                                                        <label class="col-12 col-form-label">Sale <span></span></label>
                                                        <input type="number" class="form-control" id="price1" value="${p.sale}" name="sale">
                                                    </div><br/>
                                                    <input type="hidden" name="id" value="${p.id}"/>
                                                    <input type="hidden" id="deletedImages" name="deletedImages">


                                                    <div class="col-md-12">
                                                        <button type="submit" class="btn gi-btn-primary">Submit</button>
                                                    </div>

                                                    <script>
                                                        CKEDITOR.replaceAll('ckeditor');
                                                    </script>
                                                </div>
                                            </div>
                                        </div>
                                    </form>             
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

        <script>
                                                        CKEDITOR.replace('slug', {
                                                            removePlugins: 'toolbar,elementspath',
                                                            resize_enabled: false,
                                                            enterMode: CKEDITOR.ENTER_BR
                                                        });
        </script>

        <script>
            let updatedImages = []; // Máº£ng lÆ°u áº£nh cáº§n update
            let deletedImages = [];
            function updateThumbnail(input) {
                if (input.files && input.files[0]) {
                    let imageId = input.getAttribute("data-id"); // Láº¥y ID tá»« data-id
                    if (imageId) {
                        // TÃ¬m hidden input tÆ°Æ¡ng á»©ng Ä‘á»ƒ lÆ°u ID
                        let hiddenInput = input.closest('.thumb-upload').querySelector('.updated-image-id');
                        hiddenInput.value = imageId; // LÆ°u ID cá»§a áº£nh cáº§n cáº­p nháº­t
                    }
                }
            }

            function removeThumbnail(element) {
                Swal.fire({
                    title: "Are you sure you want to delete this image?",
                    text: "This action cannot be undone!",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#d33",
                    cancelButtonColor: "#3085d6",
                    confirmButtonText: "Delete",
                    cancelButtonText: "Cancel"
                }).then((result) => {
                    if (result.isConfirmed) {
                        let thumbnail = element.closest('.thumb-upload'); // Find the parent element
                        let imgElement = thumbnail.querySelector('img'); // Get the <img> element
                        let imageId = imgElement.getAttribute('data-id'); // Get image ID

                        if (imageId) {
                            deletedImages.push(imageId);
                            document.getElementById("deletedImages").value = JSON.stringify(deletedImages);
                        }

                        thumbnail.remove(); // Remove the image from UI

                        Swal.fire("Deleted!", "The image has been successfully deleted.", "success");
                    }
                });
            }
            document.addEventListener("DOMContentLoaded", function () {
                const container = document.querySelector(".thumb-upload-container");
                if (!container) {
                    console.error("âš ï¸ Lá»–I: KhÃ´ng tÃ¬m tháº¥y .thumb-upload-container! Kiá»ƒm tra láº¡i HTML.");
                    return;
                }

                console.log("âœ… ÄÃ£ tÃ¬m tháº¥y .thumb-upload-container!");
                function addThumbnail() {
                    console.log("ThÃªm áº£nh má»›i...");
                    // Táº¡o má»™t tháº» div má»›i cho áº£nh thumbnail
                    const newThumb = document.createElement("div");
                    newThumb.classList.add("thumb-upload");
                    newThumb.innerHTML = `
                                                <div class="thumb-remove" onclick="removeThumbnail(this)"><i class="ri-close-line"></i></div> 
                <div class="thumb-edit">
                    <input type="file" class="gi-image-upload" accept=".png, .jpg, .jpeg" name="newimg">
                    <label><i class="ri-pencil-line"></i></label>
                </div>
                <div class="thumb-preview gi-preview">
                    <div class="image-thumb-preview">
                        <img class="gi-image-preview" src="assets/images/product/preview.jpg" alt="edit">
                    </div>
                </div>
            `;
                    // ThÃªm thumbnail má»›i vÃ o container
                    container.appendChild(newThumb);
                }

                // Láº¯ng nghe sá»± kiá»‡n click cho nÃºt "+"
                const addButton = document.querySelector(".add-thumb");
                if (addButton) {
                    addButton.addEventListener("click", function (event) {
                        event.preventDefault(); // NgÄƒn cháº·n hÃ nh vi máº·c Ä‘á»‹nh
                        addThumbnail();
                    });
                } else {
                    console.error("âš ï¸ Lá»–I: KhÃ´ng tÃ¬m tháº¥y nÃºt thÃªm áº£nh (+)!");
                }
            });
        </script>


        <script>
            // VÃ´ hiá»‡u hÃ³a xÃ³a vÃ  chá»‰nh sá»­a hai áº£nh Ä‘áº§u tiÃªn
            document.querySelectorAll(".thumb-upload").forEach((item, index) => {
                if (index < 2) {
                    let removeBtn = item.querySelector(".thumb-remove");
                    let editBtn = item.querySelector(".thumb-edit");
                    if (removeBtn)
                        removeBtn.style.display = "none";
                    if (editBtn)
                        editBtn.style.display = "none";
                }
            });
        </script>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                document.querySelectorAll(".image").forEach(input => {
                    input.addEventListener("change", function (event) {
                        let groupId = this.dataset.index;
                        console.log("NhÃ³m áº£nh:", groupId);

                        let file = event.target.files[0];
                        if (!file) {
                            console.log("KhÃ´ng cÃ³ file Ä‘Æ°á»£c chá»n");
                            return;
                        }

                        let reader = new FileReader();
                        reader.onload = function (e) {
                            let newSrc = e.target.result;
                            console.log("ÄÆ°á»ng dáº«n áº£nh má»›i:", newSrc);

                            let imageElements = Array.from(document.getElementsByClassName("gi-image-preview"))
                                    .filter(img => img.getAttribute("data-index") === groupId);

                            console.log("CÃ¡c áº£nh tÃ¬m tháº¥y:", imageElements);

                            imageElements.forEach(img => {
                                img.src = "";
                                setTimeout(() => {
                                    img.setAttribute("src", newSrc);
                                    img.style.display = "block";
                                    img.style.opacity = "1";
                                }, 10);
                            });
                        };
                        reader.readAsDataURL(file);
                    });
                });
            });
        </script>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                const form = document.querySelector("form");

                form.addEventListener("submit", function (event) {
                    event.preventDefault();

                    let formData = new FormData(form);

                    fetch("edit", {
                        method: "POST",
                        body: formData
                    })
                            .then(response => response.text())
                            .then(data => {
                                Swal.fire({
                                    title: "Edit successful",
                                    text: "The product has been updated successfully!",
                                    icon: "success",
                                    confirmButtonColor: "#3085d6",
                                    confirmButtonText: "OK"
                                }).then(() => {
                                    window.location.href = "pmanager";
                                });
                            })
                            .catch(error => {
                                Swal.fire({
                                    title: "Error!",
                                    text: "Something went wrong. Please try again!",
                                    icon: "error",
                                    confirmButtonColor: "#d33",
                                    confirmButtonText: "OK"
                                });
                            });
                });
            });
        </script>
    </body>
    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/add-product.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:41 GMT -->
</html>
