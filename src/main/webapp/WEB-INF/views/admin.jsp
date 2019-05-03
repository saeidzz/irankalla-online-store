<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@include file="templete/header.jsp" %>

<%--
  User: saeid
  Date: 21/07/2017
  Time: 08:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container-wrapper">
    <div class="container" style="direction: rtl">
        <div class="page-header">
            <h1>صفحه مدیریت  </h1>

            <p class="lead">این صفحه جهت مدیریت می باشد.</p>
        </div>
        <c:if test="${pageContext.request.userPrincipal.name !=null}">
        <h2>
        ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout"/>">خروج</a>
        </h2>
        </c:if>

        <h3>مدیریت محصولات</h3>
        <p>مدیریت ،تغییر ، حذف و اضافه نمودن محصولات </p>
        <a href="<c:url value="/admin/productInventory"/>">ورود به صفحه مدیریت محصولات</a>




<%@include file="templete/footer.jsp" %>