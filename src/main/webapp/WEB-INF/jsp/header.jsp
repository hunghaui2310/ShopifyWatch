<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <script src="https://kit.fontawesome.com/54f0cb7e4a.js" crossorigin="anonymous"></script>
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
<%--    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Home - F1Shop</title>
</head>
<body>
<secsion class="top">
    <div class="container">
        <div class="row">
            <div class="top-logo">
                <img src="${contextPath}/resources/images/f1.png" alt="">
            </div>
            <div class="top-menu-items">
                <ul>
<%--                    <li><a href="${contextPath}/product?category=2">Nữ</a>--%>
<%--                        <ul class="top-menu-item">--%>
<%--                            <li>--%>
<%--                                <a href="">Hàng nữ mới về</a>--%>
<%--                            </li>--%>
<%--                            <li>--%>
<%--                                <a href="">Hướng dương đón nắng</a>--%>
<%--                            </li>--%>
<%--                            <li>--%>
<%--                                <a href="">Áo nữ</a>--%>
<%--                            </li>--%>
<%--                            <li>--%>
<%--                                <a href="">Váy nữ</a>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>
<%--                    <li><a href="${contextPath}/product?category=1">Nam</a>--%>
<%--                        <ul class="top-menu-item">--%>
<%--                            <li>--%>
<%--                                <a href="">Hàng Nam mới về</a>--%>
<%--                            </li>--%>
<%--                            <li>--%>
<%--                                <a href="">Áo nam</a>--%>
<%--                            </li>--%>

<%--                            <li>--%>
<%--                                <a href="">Quần nam</a>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>
<%--                    <li>Trẻ em</li>--%>
<%--                    <li>Flast sale</li>--%>
<%--                    <li>Hot items</li>--%>

                    <c:forEach items="${categories}" var="category">
                        <li><a href="${contextPath}/product?category=${category.id}">${category.name}</a></li>
                    </c:forEach>
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
                        <a href="${contextPath}/login"><i class="fas fa-user-secret"></i></a>
                    </li>
                    <li>
                        <a href="${contextPath}/cart"><i class="fas fa-shopping-cart"></i></a>
                    </li>
                    <li>
                        <h4>${username}</h4>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</secsion>
</body>
</html>
