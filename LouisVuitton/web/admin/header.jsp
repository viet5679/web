<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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