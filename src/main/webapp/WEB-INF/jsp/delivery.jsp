<%@ page import="com.shopify.dto.CartItemDto" %>
<%@ page import="java.util.List" %>
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


<!-- -------------------------Delivery---------------- -->
<section class="delivery">
    <div class="container">
        <div class="delivery-top-wrap">
            <div class="delivery-top">
                <div class="delivery-top-delivery delivery-top-item">
                    <i class="fas fa-shopping-cart"></i>
                </div>
                <div class="delivery-top-adress delivery-top-item">
                    <i class="fas fa-map-marker-alt "></i>
                </div>
                <div class="delivery-top-payment delivery-top-item">
                    <i class="fas fa-money-check-alt"></i>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="delivery-content row">
            <div class="delivery-content-left pr-4">
                <p>Vui lòng chọn địa chỉ giao hàng</p>
                <%--                <div class="delivery-content-left-dangnhap row">--%>
                <%--                    <i class="fas fa-sign-in-alt"></i>--%>
                <%--                    <p>Đăng nhập (Nếu bạn đã có tài khoản)</p>--%>
                <%--                </div>--%>
                <%--                <div class="delivery-content-left-khachle row">--%>
                <%--                    <input checked name="loaikhach" type="radio" >--%>
                <%--                    <p> <span style="font-weight: bold;">Khách lẻ</span> (Nếu bạn không muốn lưu lại thông tin)</p>--%>
                <%--                </div>--%>
                <%--                <div class="delivery-content-left-dangky row">--%>
                <%--                    <input  name="loaikhach" type="radio" >--%>
                <%--                    <p> <span style="font-weight: bold;">Đăng ký</span> (Tạo mới tài khoản với thông tin bên dưới)</p>--%>
                <%--                </div>--%>
                <div class="delivery-content-left-input-top row">
                    <div class="delivery-content-left-input-top-item">
                        <label for="name">Họ tên <span style="color: red;">*</span></label>
                        <input type="text" id="name" required>
                    </div>
                    <div class="delivery-content-left-input-top-item">
                        <label for="phoneNumber">Điện thoại <span style="color: red;">*</span></label>
                        <input type="text" id="phoneNumber" required>
                    </div>
                    <%--                    <div class="delivery-content-left-input-top-item">--%>
                    <%--                        <label for="">Tỉnh/Tp <span style="color: red;">*</span></label>--%>
                    <%--                        <input type="text">--%>
                    <%--                    </div>--%>
                    <%--                    <div class="delivery-content-left-input-top-item">--%>
                    <%--                        <label for="">Quận/Huyện <span style="color: red;">*</span></label>--%>
                    <%--                        <input type="text">--%>
                    <%--                    </div>--%>
                </div>
                <div class="delivery-content-left-input-bottom">
                    <label for="address">Địa chỉ <span style="color: red;">*</span></label>
                    <input type="text" required id="address">
                </div>
                <div class="delivery-content-left-button row">
                    <a href="/cart"><span>«</span>
                        <p>Quay lại giỏ hàng</p></a>
                    <button onclick="submit()"><p style="font-weight: bold;">THANH TOÁN VÀ GIAO HÀNG</p></button>
                </div>
            </div>
            <div class="delivery-content-right">
                <table>
                    <tr>
                        <th>Tên sản phẩm</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Thành tiền</th>
                    </tr>
                    <c:forEach items="${cartItems}" var="cartItem">
                        <tr>
                            <td>${cartItem.name}</td>
                            <td>${cartItem.unitPrice}</td>
                            <td>${cartItem.quantity}</td>
                            <td><p>${cartItem.totalMoney}<sup>đ</sup></p></td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td style="font-weight: bold;" colspan="3">Tổng</td>
                        <td style="font-weight: bold;"><p>${total} <sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold;" colspan="3">Thuế VAT</td>
                        <td style="font-weight: bold;"><p>${VAT} <sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold;" colspan="3">Tổng tiền hàng</td>
                        <td style="font-weight: bold;"><p>${total + VAT} <sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold;" colspan="3">Hình thức thanh toán: Tiền mặt</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</section>

<jsp:include page="footer.jsp"></jsp:include>
<script>
    function submit() {
        const name = document.getElementById('name').value;
        const phoneNumber = document.getElementById('phoneNumber').value;
        const address = document.getElementById('address').value;
        const bodyData = {
            name: name,
            phoneNumber: phoneNumber,
            address: address
        };
        var base_url = window.location.origin;
        $.ajax({
            type: "POST",
            url: base_url + '/delivery/save',
            dataType: "json",
            contentType: 'application/json',
            data: JSON.stringify(bodyData),
            success: function (res) {
                if (res === true) {
                    location.href = '/order-success';
                } else {
                    window.location.href = base_url + '/login';
                }
            }
        });
    }
</script>
</body>
</html>
