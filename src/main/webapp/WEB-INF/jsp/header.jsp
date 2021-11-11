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
<secsion class="top">
    <div class="container">
        <div class="row">
            <div class="top-logo">
                <img src="<c:url value="/images/f1.png"/>" alt="">
            </div>
            <div class="top-menu-items">
                <ul>
                    <li>Nữ
                        <ul class="top-menu-item">
                            <li>
                                <a href="">Hàng nữ mới về</a>
                            </li>
                            <li>
                                <a href="">Hướng dương đón nắng</a>
                            </li>
                            <li>
                                <a href="">Áo nữ</a>
                            </li>
                            <li>
                                <a href="">Váy nữ</a>
                            </li>
                        </ul>
                    </li>
                    <li>Nam
                        <ul class="top-menu-item">
                            <li>
                                <a href="">Hàng Nam mới về</a>
                            </li>
                            <li>
                                <a href="">Áo nam</a>
                            </li>

                            <li>
                                <a href="">Quần nam</a>
                            </li>
                        </ul>
                    </li>
                    <li>Trẻ em</li>
                    <li>Flast sale</li>
                    <li>Hot items</li>
                    <li>Bộ sưu tập</li>

                    <li>Thông tin</li>
                </ul>
            </div>
            <div class="top-menu-icons">
                <ul>
                    <li>
                        <input type="text" placeholder="tìm kiếm">
                        <i class="fas fa-search"></i>
                    </li>
                    <li>
                        <i class="fas fa-user-secret"></i>
                    </li>
                    <li>
                        <i class="fas fa-shopping-cart"></i>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</secsion>
<script src="<c:url value="/js/script.js"/>"></script>
</body>
</html>
