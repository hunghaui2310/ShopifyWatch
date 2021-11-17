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
                        <th>Gía</th>
                        <%--                        <th>Size</th>--%>
                        <th>SL</th>
                        <th>Thành tiền</th>
                        <th>Xóa</th>
                    </tr>
                    <c:forEach items="${carts}" var="cart">
                        <tr>
                            <td><img src="${contextPath}/resources/images/${cart.image}" alt=""></td>
                            <td><p>${cart.name}</p></td>
                            <td><p>${cart.unitPrice}</p></td>
                                <%--                            <td><img src="${contextPath}/resources/images/spcolor.png" alt=""></td>--%>
                                <%--                            <td><p>L</p></td>--%>
                            <td><input type="number" onchange="changeQuantity(${cart.id})" id="val_${cart.id}" value="${cart.quantity}" min="1"></td>
                            <td><p>${cart.totalMoney} <sup>đ</sup></p></td>
                            <td><button class="btn" id="modal_${cart.id}" onclick="openModalDelete(${cart.id})"><i class="fas fa-trash"></i></button></td>
                        </tr>
                    </c:forEach>
                    <%--                    <tr>--%>
                    <%--                        <td><img src="${contextPath}/resources/images/sp2.jpg" alt=""></td>--%>
                    <%--                        <td><p>Quần sooc bò đen MS 23E2616</p></td>--%>
                    <%--                        <td><img src="${contextPath}/resources/images/spcolor.png" alt=""></td>--%>
                    <%--                        <td><p>L</p></td>--%>
                    <%--                        <td><input type="number" value="1" min="1"></td>--%>
                    <%--                        <td><p>489.000 <sup>đ</sup></p></td>--%>
                    <%--                        <td><span>X</span></td>--%>
                    <%--                    </tr>--%>
                </table>
                <div class="cart-content-right-button text-right mt-2">
                    <button type="button" id="updateCartBtn" onclick="updateCart()">CẬP NHẬT GIỎ HÀNG</button>
                </div>
            </div>
            <div class="cart-content-right">
                <table>
                    <tr>
                        <th colspan="2">TỔNG TIỀN GIỎ HÀNG</th>
                    </tr>
                    <tr>
                        <td>TỔNG SẢN PHẨM</td>
                        <td>${carts.size()}</td>
                    </tr>
                    <tr>
                        <td>TỔNG TIỀN HÀNG</td>
                        <td><p>${total} <sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <td>TẠM TÍNH</td>
                        <td><p style="color: black; font-weight: bold;">${total} <sup>đ</sup></p></td>
                    </tr>
                </table>
                <%--                <div class="cart-content-right-text">--%>
                <%--                    <p>Bạn sẽ được miễn phí ship khi đơn hàng của bạn có tổng giá trị trên 2.000.000 đ</p>--%>
                <%--                    <p style="color: red; font-weight: bold;">Mua thêm <span style="font-size: 18px;">131.000đ</span> để được miễn phí SHIP</p>--%>
                <%--                </div>--%>
                <div class="cart-content-right-button mt-2">
                    <button onclick="location.href ='/product'">TIẾP TỤC MUA SẮM</button>
                    <button onclick="location.href ='/delivery'">THANH TOÁN</button>
                </div>
                <%--                <div class="cart-content-right-dangnhap">--%>

                <%--                    <p>Hãy <a href="">Đăng nhập </a>tài khoản của bạn để tích điểm thành viên</p>--%>

                <%--                </div>--%>
            </div>
        </div>


        <div id="myModal" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Xác thực xóa</h5>
                    <button type="button" id="btn-close" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Bạn có chắc chắn muốn xóa sản phẩm này khỏi giỏ hàng?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" id="btn-close2" data-bs-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-primary" onclick="deleteProduct()">Xóa</button>
                </div>
            </div>

        </div>
    </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript">
    const mapValByProduct = new Map();
    const base_url = window.location.origin;

    function changeQuantity(cartItemId) {
        const quantity = document.getElementById('val_' + cartItemId).value;
        mapValByProduct.set(cartItemId, quantity);
    }
    function updateCart() {
        const cartItems = [];
        for (const [key, value] of mapValByProduct) {
            cartItems.push({cartItemId: key, quantity: value})
        }
        $.ajax({
            type: "POST",
            url: base_url + '/cart/updateCart',
            dataType: "json",
            contentType: 'application/json',
            data: JSON.stringify(cartItems),
            success: function (res) {
                if (res === true) {
                    location.reload();
                } else {
                    window.location.href = base_url + '/login';
                }
            }
        });
    }

    var modal = document.getElementById("myModal");

    // Get the <span> element that closes the modal
    var btnClose = document.getElementById("btn-close");
    var btnClose2 = document.getElementById("btn-close2");

    // When the user clicks on <span> (x), close the modal
    btnClose.onclick = function() {
        modal.style.display = "none";
    };
    btnClose2.onclick = function() {
        modal.style.display = "none";
    };

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    };

    var idCart;
    function openModalDelete(id) {
        idCart = id;
        // Get the button that opens the modal
        const btn = document.getElementById("modal_" + id);
        // When the user clicks the button, open the modal
        btn.onclick = function() {
            modal.style.display = "block";
        };
    }

    function deleteProduct() {
        if (!idCart) { return; }
        $.ajax({
            type: "DELETE",
            url: base_url + '/cart/delete/' + idCart,
            dataType: "json",
            contentType: 'application/json',
            success: function (res) {
                if (res === true) {
                    location.reload();
                } else {
                    window.location.href = base_url + '/login';
                }
            }
        });
    }
</script>
</body>
</html>
