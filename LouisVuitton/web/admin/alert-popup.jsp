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
        <link rel="shortcut icon" href="assets/images/favicon/favicon.ico">

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
            <header class="gi-header">
                <div class="container-fluid">
                    <div class="gi-header-items">
                        <div class="left-header">
                            <a href="javascript:void(0)" class="gi-toggle-sidebar">
                                <span class="outer-ring">
                                    <span class="inner-ring"></span>
                                </span>
                            </a>
                            <div class="header-search-box">
                                <div class="header-search-drop">
                                    <a href="javascript:void(0)" class="open-search"><i class="ri-search-line"></i></a>
                                    <form class="gi-search">
                                        <input class="search-input" type="text" placeholder="Search...">
                                        <a href="javascript:void(0)" class="search-btn"><i class="ri-search-line"></i>
                                        </a>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="right-header">
                            <div class="gi-right-tool gi-flag-drop language">
                                <div class="gi-hover-drop">
                                    <div class="gi-hover-tool">
                                        <img class="flag" src="assets/images/flag/us.png" alt="flag">
                                    </div>
                                    <div class="gi-hover-drop-panel right">
                                        <ul>
                                            <li><a href="javascript:void(0)"><img class="flag" src="assets/images/flag/us.png"
                                                                                  alt="flag">English</a></li>
                                            <li><a href="javascript:void(0)"><img class="flag" src="assets/images/flag/in.png"
                                                                                  alt="flag">Hindi</a></li>
                                            <li><a href="javascript:void(0)"><img class="flag" src="assets/images/flag/de.png"
                                                                                  alt="flag"> Deutsch</a></li>
                                            <li><a href="javascript:void(0)"><img class="flag" src="assets/images/flag/it.png"
                                                                                  alt="flag">Italian</a></li>
                                            <li><a href="javascript:void(0)"><img class="flag" src="assets/images/flag/jp.png"
                                                                                  alt="flag">Japanese</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="gi-right-tool apps">
                                <div class="gi-hover-drop">
                                    <div class="gi-hover-tool">
                                        <i class="ri-apps-2-line"></i>
                                    </div>
                                    <div class="gi-hover-drop-panel right">
                                        <h6 class="title">Apps</h6>
                                        <ul>
                                            <li><a href="javascript:void(0)"><img class="app" src="assets/images/apps/1.png"
                                                                                  alt="flag">English</a></li>
                                            <li><a href="javascript:void(0)"><img class="app" src="assets/images/apps/2.png"
                                                                                  alt="flag">Hindi</a></li>
                                            <li><a href="javascript:void(0)"><img class="app" src="assets/images/apps/3.png"
                                                                                  alt="flag">Deutsch</a></li>
                                            <li><a href="javascript:void(0)"><img class="app" src="assets/images/apps/4.png"
                                                                                  alt="flag">Italian</a></li>
                                            <li><a href="javascript:void(0)"><img class="app" src="assets/images/apps/5.png"
                                                                                  alt="flag">Japanese</a></li>
                                            <li><a href="javascript:void(0)"><img class="app" src="assets/images/apps/6.png"
                                                                                  alt="flag">Japanese</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="gi-right-tool display-screen">
                                <a class="gi-screen full" href="javascript:void(0)"><i class="ri-fullscreen-line"></i></a>
                                <a class="gi-screen reset" href="javascript:void(0)"><i
                                        class="ri-fullscreen-exit-line"></i></a>
                            </div>
                            <div class="gi-right-tool">
                                <a class="gi-notify" href="javascript:void(0)">
                                    <i class="ri-notification-2-line"></i>
                                    <span class="label"></span>
                                </a>
                            </div>
                            <div class="gi-right-tool display-dark">
                                <a class="gi-mode dark" href="javascript:void(0)"><i class="ri-moon-clear-line"></i></a>
                                <a class="gi-mode light" href="javascript:void(0)"><i class="ri-sun-line"></i></a>
                            </div>
                            <div class="gi-right-tool gi-user-drop">
                                <div class="gi-hover-drop">
                                    <div class="gi-hover-tool">
                                        <img class="user" src="assets/images/user/1.jpg" alt="user">
                                    </div>
                                    <div class="gi-hover-drop-panel right">
                                        <div class="details">
                                            <h6>Wiley Waites</h6>
                                            <p>wiley@example.com</p>
                                        </div>
                                        <ul class="border-top">
                                            <li><a href="team-profile.jsp">Profile</a></li>
                                            <li><a href="faq.jsp">Help</a></li>
                                            <li><a href="chatapp.jsp">Messages</a></li>
                                            <li><a href="project-overview.jsp">Projects</a></li>
                                            <li><a href="team-update.jsp">Settings</a></li>
                                        </ul>
                                        <ul class="border-top">
                                            <li><a href="signin.jsp"><i class="ri-logout-circle-r-line"></i>Logout</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

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
