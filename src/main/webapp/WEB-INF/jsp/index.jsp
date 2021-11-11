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
<jsp:include page="header.jsp"></jsp:include>
<!-- -----------------------SLlDER---------------------------------------------- -->
<section class="sliders">
    <div class="aspect-ratio-169">
        <img src="<c:url value="/images/slide1.jpg"/>" alt="">
        <img src="<c:url value="/images/slide2.jpg"/>" alt="">
        <img src="<c:url value="/images/slide3.jpg"/>" alt="">
    </div>
    <div class="dot-container">
        <div class="dot active"></div>
        <div class="dot"></div>
        <div class="dot"></div>
    </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
<script src="<c:url value="/js/script.js"/>"></script>
</body>
</html>
