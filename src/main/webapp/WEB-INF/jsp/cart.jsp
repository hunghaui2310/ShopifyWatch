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
    <title>Cart - F1Shop</title>
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
                        <td><img src="<c:url value="/images/sp1.1.jpg"/>" alt=""></td>
                        <td><p>Quần sooc bò đen MS 23E2616</p></td>
                        <td><img src="<c:url value="/images/spcolor.png"/>" alt=""></td>
                        <td><p>L</p></td>
                        <td><input type="number" value="1" min="1"></td>
                        <td><p>489.000 <sup>đ</sup></p></td>
                        <td><span>X</span></td>
                    </tr>
                    <tr>
                        <td><img src="<c:url value="/images/sp2.jpg"/>" alt=""></td>
                        <td><p>Quần sooc bò đen MS 23E2616</p></td>
                        <td><img src="<c:url value="/images/spcolor.png"/>" alt=""></td>
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
