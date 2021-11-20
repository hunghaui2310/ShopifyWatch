<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Home - F1Shop</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container pt-20 pb-10">
    <h5>Chi tiết đơn hàng</h5>
    <!-- Modal content -->
    <div class="cart-content mt-3">
        <table class="table table-borderless">
            <thead>
            <tr>
                <th scope="col">STT</th>
                <th scope="col">Sản phẩm</th>
                <th scope="col">Tên</th>
                <th scope="col">Giá</th>
                <th scope="col">Số lượng</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${items}" var="item" varStatus="loop">
                <tr>
                    <th scope="row">${loop.index}</th>
                    <td><img width="150" height="200" src="${contextPath}/resources/images/${item.product.image}"></td>
                    <td>${item.product.name}</td>
                    <td>${item.unitPrice}</td>
                    <td>${item.quantity}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
