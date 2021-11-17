<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Home - F1Shop</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- -----------------------SLlDER---------------------------------------------- -->
<section class="container pt-20 pb-10">

    <h5>Đơn hàng của bạn</h5>
    <table class="table mt-3">
        <thead>
        <tr>
            <th scope="col">STT</th>
            <th scope="col">Họ tên</th>
            <th scope="col">Số điện thoại</th>
            <th scope="col">Địa chỉ</th>
            <th scope="col">Ngày đặt hàng</th>
            <th scope="col">Tổng số tiền</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${items}" var="item" varStatus="loop">
            <tr>
                <th scope="row">${loop.index}</th>
                <td>${item.delivery.name}</td>
                <td>${item.delivery.phoneNumber}</td>
                <td>${item.delivery.address}</td>
                <td>${item.delivery.dateFormatted}</td>
                <td>${item.total}</td>
                <td><button id="btn-modal-order" class="btn btn-link" onclick="openModalOrder()">
                    Xem chi tiết
                </button></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div id="modal-order" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Thông tin chi tiết đơn hàng</h5>
                <button type="button" id="btn-close-modal" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <table class="table table-borderless">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">First</th>
                        <th scope="col">Last</th>
                        <th scope="col">Handle</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
    <!-- Modal -->
</section>
<jsp:include page="footer.jsp"></jsp:include>
<script>
    var modal = document.getElementById("modal-order");
    // Get the <span> element that closes the modal
    var btnCloseModal = document.getElementById("btn-close-modal");
    // When the user clicks on <span> (x), close the modal
    btnCloseModal.onclick = function() {
        modal.style.display = "none";
    };
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    };

    function openModalOrder() {
        const btn = document.getElementById("btn-modal-order");
        // When the user clicks the button, open the modal
        btn.onclick = function() {
            modal.style.display = "block";
        };
    }
</script>
</body>
</html>
