<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Log in with your account</title>

<%--      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">--%>
<%--      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">--%>
  </head>

  <body>
  <jsp:include page="header.jsp"></jsp:include>
    <div class="container pt-20 pb-10">
      <form method="POST" action="${contextPath}/login" class="form-signin">
        <h2 class="form-heading">Đăng nhập</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Tên đăng nhập"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Mật khẩu"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary" type="submit">Đăng nhập</button>
            <h4 class="text-center pt-4"><a href="${contextPath}/registration">Tạo tài khoản</a></h4>
        </div>
      </form>
    </div>
  <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
