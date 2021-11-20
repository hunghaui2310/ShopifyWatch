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
<!-- -----------------------SLlDER---------------------------------------------- -->
<section class="container pt-20 pb-10">

    <h5>Đơn hàng của bạn</h5>
    <table class="table mt-3">
        <thead>
        <tr>
            <th scope="col">STT</th>
            <th scope="col">Họ tên</th>
            <th scope="col">Số điện thoại</th>
            <th scope="col">Địa chỉ</th>
            <th scope="col">Ngày đặt hàng</th>
            <th scope="col">Tổng số tiền</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${items}" var="item" varStatus="loop">
            <tr>
                <th scope="row">${loop.index}</th>
                <td>${item.delivery.name}</td>
                <td>${item.delivery.phoneNumber}</td>
                <td>${item.delivery.address}</td>
                <td>${item.delivery.dateFormatted}</td>
                <td>${item.total}</td>
                <td><a href="delivery/detail/${item.delivery.id}">
                    Xem chi tiết
                </a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <!-- Modal -->
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
