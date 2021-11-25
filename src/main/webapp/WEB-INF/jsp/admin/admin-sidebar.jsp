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
    <link href="${contextPath}/resources/css/admin.css" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>Home - F1Shop</title>
</head>
<body>
<div id="sidebar-wrapper">
    <ul class="sidebar-nav">
        <li><a href="/admin/category"><i class="fa fa-tachometer" aria-hidden="true"></i><span>Quản lý thể loại</span></a></li>
        <li><a href="#"><i class="fa fa-calendar" aria-hidden="true"></i><span>Quản lý sản phẩm</span></a></li>
<%--        <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i><span>Services</span></a></li>--%>
<%--        <li><a href="#"><i class="fa fa-cogs" aria-hidden="true"></i><span>Contact</span></a></li>--%>
    </ul>
</div>
</body>
</html>
