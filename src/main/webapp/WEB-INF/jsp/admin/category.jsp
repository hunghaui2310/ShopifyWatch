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
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <%--    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

    <%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">--%>
    <title>Home - F1Shop</title>
</head>
<body>
<div id="wrapper">
    <!-- Sidebar -->
    <jsp:include page="admin-sidebar.jsp"></jsp:include>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">
        <div class="container-fluid p-4">
            <h3>Quản lý thể loại</h3>
            <div>
                <div class="d-flex justify-content-end">
                    <a type="button" class="btn btn-primary" href="/admin/category/new">Thêm mới</a>
                </div>
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">STT</th>
                        <th scope="col">Tên</th>
                        <th scope="col">Hành động</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${categories}" var="category" varStatus="loop">
                    <tr>
                        <th scope="row">${loop.index}</th>
                        <td>${category.name}</td>
                        <td>
                            <div class="d-flex">
                                <a class="btn" title="Sửa" href="/admin/category/update/${category.id}"><i class="fas fa-edit"></i></a>
                                <button class="btn" title="Xóa" id="modal_category_${category.id}" onclick="openModalDelete(${category.id})"><i class="fas fa-trash"></i></button>
                            </div>
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="modalCategory" class="modal">

            <!-- Modal content -->
            <div class="modal-content w-60">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Xác thực xóa</h5>
                    <button type="button" id="btn-close-c" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Bạn có chắc chắn muốn xóa thể loại này không?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" id="btn-close-c2" data-bs-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-primary" onclick="deleteCategory()">Xóa</button>
                </div>
            </div>

        </div>
    </div>
    <!-- /#page-content-wrapper -->
</div>
<script>
    const base_url = window.location.origin;
    var modal = document.getElementById("modalCategory");
    var btnClose = document.getElementById("btn-close-c");
    var btnClose2 = document.getElementById("btn-close-c2");
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
    var idCategory;
    function openModalDelete(id) {
        idCategory = id;
        // Get the button that opens the modal
        const btn = document.getElementById("modal_category_" + id);
        // When the user clicks the button, open the modal
        btn.onclick = function() {
            modal.style.display = "block";
        };
    }

    function deleteCategory() {
        if (!idCategory) { return; }
        $.ajax({
            type: "DELETE",
            url: base_url + '/admin/category/' + idCategory,
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
