<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <script src="https://kit.fontawesome.com/54f0cb7e4a.js" crossorigin="anonymous"></script>
    <link href="<c:url value="/css/style.css"/>" rel="stylesheet" type="text/css">
    <title>Home - F1Shop</title>
</head>
<body>
<!-- -------------------------Footer -->
<section class="footer">
    <div class="footer-container">
        <p>Tải ứng dụng</p>
        <div class="app-google">
            <a href=""><img src="<c:url value="/images/appstore.jpg"/>" alt=""></a>
            <a href=""> <img src="<c:url value="/images/googleplay.jpg"/>" alt=""></a>
        </div>
        <p>Nhận bản tin của chung tôi tại</p>
        <div class="input-email">
            <input type="text" placeholder="Nhập email của bạn">
            <i class="fas fa-arrow-left"></i>
        </div>
        <div class="footer-items">
            <li><a href=""><img src="<c:url value="/images/dathongbao.png"/>" alt=""></a></li>
            <li><a href="">Liên hệ</a></li>
            <li><a href="">Giới thiệu</a></li>
            <li><a href=""><i class="fab fa-facebook-f"></i></a><a href=""><i class="fab fa-youtube"></i></a></li>
        </div>
    </div>
</section>
<script src="<c:url value="/js/script.js"/>"></script>
</body>
</html>
