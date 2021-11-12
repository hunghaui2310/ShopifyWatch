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
<section class="product-related container">
    <div class="product-related-title pt-10">
        <p>SẢN PHẨM</p>
    </div>
    <div class=" row product-content">
        <c:forEach items="${products}" var="product">
            <div class="product-related-item">
                <img src="images/prl1.jpg" alt="">
                <h1>${product.name}</h1>
                <p>${product.price}<sup>đ</sup></p>
            </div>
        </c:forEach>
<%--        <div class="product-related-item">--%>
<%--            <img src="images/prl1.jpg" alt="">--%>
<%--            <h1>ÁO THUN CỔ TRÒN MS 57E2969</h1>--%>
<%--            <p>790.000<sup>đ</sup></p>--%>
<%--        </div>--%>
<%--        <div class="product-related-item">--%>
<%--            <img src="images/prl2.jpg" alt="">--%>
<%--            <h1>ÁO THUN CỔ TRÒN MS 57E2969</h1>--%>
<%--            <p>790.000<sup>đ</sup></p>--%>
<%--        </div>--%>
<%--        <div class="product-related-item">--%>
<%--            <img src="images/prl3.jpg" alt="">--%>
<%--            <h1>ÁO THUN CỔ TRÒN MS 57E2969</h1>--%>
<%--            <p>790.000<sup>đ</sup></p>--%>
<%--        </div>--%>
<%--        <div class="product-related-item">--%>
<%--            <img src="images/prl4.jpg" alt="">--%>
<%--            <h1>ÁO THUN CỔ TRÒN MS 57E2969</h1>--%>
<%--            <p>790.000<sup>đ</sup></p>--%>
<%--        </div>--%>
<%--        <div class="product-related-item">--%>
<%--            <img src="images/prl5.jpg" alt="">--%>
<%--            <h1>ÁO THUN CỔ TRÒN MS 57E2969</h1>--%>
<%--            <p>790.000<sup>đ</sup></p>--%>
<%--        </div>--%>
    </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
