/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

$(function () {
    $("#register-link").click(function () {
        $("#login-box").hide();
        $("#forgot-box").hide();
        $("#register-box").show();
    });

    $("#login-link").click(function () {
        $("#register-box").hide();
        $("#forgot-box").hide();
        $("#login-box").show();
    });

    $("#forgot-link").click(function () {
        $("#login-box").hide();
        $("#register-box").hide();
        $("#forgot-box").show();
    });

    $("#back-link").click(function () {
        $("#forgot-box").hide();
        $("#register-box").hide();
        $("#login-box").show();
    });
});

