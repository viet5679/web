<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!--Header start-->
<header class="gi-header">
    <div class="container-fluid">
        <div class="gi-header-items">
            <div class="left-header">
                <a href="javascript:void(0)" class="gi-toggle-sidebar">
                    <span class="outer-ring">
                        <span class="inner-ring"></span>
                    </span>
                </a>
            </div>
            <div class="right-header">
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
                            <img class="user" src="assets/images/user/default.jpg" alt="user">
                        </div>
                        <div class="gi-hover-drop-panel right">
                            <div class="details">
                                <c:if test="${not empty sessionScope.user}">
                                    <h6>${sessionScope.user.name}</h6>
                                    <p>${sessionScope.user.email}</p>
                                </c:if>
                            </div>
                            <ul class="border-top">
                                <li><a href="/louisvuitton/logout"><i class="ri-logout-circle-r-line"></i>Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Notification Sidebar -->
<div class="gi-notify-bar-overlay"></div>
<div class="gi-notify-bar">
    <div class="gi-bar-title">
        <h6>Notifications<span class="label">${alerts.size() + messages.size() + logs.size()}</span></h6>
        <a href="javascript:void(0)" class="close-notify"><i class="ri-close-line"></i></a>
    </div>
    <div class="gi-bar-content">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="alert-tab" data-bs-toggle="tab" data-bs-target="#alert" type="button" role="tab" aria-controls="alert" aria-selected="true">Alert</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="messages-tab" data-bs-toggle="tab" data-bs-target="#messages" type="button" role="tab" aria-controls="messages" aria-selected="false">Messages</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="log-tab" data-bs-toggle="tab" data-bs-target="#log" type="button" role="tab" aria-controls="log" aria-selected="false">Log</button>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <!-- Tab Alert -->
            <div class="tab-pane fade show active" id="alert" role="tabpanel" aria-labelledby="alert-tab">
                <div class="gi-alert-list">
                    <ul>
                        <c:forEach var="alert" items="${alerts}">
                            <li>
                                <div class="icon gi-${alert.type}">
                                    <i class="ri-${alert.type == 'success' ? 'check-double-line' : (alert.type == 'warn' ? 'error-warning-line' : 'alarm-warning-line')}"></i>
                                </div>
                                <div class="detail">
                                    <div class="title"><c:out value="${alert.title}" /></div>
                                    <p class="time"><fmt:formatDate value="${alert.time}" pattern="hh:mm a - dd/MM/yyyy" /></p>
                                    <p class="message"><c:out value="${alert.message}" /></p>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <!-- Tab Messages -->
            <div class="tab-pane fade" id="messages" role="tabpanel" aria-labelledby="messages-tab">
                <div class="gi-message-list">
                    <ul>
                        <c:forEach var="message" items="${messages}">
                            <li>
                                <form action="order-detail" method="post" style="display: inline;">
                                    <input type="hidden" name="orderId" value="${message.id}">
                                    <a href="javascript:void(0)" onclick="this.parentNode.submit()" class="reply">View</a>
                                </form>
                                <div class="user">
                                    <img src="${message.senderImage}" alt="user">
                                    <span class="label ${message.status}"></span>
                                </div>
                                <div class="detail">
                                    <a href="chatapp.jsp" class="name"><c:out value="${message.senderName}" /></a>
                                    <p class="time"><fmt:formatDate value="${message.time}" pattern="hh:mm a, dd/MM/yyyy" /></p>
                                    <p class="message"><c:out value="${message.message}" /></p>
                                    <c:if test="${not empty message.files}">
                                        <span class="download-files">
                                            <c:forEach var="file" items="${message.files}">
                                                <span class="download">
                                                    <c:choose>
                                                        <c:when test="${file.endsWith('.jpg') || file.endsWith('.png')}">
                                                            <img src="${file}" alt="image">
                                                        </c:when>
                                                        <c:otherwise>
                                                            <span class="file"><i class="ri-file-text-line"></i></span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                                </span>
                                            </c:forEach>
                                        </span>
                                    </c:if>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <!-- Tab Log -->
            <div class="tab-pane fade" id="log" role="tabpanel" aria-labelledby="log-tab">
                <div class="gi-activity-list activity-list">
                    <ul>
                        <c:forEach var="log" items="${logs}">
                            <li>
                                <p class="title"><c:out value="${log.title}" /></p>
                                <p class="detail"><c:out value="${log.detail}" /></p>
                                <c:if test="${not empty log.files}">
                                    <span class="download-files">
                                        <c:forEach var="file" items="${log.files}">
                                            <span class="download">
                                                <c:choose>
                                                    <c:when test="${file.endsWith('.jpg') || file.endsWith('.png')}">
                                                        <img src="${file}" alt="image">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span class="file"><i class="ri-file-text-line"></i></span>
                                                        </c:otherwise>
                                                    </c:choose>
                                                <a href="javascript:void(0)"><i class="ri-download-2-line"></i></a>
                                            </span>
                                        </c:forEach>
                                    </span>
                                </c:if>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!--Header end-->