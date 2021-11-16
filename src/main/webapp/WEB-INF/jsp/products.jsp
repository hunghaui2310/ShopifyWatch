<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
           prefix="fn" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="req" value="${pageContext.request}"/>
<c:set var="baseURL" value="${fn:replace(req.requestURL, req.requestURI, '')}"/>
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
    <div class="product-related-title pt-20">
        <p>SẢN PHẨM</p>
    </div>
    <c:if test="${products != null && products.size() > 0}">
    <div class="row product-content">
        <c:forEach items="${products}" var="product">
            <div class="product-related-item">
                <img src="${contextPath}/resources/images/${product.image}" alt="">
                <div class="d-flex justify-content-center align-items-center">
                    <h1>${product.name}</h1>
                    <button title="Thêm vào giỏ" class="ml-2 btn" onclick="addToCart(${product.id})"><i title="Thêm vào giỏ"
                                                                                                    class="fas fa-shopping-cart"></i>
                    </button>
                </div>
                <p>${product.price}<sup>đ</sup></p>
            </div>
        </c:forEach>
    </div>
    <div class="d-flex justify-content-center">
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <c:if test="${currentPage != 1}">
                    <li class="page-item">
                        <a class="page-link" href="<my:replaceParam name='page' value='${currentPage - 1}'/>"
                           aria-label="Previous">
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
                            <li class="page-item"><a class="page-link"
                                                     href="<my:replaceParam name='page' value='${i}'/>">${i}</a></li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                <c:if test="${currentPage lt noOfPages}">
                    <li class="page-item">
                        <a class="page-link" aria-label="Next"
                           href="<my:replaceParam name='page' value='${currentPage + 1}'/>">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                </c:if>
            </ul>
        </nav>
<%--        toast--%>
        <div class="toast-container" style="position: absolute; bottom: 20px; right: 10px;">

            <div class="toast bg-info text-dark" id="myToast">
                <div class="toast-header bg-info text-dark">
                    <strong class="me-auto"><i class="fas fa-check"></i> Thêm thành công</strong>
                    <button type="button" class="btn-close" data-bs-dismiss="toast"></button>
                </div>
                <div class="toast-body">
                    Sản phẩm đã được thêm vào giỏ hàng thành công. Bạn có thể xem <a href="/cart">giỏ hàng của bạn</a>
                </div>
            </div>
        </div>
    </div>
    </c:if>
    <c:if test="${products == null || products.size() == 0}">
        <div class="row product-content">
            <h3>Không có sản phẩm nào</h3>
        </div>
    </c:if>
</section>
<jsp:include page="footer.jsp"></jsp:include>
<script>
    $(document).ready(function(){
            // Passing option
            $("#myToast").toast({
                autohide: false
            });
    });
    function addToCart(productId) {
        var base_url = window.location.origin;
        var finalUrl = base_url + '/cart/addToCart/' + productId;
        $.ajax({
            url: finalUrl,
            cache: false,
            success: function (res) {
                if (res === true) {
                    $("#myToast").toast("show");
                    setTimeout(function off() {
                        $("#myToast").toast("hide");
                    }, 3000);
                } else {
                    window.location.href = base_url + '/login';
                }
            }
        });
    }
</script>
</body>
</html>
