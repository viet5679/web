<%@ page contentType="text/html; charset=UTF-8" %>`n<!DOCTYPE html>
<html lang="en" dir="ltr">


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/todo.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:40 GMT -->
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
                    <!-- Page title & breadcrumb -->
                    <div class="gi-page-title gi-page-title-2">
                        <div class="gi-breadcrumb">
                            <h5>Todo</h5>
                            <ul>
                                <li><a href="index.jsp">Grabit</a></li>
                                <li>Todo</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-4 col-md-12">
                            <div class="gi-card">
                                <div class="gi-card-header">
                                    <h4 class="gi-card-title">Project List</h4>
                                    <div class="header-tools">
                                        <a href="#" class="link" title="Add Project"><i class="ri-add-line"></i></a>
                                    </div>
                                </div>
                                <div class="gi-card-content">
                                    <div class="todo-list project-list project-max-height" data-simplebar>
                                        <form>
                                            <div class="accordion" id="accordionExample">
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="headingOne">
                                                        <button class="accordion-button" type="button"
                                                                data-bs-toggle="collapse" data-bs-target="#collapseOne"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            Grabit admin site
                                                        </button>
                                                    </h2>
                                                    <div id="collapseOne" class="accordion-collapse collapse show"
                                                         aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="form-group">
                                                                <span>Website in this browser for the
                                                                    next time I
                                                                    comment</span>
                                                                <div class="dropdown todo-settings drop-settings">
                                                                    <button class="btn btn-secondary dropdown-toggle"
                                                                            type="button" data-bs-toggle="dropdown"
                                                                            aria-expanded="false">
                                                                        <i class="mdi mdi-dots-vertical"></i>
                                                                    </button>
                                                                    <ul class="dropdown-menu">
                                                                        <li><a class="dropdown-item" href="#">Rename</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Add note</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Remove</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">edit note</a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <ul class="gi-task-assig">
                                                                <li><img src="assets/img/user/1.jpg"
                                                                         alt="employee"><span>John Doe</span></li>
                                                                <li><img src="assets/img/user/2.jpg"
                                                                         alt="employee"><span>Emma Grater</span></li>
                                                                <li><img src="assets/img/user/3.jpg"
                                                                         alt="employee"><span>Olive Yew</span></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="headingTwo">
                                                        <button class="accordion-button collapsed" type="button"
                                                                data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                                                aria-expanded="false" aria-controls="collapseTwo">
                                                            Ekka eCommerce
                                                        </button>
                                                    </h2>
                                                    <div id="collapseTwo" class="accordion-collapse collapse"
                                                         aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="form-group">
                                                                <span>Lorem Ipsum is simply dummy
                                                                    text</span>
                                                                <div class="dropdown todo-settings drop-settings">
                                                                    <button class="btn btn-secondary dropdown-toggle"
                                                                            type="button" data-bs-toggle="dropdown"
                                                                            aria-expanded="false">
                                                                        <i class="mdi mdi-dots-vertical"></i>
                                                                    </button>
                                                                    <ul class="dropdown-menu">
                                                                        <li><a class="dropdown-item" href="#">Rename</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Add note</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Remove</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">edit note</a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <ul class="gi-task-assig">
                                                                <li><img src="assets/img/user/4.jpg"
                                                                         alt="employee"><span>John Doe</span></li>
                                                                <li><img src="assets/img/user/5.jpg"
                                                                         alt="employee"><span>Emma Grater</span></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="headingThree">
                                                        <button class="accordion-button collapsed" type="button"
                                                                data-bs-toggle="collapse" data-bs-target="#collapseThree"
                                                                aria-expanded="false" aria-controls="collapseThree">
                                                            Masterly Personal Portfolio
                                                        </button>
                                                    </h2>
                                                    <div id="collapseThree" class="accordion-collapse collapse"
                                                         aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="form-group">
                                                                <span>Website in this browser for the
                                                                    next time I
                                                                    comment</span>
                                                                <div class="dropdown todo-settings drop-settings">
                                                                    <button class="btn btn-secondary dropdown-toggle"
                                                                            type="button" data-bs-toggle="dropdown"
                                                                            aria-expanded="false">
                                                                        <i class="mdi mdi-dots-vertical"></i>
                                                                    </button>
                                                                    <ul class="dropdown-menu">
                                                                        <li><a class="dropdown-item" href="#">Rename</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Add note</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Remove</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">edit note</a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <ul class="gi-task-assig">
                                                                <li><img src="assets/img/user/6.jpg"
                                                                         alt="employee"><span>John Doe</span></li>
                                                                <li><img src="assets/img/user/2.jpg"
                                                                         alt="employee"><span>Emma Grater</span></li>
                                                                <li><img src="assets/img/user/3.jpg"
                                                                         alt="employee"><span>Olive Yew</span></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="headingFour">
                                                        <button class="accordion-button collapsed" type="button"
                                                                data-bs-toggle="collapse" data-bs-target="#collapseFour"
                                                                aria-expanded="false" aria-controls="collapseFour">
                                                            Google manager
                                                        </button>
                                                    </h2>
                                                    <div id="collapseFour" class="accordion-collapse collapse"
                                                         aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="form-group">
                                                                <span>Website in this browser for the next time I
                                                                    comment</span>
                                                                <div class="dropdown todo-settings drop-settings">
                                                                    <button class="btn btn-secondary dropdown-toggle"
                                                                            type="button" data-bs-toggle="dropdown"
                                                                            aria-expanded="false">
                                                                        <i class="mdi mdi-dots-vertical"></i>
                                                                    </button>
                                                                    <ul class="dropdown-menu">
                                                                        <li><a class="dropdown-item" href="#">Rename</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Add note</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Remove</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">edit note</a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <ul class="gi-task-assig">
                                                                <li><img src="assets/img/user/2.jpg"
                                                                         alt="employee"><span>Emma Grater</span></li>
                                                                <li><img src="assets/img/user/3.jpg"
                                                                         alt="employee"><span>Olive Yew</span></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="headingFive">
                                                        <button class="accordion-button collapsed" type="button"
                                                                data-bs-toggle="collapse" data-bs-target="#collapseFive"
                                                                aria-expanded="false" aria-controls="collapseFive">
                                                            Facebook ads manager
                                                        </button>
                                                    </h2>
                                                    <div id="collapseFive" class="accordion-collapse collapse"
                                                         aria-labelledby="headingFive" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="form-group">
                                                                <span>Website in this browser for the next time I
                                                                    comment</span>
                                                                <div class="dropdown todo-settings drop-settings">
                                                                    <button class="btn btn-secondary dropdown-toggle"
                                                                            type="button" data-bs-toggle="dropdown"
                                                                            aria-expanded="false">
                                                                        <i class="mdi mdi-dots-vertical"></i>
                                                                    </button>
                                                                    <ul class="dropdown-menu">
                                                                        <li><a class="dropdown-item" href="#">Rename</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Add note</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Remove</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">edit note</a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <ul class="gi-task-assig">
                                                                <li><img src="assets/img/user/1.jpg"
                                                                         alt="employee"><span>John Doe</span></li>
                                                                <li><img src="assets/img/user/3.jpg"
                                                                         alt="employee"><span>Olive Yew</span></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="headingSix">
                                                        <button class="accordion-button collapsed" type="button"
                                                                data-bs-toggle="collapse" data-bs-target="#collapseSix"
                                                                aria-expanded="false" aria-controls="collapseSix">
                                                            Wrapbootstrap studio
                                                        </button>
                                                    </h2>
                                                    <div id="collapseSix" class="accordion-collapse collapse"
                                                         aria-labelledby="headingSix" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="form-group">
                                                                <span>Website in this browser for the next time I
                                                                    comment</span>
                                                                <div class="dropdown todo-settings drop-settings">
                                                                    <button class="btn btn-secondary dropdown-toggle"
                                                                            type="button" data-bs-toggle="dropdown"
                                                                            aria-expanded="false">
                                                                        <i class="mdi mdi-dots-vertical"></i>
                                                                    </button>
                                                                    <ul class="dropdown-menu">
                                                                        <li><a class="dropdown-item" href="#">Rename</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Add note</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Remove</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">edit note</a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <ul class="gi-task-assig">
                                                                <li><img src="assets/img/user/3.jpg"
                                                                         alt="employee"><span>Olive Yew</span></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="headingSeven">
                                                        <button class="accordion-button collapsed" type="button"
                                                                data-bs-toggle="collapse" data-bs-target="#collapseSeven"
                                                                aria-expanded="false" aria-controls="collapseSeven">
                                                            Car Washing Service
                                                        </button>
                                                    </h2>
                                                    <div id="collapseSeven" class="accordion-collapse collapse"
                                                         aria-labelledby="headingSeven" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="form-group">
                                                                <span>Website in this browser for the next time I
                                                                    comment</span>
                                                                <div class="dropdown todo-settings drop-settings">
                                                                    <button class="btn btn-secondary dropdown-toggle"
                                                                            type="button" data-bs-toggle="dropdown"
                                                                            aria-expanded="false">
                                                                        <i class="mdi mdi-dots-vertical"></i>
                                                                    </button>
                                                                    <ul class="dropdown-menu">
                                                                        <li><a class="dropdown-item" href="#">Rename</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Add note</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Remove</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">edit note</a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <ul class="gi-task-assig">
                                                                <li><img src="assets/img/user/1.jpg"
                                                                         alt="employee"><span>John Doe</span></li>
                                                                <li><img src="assets/img/user/3.jpg"
                                                                         alt="employee"><span>Olive Yew</span></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="headingEight">
                                                        <button class="accordion-button collapsed" type="button"
                                                                data-bs-toggle="collapse" data-bs-target="#collapseEight"
                                                                aria-expanded="false" aria-controls="collapseEight">
                                                            Martins App Dev
                                                        </button>
                                                    </h2>
                                                    <div id="collapseEight" class="accordion-collapse collapse"
                                                         aria-labelledby="headingEight" data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <div class="form-group">
                                                                <span>Website in this browser for the next time I
                                                                    comment</span>
                                                                <div class="dropdown todo-settings drop-settings">
                                                                    <button class="btn btn-secondary dropdown-toggle"
                                                                            type="button" data-bs-toggle="dropdown"
                                                                            aria-expanded="false">
                                                                        <i class="mdi mdi-dots-vertical"></i>
                                                                    </button>
                                                                    <ul class="dropdown-menu">
                                                                        <li><a class="dropdown-item" href="#">Rename</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Add note</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Remove</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">edit note</a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <ul class="gi-task-assig">
                                                                <li><img src="assets/img/user/6.jpg"
                                                                         alt="employee"><span>Merry Jems</span></li>
                                                                <li><img src="assets/img/user/3.jpg"
                                                                         alt="employee"><span>Olive Yew</span></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-8 col-md-12">
                            <div class="gi-card" id="assigntbl">
                                <div class="gi-card-header">
                                    <h4 class="gi-card-title">Grabit admin site</h4>
                                    <div class="header-tools">
                                        <a href="javascript:void(0)" class="m-r-10 gi-full-card" title="Full Screen"><i
                                                class="ri-fullscreen-line"></i></a>
                                        <a href="javascript:void(0)" class="button-add" title="Add Task"><i
                                                class="ri-add-line"></i>Task</a>
                                    </div>
                                </div>
                                <div class="gi-card-content card-default">
                                    <div class="assign-table">
                                        <div class="table-responsive">
                                            <table id="todo-data-table" class="table">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Team</th>
                                                        <th>Task</th>
                                                        <th>Date</th>
                                                        <th>Status</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="token">2650</td>
                                                        <td>
                                                            <span class="assign-person">
                                                                <a href="javascript:void(0)" title="John Doe"><img
                                                                        class="cat-thumb" src="assets/img/user/1.jpg"
                                                                        alt="clients Image"></a>
                                                                <a href="javascript:void(0)" title="Emma Grater"><img
                                                                        class="cat-thumb" src="assets/img/user/2.jpg"
                                                                        alt="clients Image"></a>
                                                                <a href="javascript:void(0)" title="Olive Yew"><img
                                                                        class="cat-thumb" src="assets/img/user/3.jpg"
                                                                        alt="clients Image"></a>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <span class="name">Chat app bugs fixing</span>
                                                        </td>
                                                        <td>15/01/2023</td>
                                                        <td class="active">ACTIVE</td>
                                                        <td>
                                                            <div class="d-flex justify-content-center">
                                                                <button type="button"
                                                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                                        aria-expanded="false" data-display="static">
                                                                    <span class="sr-only"><i
                                                                            class="ri-settings-3-line"></i></span>
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Edit</a>
                                                                    <a class="dropdown-item" href="#">Delete</a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="token">2650</td>
                                                        <td>
                                                            <span class="assign-person">
                                                                <a href="javascript:void(0)" title="Emma Grater"><img
                                                                        class="cat-thumb" src="assets/img/user/2.jpg"
                                                                        alt="clients Image"></a>
                                                                <a href="javascript:void(0)" title="Olive Yew"><img
                                                                        class="cat-thumb" src="assets/img/user/3.jpg"
                                                                        alt="clients Image"></a>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <span class="name">Dashboard changes</span>
                                                        </td>
                                                        <td>15/01/2023</td>
                                                        <td class="pending">Pending</td>
                                                        <td>
                                                            <div class="d-flex justify-content-center">
                                                                <button type="button"
                                                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                                        aria-expanded="false" data-display="static">
                                                                    <span class="sr-only"><i
                                                                            class="ri-settings-3-line"></i></span>
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Edit</a>
                                                                    <a class="dropdown-item" href="#">Delete</a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="token">2365</td>
                                                        <td>
                                                            <span class="assign-person">
                                                                <a href="javascript:void(0)" title="John Doe"><img
                                                                        class="cat-thumb" src="assets/img/user/1.jpg"
                                                                        alt="clients Image"></a>
                                                                <a href="javascript:void(0)" title="Olive Yew"><img
                                                                        class="cat-thumb" src="assets/img/user/3.jpg"
                                                                        alt="clients Image"></a>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <span class="name">Set todo list for notify</span>
                                                        </td>
                                                        <td>02/08/2023</td>
                                                        <td class="close">Close</td>
                                                        <td>
                                                            <div class="d-flex justify-content-center">
                                                                <button type="button"
                                                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                                        aria-expanded="false" data-display="static">
                                                                    <span class="sr-only"><i
                                                                            class="ri-settings-3-line"></i></span>
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Edit</a>
                                                                    <a class="dropdown-item" href="#">Delete</a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="token">2205</td>
                                                        <td>
                                                            <span class="assign-person">
                                                                <a href="javascript:void(0)" title="John Doe"><img
                                                                        class="cat-thumb" src="assets/img/user/1.jpg"
                                                                        alt="clients Image"></a>
                                                                <a href="javascript:void(0)" title="Emma Grater"><img
                                                                        class="cat-thumb" src="assets/img/user/2.jpg"
                                                                        alt="clients Image"></a>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <span class="name">Create maintenance page</span>
                                                        </td>
                                                        <td>23/02/2023</td>
                                                        <td class="success">Success</td>
                                                        <td>
                                                            <div class="d-flex justify-content-center">
                                                                <button type="button"
                                                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                                        aria-expanded="false" data-display="static">
                                                                    <span class="sr-only"><i
                                                                            class="ri-settings-3-line"></i></span>
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Edit</a>
                                                                    <a class="dropdown-item" href="#">Delete</a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="token">2187</td>
                                                        <td>
                                                            <span class="assign-person">
                                                                <a href="javascript:void(0)" title="Olive Yew"><img
                                                                        class="cat-thumb" src="assets/img/user/3.jpg"
                                                                        alt="clients Image"></a>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <span class="name">Set event date</span>
                                                        </td>
                                                        <td>17/01/2023</td>
                                                        <td class="active">ACTIVE</td>
                                                        <td>
                                                            <div class="d-flex justify-content-center">
                                                                <button type="button"
                                                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                                        aria-expanded="false" data-display="static">
                                                                    <span class="sr-only"><i
                                                                            class="ri-settings-3-line"></i></span>
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Edit</a>
                                                                    <a class="dropdown-item" href="#">Delete</a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="token">2050</td>
                                                        <td>
                                                            <span class="assign-person">
                                                                <a href="javascript:void(0)" title="John Doe"><img
                                                                        class="cat-thumb" src="assets/img/user/1.jpg"
                                                                        alt="clients Image"></a>
                                                                <a href="javascript:void(0)" title="Emma Grater"><img
                                                                        class="cat-thumb" src="assets/img/user/2.jpg"
                                                                        alt="clients Image"></a>
                                                                <a href="javascript:void(0)" title="Olive Yew"><img
                                                                        class="cat-thumb" src="assets/img/user/3.jpg"
                                                                        alt="clients Image"></a>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <span class="name">Update profile info add button</span>
                                                        </td>
                                                        <td>09/09/2023</td>
                                                        <td class="close">Close</td>
                                                        <td>
                                                            <div class="d-flex justify-content-center">
                                                                <button type="button"
                                                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                                        aria-expanded="false" data-display="static">
                                                                    <span class="sr-only"><i
                                                                            class="ri-settings-3-line"></i></span>
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Edit</a>
                                                                    <a class="dropdown-item" href="#">Delete</a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="token">1995</td>
                                                        <td>
                                                            <span class="assign-person">
                                                                <a href="javascript:void(0)" title="Emma Grater"><img
                                                                        class="cat-thumb" src="assets/img/user/2.jpg"
                                                                        alt="clients Image"></a>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <span class="name">Create employee profile.</span>
                                                        </td>
                                                        <td>11/08/2023</td>
                                                        <td class="success">success</td>
                                                        <td>
                                                            <div class="d-flex justify-content-center">
                                                                <button type="button"
                                                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                                        aria-expanded="false" data-display="static">
                                                                    <span class="sr-only"><i
                                                                            class="ri-settings-3-line"></i></span>
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Edit</a>
                                                                    <a class="dropdown-item" href="#">Delete</a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="token">1985</td>
                                                        <td>
                                                            <span class="assign-person">
                                                                <a href="javascript:void(0)" title="John Doe"><img
                                                                        class="cat-thumb" src="assets/img/user/1.jpg"
                                                                        alt="clients Image"></a>
                                                                <a href="javascript:void(0)" title="Olive Yew"><img
                                                                        class="cat-thumb" src="assets/img/user/3.jpg"
                                                                        alt="clients Image"></a>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <span class="name">Project bug fix.</span>
                                                        </td>
                                                        <td>19/12/2023</td>
                                                        <td class="success">success</td>
                                                        <td>
                                                            <div class="d-flex justify-content-center">
                                                                <button type="button"
                                                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                                        aria-expanded="false" data-display="static">
                                                                    <span class="sr-only"><i
                                                                            class="ri-settings-3-line"></i></span>
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Edit</a>
                                                                    <a class="dropdown-item" href="#">Delete</a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="token">1945</td>
                                                        <td>
                                                            <span class="assign-person">
                                                                <a href="javascript:void(0)" title="John Doe"><img
                                                                        class="cat-thumb" src="assets/img/user/1.jpg"
                                                                        alt="clients Image"></a>
                                                                <a href="javascript:void(0)" title="Emma Grater"><img
                                                                        class="cat-thumb" src="assets/img/user/2.jpg"
                                                                        alt="clients Image"></a>
                                                                <a href="javascript:void(0)" title="Olive Yew"><img
                                                                        class="cat-thumb" src="assets/img/user/3.jpg"
                                                                        alt="clients Image"></a>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <span class="name">Update database.</span>
                                                        </td>
                                                        <td>06/05/2023</td>
                                                        <td class="pending">pending</td>
                                                        <td>
                                                            <div class="d-flex justify-content-center">
                                                                <button type="button"
                                                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                                        aria-expanded="false" data-display="static">
                                                                    <span class="sr-only"><i
                                                                            class="ri-settings-3-line"></i></span>
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Edit</a>
                                                                    <a class="dropdown-item" href="#">Delete</a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="token">1865</td>
                                                        <td>
                                                            <span class="assign-person">
                                                                <a href="javascript:void(0)" title="John Doe"><img
                                                                        class="cat-thumb" src="assets/img/user/1.jpg"
                                                                        alt="clients Image"></a>
                                                                <a href="javascript:void(0)" title="Olive Yew"><img
                                                                        class="cat-thumb" src="assets/img/user/3.jpg"
                                                                        alt="clients Image"></a>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <span class="name">Analysis chart update.</span>
                                                        </td>
                                                        <td>01/01/2023</td>
                                                        <td class="active">ACTIVE</td>
                                                        <td>
                                                            <div class="d-flex justify-content-center">
                                                                <button type="button"
                                                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                                        aria-expanded="false" data-display="static">
                                                                    <span class="sr-only"><i
                                                                            class="ri-settings-3-line"></i></span>
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Edit</a>
                                                                    <a class="dropdown-item" href="#">Delete</a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
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


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/todo.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:40 GMT -->
</html>
