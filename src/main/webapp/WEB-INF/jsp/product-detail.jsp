<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Product - F1Shop</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- --------------------------Product-------------------------------- -->
<section class="product">
    <div class="container">
        <div class="product-top row">
        </div>
        <div class="product-content row">
            <div class="product-content-left row">
                <div class="product-content-left-big-img">
                    <img src="${contextPath}/resources/images/${product.product.image}" alt="">
                </div>
                <div class="product-content-left-small-img">
                    <c:forEach items="${product.images}" var="image">
                        <img src="${contextPath}/resources/images/${image.imageName}" alt="">
                    </c:forEach>
                </div>
            </div>
            <div class="product-content-right">
                <div class="product-content-right-product-name">
                    <h1>${product.product.name}</h1>
                </div>
                <div class="product-content-right-product-price">
                    <p>${product.product.price}<sup>đ</sup></p>
                </div>
<%--                <div class="product-content-right-product-color">--%>
<%--                    <p><span style="font-weight: bold;">Màu sắc</span>:Xanh Cổ Vịt Nhạt <span style="color: red;">*</span></p>--%>
<%--                    <div class="product-content-right-product-color-img">--%>
<%--                        <img src="${contextPath}/resources/images/spcolor.png" alt="">--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="product-content-right-product-size">--%>
<%--                    <p style="font-weight: bold;">Size:</p>--%>
<%--                    <div class="size">--%>
<%--                        <span>S</span>--%>
<%--                        <span>M</span>--%>
<%--                        <span>L</span>--%>
<%--                        <span>XL</span>--%>
<%--                        <span>XXL</span>--%>
<%--                    </div>--%>
<%--                </div>--%>
                <div class="quantity">
                    <p style="font-weight: bold;">Số lượng:</p>
                    <input type="number" min="0" value="1">
                </div>
<%--                <p style="color: red;">Vui lòng chọn size</p>--%>
                <div class="product-content-right-product-button">
                    <button><i class="fas fa-shopping-cart" onclick="addToCart(${product.product.id})"></i> <p>THÊM VÀO GIỎ</p></button>
                </div>
<%--                <div class="product-content-right-product-icon">--%>
<%--                    <div class="product-content-right-product-icon-item">--%>
<%--                        <i class="fas fa-phone-alt"></i> <p>Hotline</p>--%>
<%--                    </div>--%>
<%--                    <div class="product-content-right-product-icon-item">--%>
<%--                        <i class="far fa-comments"></i> <p>Chat</p>--%>
<%--                    </div>--%>
<%--                    <div class="product-content-right-product-icon-item">--%>
<%--                        <i class="far fa-envelope"></i><p>Mail</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="product-content-right-product-QR">--%>
<%--                    <img src="${contextPath}/resources/images/qrcode2.png" alt="">--%>
<%--                </div>--%>
                <div class="product-content-right-bottom">
                    <div class="product-content-right-bottom-top">
                        ∨
                    </div>
                    <div class="product-content-right-bottom-content-big">
<%--                        <div class="product-content-right-bottom-content-title row">--%>
<%--                            <div class="product-content-right-bottom-content-title-item chitiet">--%>
<%--                                <p>Chi tiết</p>--%>
<%--                            </div>--%>
<%--                            <div class="product-content-right-bottom-content-title-item baoquan">--%>
<%--                                <p>Bảo quản</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                        <div class="product-content-right-bottom-content">
                            <div class="product-content-right-bottom-content-chitiet">
                                ${product.product.des}
                            </div>
<%--                            <div class="product-content-right-bottom-content-baoquan">--%>
<%--                                Chi tiết bảo quản sản phẩm :--%>

<%--                                * Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tránh bai dãn. <br><br>--%>

<%--                                * Vải voan , lụa , chiffon nên giặt bằng tay.<br><br>--%>

<%--                                * Vải thô , tuytsy , kaki không có phối hay trang trí đá cườm thì có thể giặt máy.<br><br>--%>

<%--                                * Vải thô , tuytsy, kaki có phối màu tường phản hay trang trí voan , lụa , đá cườm thì cần giặt tay.<br><br>--%>

<%--                                * Đồ Jeans nên hạn chế giặt bằng máy giặt vì sẽ làm phai màu jeans.Nếu giặt thì nên lộn trái sản phẩm khi giặt , đóng khuy , kéo khóa, không nên giặt chung cùng đồ sáng màu , tránh dính màu vào các sản phẩm khác. <br><br>--%>

<%--                                * Các sản phẩm cần được giặt ngay không ngâm tránh bị loang màu , phân biệt màu và loại vải để tránh trường hợp vải phai. Không nên giặt sản phẩm với xà phòng có chất tẩy mạnh , nên giặt cùng xà phòng pha loãng.<br><br>--%>

<%--                                * Các sản phẩm có thể giặt bằng máy thì chỉ nên để chế độ giặt nhẹ , vắt mức trung bình và nên phân các loại sản phẩm cùng màu và cùng loại vải khi giặt.--%>
<%--                            </div>--%>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="toast-container" style="position: absolute; bottom: 20px; right: 10px;">

        <div class="toast bg-info text-dark" id="myToast2">
            <div class="toast-header bg-info text-dark">
                <strong class="me-auto"><i class="fas fa-check"></i> Thêm thành công</strong>
                <button type="button" class="btn-close" data-bs-dismiss="toast"></button>
            </div>
            <div class="toast-body">
                Sản phẩm đã được thêm vào giỏ hàng thành công. Bạn có thể xem <a href="/cart">giỏ hàng của bạn</a>
            </div>
        </div>
    </div>
</section>
<!-- "product-related"------------------- -->
<section class="product-related container">
    <div class="product-related-title">
        <p>SẢN PHẨM LIÊN QUAN</p>
    </div>
    <div class=" row product-content">
        <c:forEach items="${productsRelated}" var="pro">
        <div class="product-related-item">
            <img src="${contextPath}/resources/images/${pro.image}" alt="">
            <h1>${pro.name}</h1>
            <p>${pro.price}<sup>đ</sup></p>
        </div>
        </c:forEach>
    </div>
</section>

<jsp:include page="footer.jsp"></jsp:include>
<script>
    function addToCart(productId) {
        var base_url = window.location.origin;
        var finalUrl = base_url + '/cart/addToCart/' + productId;
        $.ajax({
            url: finalUrl,
            cache: false,
            success: function (res) {
                if (res === true) {
                    $("#myToast2").toast("show");
                    setTimeout(function off() {
                        $("#myToast2").toast("hide");
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
