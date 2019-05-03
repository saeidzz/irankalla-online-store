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
<div class="container-wrapper" >
    <div class="container">
        <div class="page-header" style="direction: rtl">
            <h1>مدیریت محصولات</h1>


            <p class="lead">صفحه مدیریت محصولات </p>
        </div>

        <table class="table table-hover" >
            <tr class="bg-success">
                <th>تصویر محصول</th>
                <th>نام محصول</th>
                <th>دسته</th>
                <th>شرایط</th>
                <th>قیمت (تومان)</th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td ><img src="<c:url value="/res/productsImage/${product.productId}.png"/>" alt="image" style="width: 100%" /></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice}</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}"/>"><span class="glyphicon glyphicon-eye-open"></span></a></td>
                   <td> <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}"/>"><span class="glyphicon glyphicon-remove"></span></a></td>
                    <td> <a href="<spring:url value="/admin/product/editProduct/${product.productId}"/>"><span class="glyphicon glyphicon-pencil"></span></a></td>

                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/product/addProduct"/>" class="btn btn-primary">اضافه کردن محصول جدید</a>

<%@include file="templete/footer.jsp" %>