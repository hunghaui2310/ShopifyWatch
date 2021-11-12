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
    <title>Cart - F1Shop</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- -------------------------cart---------------- -->
<section class="cart">
    <div class="container">
        <div class="cart-top-wrap">
            <div class="cart-top">
                <div class="cart-top-cart cart-top-item">
                    <i class="fas fa-shopping-cart"></i>
                </div>
                <div class="cart-top-adress cart-top-item">
                    <i class="fas fa-map-marker-alt "></i>
                </div>
                <div class="cart-top-payment cart-top-item">
                    <i class="fas fa-money-check-alt"></i>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="cart-content row">
            <div class="cart-content-left">
                <table>
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Tên sản phẩm</th>
                        <th>Màu</th>
                        <th>Size</th>
                        <th>SL</th>
                        <th>Thành tiền</th>
                        <th>Xóa</th>
                    </tr>
                    <tr>
                        <td><img src="${contextPath}/resources/images/sp1.1.jpg" alt=""></td>
                        <td><p>Quần sooc bò đen MS 23E2616</p></td>
                        <td><img src="${contextPath}/resources/images/spcolor.png" alt=""></td>
                        <td><p>L</p></td>
                        <td><input type="number" value="1" min="1"></td>
                        <td><p>489.000 <sup>đ</sup></p></td>
                        <td><span>X</span></td>
                    </tr>
                    <tr>
                        <td><img src="${contextPath}/resources/images/sp2.jpg" alt=""></td>
                        <td><p>Quần sooc bò đen MS 23E2616</p></td>
                        <td><img src="${contextPath}/resources/images/spcolor.png" alt=""></td>
                        <td><p>L</p></td>
                        <td><input type="number" value="1" min="1"></td>
                        <td><p>489.000 <sup>đ</sup></p></td>
                        <td><span>X</span></td>
                    </tr>
                </table>
            </div>
            <div class="cart-content-right">
                <table>
                    <tr>
                        <th colspan="2">TỔNG TIỀN GIỎ HÀNG</th>
                    </tr>
                    <tr>
                        <td>TỔNG SẢN PHẨM</td>
                        <td>2</td>
                    </tr>
                    <tr>
                        <td>TỔNG TIỀN HÀNG</td>
                        <td><p>489.000 <sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <td>TẠM TÍNH</td>
                        <td><p style="color: black; font-weight: bold;">489.000 <sup>đ</sup></p></td>
                    </tr>
                </table>
                <div class="cart-content-right-text">
                    <p>Bạn sẽ được miễn phí ship khi đơn hàng của bạn có tổng giá trị trên 2.000.000 đ</p>
                    <p style="color: red; font-weight: bold;">Mua thêm <span style="font-size: 18px;">131.000đ</span> để được miễn phí SHIP</p>
                </div>
                <div class="cart-content-right-button">
                    <button>TIẾP TỤC MUA SẮM</button>
                    <button>THANH TOÁN</button>
                </div>
                <div class="cart-content-right-dangnhap">

                    <p>Hãy <a href="">Đăng nhập </a>tài khoản của bạn để tích điểm thành viên</p>

                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
