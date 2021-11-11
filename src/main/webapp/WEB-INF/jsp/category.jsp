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
    <title>Category - F1Shop</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<!-- --------------------------Cartegory -->
<section class="cartegory">
    <div class="container">
        <div class="cartegory-top row">
            <p>Trang chủ</p> <span>⟶	</span> <p>Nữ</p> <span>⟶</span> <p>Hàng nữ mới về</p>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="cartegory-left">
                <ul>
                    <li class="cartegory-left-li "><a href="#">NỮ</a>
                        <ul>
                            <li><a href="">HÀNG NỮ MỚI VỀ</a></li>
                            <li><a href="">BEYOND TRENDY</a></li>
                            <li><a href="">JEANS FOR JOY</a></li>
                            <li><a href="">JEANS FOR JOY</a></li>
                        </ul>
                    </li>
                    <li class="cartegory-left-li"><a href="#">NAM</a>
                        <ul>
                            <li><a href="">HÀNG NAM MỚI VỀ</a></li>
                            <li><a href="">BEYOND TRENDY</a></li>
                            <li><a href="">JEANS FOR JOY</a></li>
                            <li><a href="">JEANS FOR JOY</a></li>
                        </ul>
                    </li>
                    <li class="cartegory-left-li"><a href="">TRẺ EM</a></li>
                    <li class="cartegory-left-li"><a href="">BỘ SƯU TẬP</a></li>

                </ul>

            </div>
            <div class="cartegory-right row">
                <div class="cartegory-right-top-item">
                    <p>HÀNG NỮ MỚI VỀ</p>
                </div>
                <div class="cartegory-right-top-item">
                    <button><span>Bộ lọc</span> <i class="fas fa-sort-down"></i></button>
                </div>
                <div class="cartegory-right-top-item">
                    <select name="" id="">
                        <option value="">Sắp xếp</option>
                        <option value="">Giá cao đến thấp</option>
                        <option value="">Giá thấp đến cao</option>
                    </select>
                </div>
                <div class="cartegory-right-content row">
                    <div class="cartegory-right-content-item">
                        <img src="<c:url value="/images/sp1.jpg"/>" alt="">
                        <h1>ĐẦM ÔM HỌA TIẾT HOA MS 48T0033</h1>
                        <p>790.000<sup>đ</sup></p>
                    </div>
                    <div class="cartegory-right-content-item">
                        <img src="<c:url value="/images/sp2.jpg"/>" alt="">
                        <h1>ĐẦM ÔM HỌA TIẾT HOA MS 48T0033</h1>
                        <p>790.000<sup>đ</sup></p>
                    </div>
                    <div class="cartegory-right-content-item">
                        <img src="<c:url value="/images/sp3.jpg"/>" alt="">
                        <h1>ĐẦM ÔM HỌA TIẾT HOA MS 48T0033</h1>
                        <p>790.000<sup>đ</sup></p>
                    </div>
                    <div class="cartegory-right-content-item">
                        <img src="<c:url value="/images/sp4.jpg"/>" alt="">
                        <h1>ĐẦM ÔM HỌA TIẾT HOA MS 48T0033</h1>
                        <p>790.000<sup>đ</sup></p>
                    </div>
                    <div class="cartegory-right-content-item">
                        <img src="<c:url value="/images/sp5.jpg"/>" alt="">
                        <h1>ĐẦM ÔM HỌA TIẾT HOA MS 48T0033</h1>
                        <p>790.000<sup>đ</sup></p>
                    </div>
                    <div class="cartegory-right-content-item">
                        <img src="<c:url value="/images/sp6.jpg"/>" alt="">
                        <h1>ĐẦM ÔM HỌA TIẾT HOA MS 48T0033</h1>
                        <p>790.000<sup>đ</sup></p>
                    </div>
                    <div class="cartegory-right-content-item">
                        <img src="<c:url value="/images/sp7.jpg"/>" alt="">
                        <h1>ĐẦM ÔM HỌA TIẾT HOA MS 48T0033</h1>
                        <p>790.000<sup>đ</sup></p>
                    </div>
                    <div class="cartegory-right-content-item">
                        <img src="<c:url value="/images/sp8.jpg"/>" alt="">
                        <h1>ĐẦM ÔM HỌA TIẾT HOA MS 48T0033</h1>
                        <p>790.000<sup>đ</sup></p>
                    </div>
                </div>


                <div class="cartegory-right-bottom row">
                    <div class="cartegory-right-bottom-items">
                        <p>Hiện thị 2 <span>|</span> 4 sản phẩm</p>
                    </div>
                    <div class="cartegory-right-bottom-items">
                        <p><span>«</span>1 2 3 4 5<span>»</span>Trang cuối</p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<jsp:include page="footer.jsp"></jsp:include>
<script src="<c:url value="/js/script.js"/>"></script>
</body>
</html>
