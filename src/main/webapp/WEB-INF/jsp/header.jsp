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
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <%--    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var toastElementList = [].slice.call(document.querySelectorAll(".toast"));
            var toastList = toastElementList.map(function (element) {
                return new bootstrap.Toast(element, {
                    autohide: false
                });
            });
        });
    </script>
    <%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">--%>
    <title>Home - F1Shop</title>
</head>
<body>
<secsion class="top">
    <div class="container">
        <div class="row">
            <div class="top-logo">
                <a href="/"><img src="${contextPath}/resources/images/f1.png" alt=""></a>
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
                    <li><a href="/product">Toàn bộ sản phẩm</a></li>

                    <li>Thông tin</li>
                </ul>
            </div>
            <div class="top-menu-icons">
                <ul>
                    <li>
                        <form action="product" method="post" class="mb-3">
                            <div class="inner-addon left-addon">
                                <button type="submit" class="btn"><i class="fas fa-search pt-3"></i></button>
                                <input type="text" placeholder="tìm kiếm" name="name" value="${valueSearch}">
<%--                                <input type="submit" class="d-none">--%>
                            </div>
                        </form>
                    </li>
                    <li>
                        <a href="${contextPath}/login"><i class="fas fa-user-secret"></i></a>
                    </li>
                    <li>
                        <a href="${contextPath}/cart"><i class="fas fa-shopping-cart"></i></a>
                    </li>
                    <c:if test="${username != null && username.length() > 0}">
                        <li>
                            <h5><a href="/userInfo">${username}</a></h5>
                        </li>
                        <li>
                            <a href="/logout"><i class="fa fa-sign-out" aria-hidden="true"></i></a>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>
    </div>
</secsion>
<script>
    function search(e) {
        console.log('called search', e);
    }
</script>
</body>
</html>
