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
<secsion class="top">
    <div class="container">
        <div class="row">
            <div class="top-logo">
                <img src="<c:url value="/images/f1.png"/>" alt="">
            </div>
            <div class="top-menu-items">
                <ul>
                    <li>Nữ
                        <ul class="top-menu-item">
                            <li>
                                <a href="">Hàng nữ mới về</a>
                            </li>
                            <li>
                                <a href="">Hướng dương đón nắng</a>
                            </li>
                            <li>
                                <a href="">Áo nữ</a>
                            </li>
                            <li>
                                <a href="">Váy nữ</a>
                            </li>
                        </ul>
                    </li>
                    <li>Nam
                        <ul class="top-menu-item">
                            <li>
                                <a href="">Hàng Nam mới về</a>
                            </li>
                            <li>
                                <a href="">Áo nam</a>
                            </li>

                            <li>
                                <a href="">Quần nam</a>
                            </li>
                        </ul>
                    </li>
                    <li>Trẻ em</li>
                    <li>Flast sale</li>
                    <li>Hot items</li>
                    <li>Bộ sưu tập</li>

                    <li>Thông tin</li>
                </ul>
            </div>
            <div class="top-menu-icons">
                <ul>
                    <li>
                        <input type="text" placeholder="tìm kiếm">
                        <i class="fas fa-search"></i>
                    </li>
                    <li>
                        <i class="fas fa-user-secret"></i>
                    </li>
                    <li>
                        <i class="fas fa-shopping-cart"></i>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</secsion>


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
            <div class="delivery-content-left">
                <p>Vui lòng chọn địa chỉ giao hàng</p>
                <div class="delivery-content-left-dangnhap row">
                    <i class="fas fa-sign-in-alt"></i>
                    <p>Đăng nhập (Nếu bạn đã có tài khoản)</p>
                </div>
                <div class="delivery-content-left-khachle row">
                    <input checked name="loaikhach" type="radio" >
                    <p> <span style="font-weight: bold;">Khách lẻ</span> (Nếu bạn không muốn lưu lại thông tin)</p>
                </div>
                <div class="delivery-content-left-dangky row">
                    <input  name="loaikhach" type="radio" >
                    <p> <span style="font-weight: bold;">Đăng ký</span> (Tạo mới tài khoản với thông tin bên dưới)</p>
                </div>
                <div class="delivery-content-left-input-top row">
                    <div class="delivery-content-left-input-top-item">
                        <label for="">Họ tên <span style="color: red;">*</span></label>
                        <input type="text">
                    </div>
                    <div class="delivery-content-left-input-top-item">
                        <label for="">Điện thoại <span style="color: red;">*</span></label>
                        <input type="text">
                    </div>
                    <div class="delivery-content-left-input-top-item">
                        <label for="">Tỉnh/Tp <span style="color: red;">*</span></label>
                        <input type="text">
                    </div>
                    <div class="delivery-content-left-input-top-item">
                        <label for="">Quận/Huyện <span style="color: red;">*</span></label>
                        <input type="text">
                    </div>
                </div>
                <div class="delivery-content-left-input-bottom">
                    <label for="">Địa chỉ <span style="color: red;">*</span></label>
                    <input type="text">
                </div>
                <div class="delivery-content-left-button row">
                    <a href=""><span>«</span><p>Quay lại giỏ hàng</p></a>
                    <button><p style="font-weight: bold;">THANH TOÁN VÀ GIAO HÀNG</p></button>
                </div>
            </div>
            <div class="delivery-content-right">
                <table>
                    <tr>
                        <th>Tên sản phẩm</th>
                        <th>Giảm giá</th>
                        <th>Số lượng</th>
                        <th>Thành tiền</th>
                    </tr>
                    <tr>
                        <td>Áo polo kẻ ngang MS 57E2940</td>
                        <td>-30%</td>
                        <td>1</td>
                        <td><p>590.000 <sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <td>Áo Nam kẻ ngang MS 57E2940</td>
                        <td>-20%</td>
                        <td>1</td>
                        <td><p>690.000 <sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold;" colspan="3">Tổng</td>
                        <td style="font-weight: bold;"><p>690.000 <sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold;" colspan="3">Thuế VAT</td>
                        <td style="font-weight: bold;"><p>69.000 <sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold;" colspan="3">Tổng tiền hàng</td>
                        <td style="font-weight: bold;"><p>759.000 <sup>đ</sup></p></td>
                    </tr>
                </table>
            </div>
        </div>

    </div>
</section>


<!-- -------------------------Footer -->
<section class="footer">
    <div class="footer-container">
        <p>Tải ứng dụng</p>
        <div class="app-google">
            <a href=""><img src="<c:url value="/images/appstore.jpg"/>" alt=""></a>
            <a href=""> <img src="<c:url value="/images/googleplay.jpg"/>" alt=""></a>
        </div>
        <p>Nhận bản tin của chung tôi tại</p>
        <div class="input-email">
            <input type="text" placeholder="Nhập email của bạn">
            <i class="fas fa-arrow-left"></i>
        </div>
        <div class="footer-items">
            <li><a href=""><img src="<c:url value="/images/dathongbao.png"/>" alt=""></a></li>
            <li><a href="">Liên hệ</a></li>
            <li><a href="">Giới thiệu</a></li>
            <li><a href=""><i class="fab fa-facebook-f"></i></a><a href=""><i class="fab fa-youtube"></i></a></li>
        </div>
    </div>
</section>
<script src="<c:url value="/js/script.js"/>"></script>
</body>
</html>
