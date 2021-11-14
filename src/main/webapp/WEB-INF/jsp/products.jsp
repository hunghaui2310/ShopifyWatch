<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
           prefix="fn" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="req" value="${pageContext.request}" />
<c:set var="baseURL" value="${fn:replace(req.requestURL, req.requestURI, '')}" />
<c:set var="params" value="${requestScope['javax.servlet.forward.query_string']}"/>
<c:set var="requestPath" value="${requestScope['javax.servlet.forward.request_uri']}"/>
<c:set var="pageUrl" value="${ baseURL }${ requestPath }${ not empty params?'?'+=params:'' }"/>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <script src="https://kit.fontawesome.com/54f0cb7e4a.js" crossorigin="anonymous"></script>
    <title>Products - F1Shop</title>
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
                <img src="${contextPath}/resources/images/${product.image}" alt="">
                <div class="d-flex justify-content-center align-items-center">
                    <h1>${product.name}</h1>
                    <a title="Thêm vào giỏ" class="ml-2" href="/cart/?productId=${product.id}"><i title="Thêm vào giỏ" class="fas fa-shopping-cart"></i></a>
                </div>
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
    <div class="d-flex justify-content-center">
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <c:if test="${currentPage != 1}">
                    <li class="page-item">
                        <a class="page-link" href="<my:replaceParam name='page' value='${currentPage - 1}'/>" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                </c:if>
                <c:forEach begin="1" end="${noOfPages}" var="i">
                    <c:choose>
                        <c:when test="${currentPage eq i}">
                            <li class="page-item"><a class="page-link">${i}</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item"><a class="page-link" href="<my:replaceParam name='page' value='${i}'/>">${i}</a></li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                <c:if test="${currentPage lt noOfPages}">
                    <li class="page-item">
                        <a class="page-link" aria-label="Next" href="<my:replaceParam name='page' value='${currentPage + 1}'/>">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                </c:if>
            </ul>
        </nav>
        <%--        <table border="1" cellpadding="5" cellspacing="5">--%>
        <%--            <tr>--%>
        <%--                <c:forEach begin="1" end="${noOfPages}" var="i">--%>
        <%--                    <c:choose>--%>
        <%--                        <c:when test="${currentPage eq i}">--%>
        <%--                            <td>${i}</td>--%>
        <%--                        </c:when>--%>
        <%--                        <c:otherwise>--%>
        <%--                            <td><a href="product?page=${i}">${i}</a></td>--%>
        <%--                        </c:otherwise>--%>
        <%--                    </c:choose>--%>
        <%--                </c:forEach>--%>
        <%--            </tr>--%>
        <%--        </table>--%>
    </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
