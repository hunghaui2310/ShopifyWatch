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
    <title>Product - F1Shop</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- --------------------------Product-------------------------------- -->
<section class="product">
    <div class="container">
        <div class="product-top row">
            <p>Trang chủ</p> <span>⟶	</span> <p>Nữ</p> <span>⟶</span> <p>Hàng nữ mới về</p><span>⟶</span> <p>áo thun cổ tròn MS 57E2969</p>
        </div>
        <div class="product-content row">
            <div class="product-content-left row">
                <div class="product-content-left-big-img">
                    <img src="<c:url value="/images/sp1.1.jpg"/>" alt="">
                </div>
                <div class="product-content-left-small-img">
                    <img src="<c:url value="/images/sp1.1.jpg"/>" alt="">
                    <img src="<c:url value="/images/sp1.2.jpg"/>" alt="">
                    <img src="<c:url value="/images/sp1.3.jpg"/>" alt="">
                    <img src="<c:url value="/images/sp1.4.jpg"/>" alt="">
                </div>
            </div>
            <div class="product-content-right">
                <div class="product-content-right-product-name">
                    <h1>ÁO THUN CỔ TRÒN MS 57E2969</h1>
                    <p>MSP: 57E2969</p>
                </div>
                <div class="product-content-right-product-price">
                    <p>1.500.000<sup>đ</sup></p>
                </div>
                <div class="product-content-right-product-color">
                    <p><span style="font-weight: bold;">Màu sắc</span>:Xanh Cổ Vịt Nhạt <span style="color: red;">*</span></p>
                    <div class="product-content-right-product-color-img">
                        <img src="images/spcolor.png" alt="">
                    </div>
                </div>
                <div class="product-content-right-product-size">
                    <p style="font-weight: bold;">Size:</p>
                    <div class="size">
                        <span>S</span>
                        <span>M</span>
                        <span>L</span>
                        <span>XL</span>
                        <span>XXL</span>
                    </div>
                </div>
                <div class="quantity">
                    <p style="font-weight: bold;">Số lượng:</p>
                    <input type="number" min="0" value="1">
                </div>
                <p style="color: red;">Vui lòng chọn size</p>
                <div class="product-content-right-product-button">
                    <button><i class="fas fa-shopping-cart"></i> <p>MUA HÀNG</p></button>
                    <button><p>TÌM TẠI CỬA HÀNG</p></button>
                </div>
                <div class="product-content-right-product-icon">
                    <div class="product-content-right-product-icon-item">
                        <i class="fas fa-phone-alt"></i> <p>Hotline</p>
                    </div>
                    <div class="product-content-right-product-icon-item">
                        <i class="far fa-comments"></i> <p>Chat</p>
                    </div>
                    <div class="product-content-right-product-icon-item">
                        <i class="far fa-envelope"></i><p>Mail</p>
                    </div>
                </div>
                <div class="product-content-right-product-QR">
                    <img src="images/qrcode2.png" alt="">
                </div>
                <div class="product-content-right-bottom">
                    <div class="product-content-right-bottom-top">
                        ∨
                    </div>
                    <div class="product-content-right-bottom-content-big">
                        <div class="product-content-right-bottom-content-title row">
                            <div class="product-content-right-bottom-content-title-item chitiet">
                                <p>Chi tiết</p>
                            </div>
                            <div class="product-content-right-bottom-content-title-item baoquan">
                                <p>Bảo quản</p>
                            </div>
                            <div class="product-content-right-bottom-content-title-item">
                                <p>Tham khảo size</p>
                            </div>
                        </div>
                        <div class="product-content-right-bottom-content">
                            <div class="product-content-right-bottom-content-chitiet">
                                Quần Âu có túi phía trước và túi may phía sau. Đai quần có đỉa. Cài phía trước bằng khóa kéo và khuy. <br><br>

                                Form dáng tạo phong cách trẻ trung, sang trọng và lịch lãm. Kiểu dáng hoàn hảo dành cho các chàng trai văn phòng, công sở. Chất vải Tuysi mềm mịn cùng lót trong sắc nét, tạo cảm giác thoải mái khi di chuyển và làm việc. Đường may chỉn chu, tinh tế khiến quần rất bền. Không chỉ phổ biến nơi công sở, bạn hoàn toàn có thể biến tấu cho riêng mình bằng cách mix-match cùng sơ mi, áo thun hoặc len mỏng để trở thành chàng trai lịch thiệp trong mọi trường hợp. <br><br>

                                Màu sắc: Xanh Tím Than
                            </div>
                            <div class="product-content-right-bottom-content-baoquan">
                                Chi tiết bảo quản sản phẩm :

                                * Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tránh bai dãn. <br><br>

                                * Vải voan , lụa , chiffon nên giặt bằng tay.<br><br>

                                * Vải thô , tuytsy , kaki không có phối hay trang trí đá cườm thì có thể giặt máy.<br><br>

                                * Vải thô , tuytsy, kaki có phối màu tường phản hay trang trí voan , lụa , đá cườm thì cần giặt tay.<br><br>

                                * Đồ Jeans nên hạn chế giặt bằng máy giặt vì sẽ làm phai màu jeans.Nếu giặt thì nên lộn trái sản phẩm khi giặt , đóng khuy , kéo khóa, không nên giặt chung cùng đồ sáng màu , tránh dính màu vào các sản phẩm khác. <br><br>

                                * Các sản phẩm cần được giặt ngay không ngâm tránh bị loang màu , phân biệt màu và loại vải để tránh trường hợp vải phai. Không nên giặt sản phẩm với xà phòng có chất tẩy mạnh , nên giặt cùng xà phòng pha loãng.<br><br>

                                * Các sản phẩm có thể giặt bằng máy thì chỉ nên để chế độ giặt nhẹ , vắt mức trung bình và nên phân các loại sản phẩm cùng màu và cùng loại vải khi giặt.
                            </div>
                        </div>

                    </div>
                </div>
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
        <div class="product-related-item">
            <img src="images/prl1.jpg" alt="">
            <h1>ÁO THUN CỔ TRÒN MS 57E2969</h1>
            <p>790.000<sup>đ</sup></p>
        </div>
        <div class="product-related-item">
            <img src="images/prl2.jpg" alt="">
            <h1>ÁO THUN CỔ TRÒN MS 57E2969</h1>
            <p>790.000<sup>đ</sup></p>
        </div>
        <div class="product-related-item">
            <img src="images/prl3.jpg" alt="">
            <h1>ÁO THUN CỔ TRÒN MS 57E2969</h1>
            <p>790.000<sup>đ</sup></p>
        </div>
        <div class="product-related-item">
            <img src="images/prl4.jpg" alt="">
            <h1>ÁO THUN CỔ TRÒN MS 57E2969</h1>
            <p>790.000<sup>đ</sup></p>
        </div>
        <div class="product-related-item">
            <img src="images/prl5.jpg" alt="">
            <h1>ÁO THUN CỔ TRÒN MS 57E2969</h1>
            <p>790.000<sup>đ</sup></p>
        </div>
    </div>
</section>

<jsp:include page="footer.jsp"></jsp:include>
<script src="<c:url value="/js/script.js"/>"></script>

</body>
</html>
