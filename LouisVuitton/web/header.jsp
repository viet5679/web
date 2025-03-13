<%-- 
    Document   : header
    Created on : Mar 13, 2025, 3:03:58 PM
    Author     : adim
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="model.Users" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Header start  -->
<header class="ec-header">
    <!--Ec Header Top Start -->
    <div class="header-top">
        <div class="container">
            <div class="row align-items-center">
                <!-- Header Top social Start -->
                <div
                    class="col text-left header-top-left d-none d-lg-block">
                    <div class="header-top-social">
                        <span class="social-text text-upper">Follow us on:</span>
                    </div>
                </div>
                <!-- Header Top social End -->

                <!-- Header Top responsive Action -->
                <div class="col d-lg-none ">
                    <div class="ec-header-bottons">
                        <!-- Header User Start -->
                        <div class="ec-header-user dropdown">
                            <button class="dropdown-toggle"
                                    data-bs-toggle="dropdown"><i
                                    class="fi-rr-user"></i></button>
                            <ul
                                class="dropdown-menu dropdown-menu-right">
                                <li><a class="dropdown-item"
                                       href="register">Register</a></li>
                                <li><a class="dropdown-item"
                                       href="checkout">Checkout</a></li>
                                <li><a class="dropdown-item"
                                       href="login">Login</a></li>
                            </ul>
                        </div>
                        <!-- Header User End -->

                        <!-- Header Cart Start -->
                        <a href="wishlist"
                           class="ec-header-btn ec-header-wishlist">
                            <div class="header-icon"><i
                                    class="fi-rr-heart"></i></div>
                            <span
                                class="ec-header-count wishlist-count-label">${requestScope.numWishListItem}</span>
                        </a>
                        <!-- Header Cart End -->

                        <!-- Header Cart Start -->
                        <a href="cart"
                           class="ec-header-btn ec-side-toggle">
                            <div class="header-icon"><i class="fi-rr-shopping-bag"></i></div>
                            <span class="ec-header-count cart-count-lable">${requestScope.numCartItem}</span>
                        </a>
                        <!-- Header menu Start -->
                        <a href="#ec-mobile-menu"
                           class="ec-header-btn ec-side-toggle d-lg-none">
                            <i class="fi fi-rr-menu-burger"></i>
                        </a>
                        <!-- Header menu End -->
                    </div>
                </div>
                <!-- Header Top responsive Action -->
            </div>
        </div>
    </div>
    <!-- Ec Header Top  End -->
    <!-- Ec Header Bottom  Start -->
    <div class="ec-header-bottom d-none d-lg-block">
        <div class="container position-relative">
            <div class="row">
                <div class="ec-flex">
                    <!-- Ec Header Logo Start -->
                    <div class="align-self-center">
                        <div class="header-logo">
                            <a href="home"><img
                                    src="assets/images/logo/logo4.png"
                                    alt="Site Logo" /><img
                                    class="dark-logo"
                                    src="assets/images/logo/logo4.png"
                                    alt="Site Logo"
                                    style="display: none;" /></a>
                        </div>
                    </div>
                    <!-- Ec Header Logo End -->

                    <!-- Ec Header Search Start -->
                    <div class="align-self-center">
                        <div class="header-search">
                            <form class="ec-btn-group-form" action="shop" method="get">
                                <input class="form-control ec-search-bar" name="search" placeholder="Search products..."
                                       type="text">
                                <button class="submit" type="submit"><i class="fi-rr-search"></i></button>
                            </form>
                        </div>
                    </div>
                    <!-- Ec Header Search End -->

                    <!-- Ec Header Button Start -->
                    <div class="align-self-center">
                        <div class="ec-header-bottons">

                            <!-- Header User Start -->
                            <%
                                Users user = null;
                                if (session != null) {
                                    user = (Users) session.getAttribute("user");
                                }
                            %>

                            <div class="ec-header-user dropdown">
                                <button class="dropdown-toggle" data-bs-toggle="dropdown">
                                    <% if (user != null) { %>
                                    <span class="ec-pro-title" style="margin-right: 10px"><%= user.getName() %></span>
                                    <% } %>
                                    <i class="fi-rr-user"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-menu-right">
                                    <% if (user == null) { %>
                                    <!-- chưa đăng nhập -->
                                    <li><a class="dropdown-item" href="register">Register</a></li>
                                    <li><a class="dropdown-item" href="login">Login</a></li>
                                        <% } else { %>
                                    <!-- đã đăng nhập -->
                                    <% if (user.getRole() == 1) { %>
                                    <!-- User -->
                                    <li><a class="dropdown-item" href="profile">Edit Profile</a></li>
                                    <li><a class="dropdown-item" href="order-history">Order History</a></li>

                                    <% } else if (user.getRole() == 0) { %>
                                    <!-- Admin -->
                                    <li><a class="dropdown-item" href="admin/index.jsp">ADMIN</a></li>
                                        <% } %>
                                    <li><a class="dropdown-item" href="logout">Log out</a></li>
                                        <% } %>
                                </ul>
                            </div>
                            <!-- Header User End -->
                            <!-- Header wishlist Start -->
                            <a href="wishlist"
                               class="ec-header-btn ec-header-wishlist">
                                <div class="header-icon"><i
                                        class="fi-rr-heart"></i></div>
                                <span
                                    class="ec-header-count">${requestScope.numWishListItem}</span>
                            </a>
                            <!-- Header wishlist End -->
                            <!-- Header Cart Start -->

                            <a href="cart"
                               class="ec-header-btn">
                                <div class="header-icon"><i
                                        class="fi-rr-shopping-bag"></i></div>
                                <span
                                    class="ec-header-count">${requestScope.numCartItem}</span>
                            </a>
                            <!-- Header Cart End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Ec Header Button End -->
    <!-- Header responsive Bottom  Start -->
    <div class="ec-header-bottom d-lg-none">
        <div class="container position-relative">
            <div class="row ">
                <!-- Ec Header Logo Start -->
                <div class="col">
                    <div class="header-logo">
                        <a href="home"><img src="assets/images/logo/logo4.png" alt="Site Logo" />
                            <img class="dark-logo" src="assets/images/logo/logo4.png" alt="Site Logo" style="display: none;" /></a>
                    </div>
                </div>
                <!-- Ec Header Logo End -->
                <!-- Ec Header Search Start -->
                <div class="align-self-center">
                    <div class="header-search">
                        <form class="ec-btn-group-form" action="shop" method="get">
                            <input class="form-control ec-search-bar" name="search" placeholder="Search products..."
                                   type="text">
                            <button class="submit" type="submit"><i class="fi-rr-search"></i></button>
                        </form>
                    </div>
                </div>
                <!-- Ec Header Search End -->
            </div>
        </div>
    </div>
    <!-- Header responsive Bottom  End -->
    <!-- EC Main Menu Start -->
    <div id="ec-main-menu-desk" class="d-none d-lg-block sticky-nav">
        <div class="container position-relative">
            <div class="row">
                <div class="col-md-12 align-self-center">
                    <div class="ec-main-menu">
                        <a href="javascript:void(0)"
                           class="ec-header-btn ec-sidebar-toggle">
                            <i class="fi fi-rr-apps"></i>
                        </a>
                        <ul>
                            <li><a href="home">Home</a></li>
                            <li><a href="shop">Shop</a></li>
                            <li><a href="about-us">About Us</a></li>
                            <li><a href="contact-us">Contact Us</a></li>
                            <li class="dropdown scroll-to"><a href="javascript:void(0)"><i class="fi fi-rr-sort-amount-down-alt"></i></a>
                                <ul class="sub-menu">
                                    <li class="menu_title">Scroll To Section</li>
                                    <li><a href="javascript:void(0)" data-scroll="collection" class="nav-scroll">Top Collection</a></li>
                                    <li><a href="shop-left-sidebar-col-3.jsp" data-scroll="categories" class="nav-scroll">Categories</a></li>
                                    <li><a href="javascript:void(0)" data-scroll="services" class="nav-scroll">Services</a></li>
                                    <li><a href="javascript:void(0)" data-scroll="arrivals" class="nav-scroll">New Arrivals</a></li>
                                    <li><a href="javascript:void(0)" data-scroll="reviews" class="nav-scroll">Client Review</a></li>
                                    <li><a href="javascript:void(0)" data-scroll="insta" class="nav-scroll">Fashion style</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Ec Main Menu End -->
    <!-- ekka Mobile Menu Start -->
    <div id="ec-mobile-menu" class="ec-side-cart ec-mobile-menu">
        <div class="ec-menu-title">
            <span class="menu_title">My Menu</span>
            <button class="ec-close">x</button>
        </div>
        <div class="ec-menu-inner">
            <div class="ec-menu-content">
                <ul>
                    <li><a href="home">Home</a></li>
                    <li><a href="shop">Shop</a></li>
                    <li><a href="checkout.jsp">Checkout</a></li>
                    <li><a href="blog-full-width.jsp">Blog</a></li>
                    <li><a href="offer.jsp">Hot Offers</a></li>
                </ul>
            </div>
            <div class="header-res-lan-curr">
                <!-- Social Start -->
                <!-- Social End -->
            </div>
        </div>
    </div>
    <!-- ekka mobile Menu End -->
</header>
<!-- Header End  -->
