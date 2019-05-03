<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
            <h1>اضافه نمودن محصول</h1>
            <p class="lead">این صفحه جهت اضافه نمودن محصولات می باشد. </p>
        </div>

     <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post" commandName="product" enctype="multipart/form-data">
        <label for="name">نام محصول:</label> <form:errors path="productName" cssStyle="color: red;"/>
        <div class="form-group">
            <form:input path="productName" id="name" Class="form-controller"/>
        </div>

        <label for="category">دسته:</label>
        <div class="form-group">
            <label class="checkbox-inline">
                <form:radiobutton path="productCategory" id="category" value="صنایع دستی"/>صنایع دستی</label>

            <label class="checkbox-inline">
                <form:radiobutton path="productCategory" id="category" value="پوشاک"/>پوشاک </label>

            <label class="checkbox-inline">
                <form:radiobutton path="productCategory" id="category" value="عروسک و عینک"/>عروسک و عینک</label>

        </div>

        <label for="description">توضیحات :</label>
        <div class="form-group">
                <form:textarea path="productDescription" id="description" Class="form-controller"/>
        </div>


        <label for="price">قیمت محصول :</label><form:errors path="productPrice" cssStyle="color: red;"/>
        <div class="form-group">
            <form:input path="productPrice" id="price" Class="form-controller"/>
        </div>

        <label for="condition">موجودیت:</label>
        <div class="form-group">
            <label class="checkbox-inline">
                <form:radiobutton path="productCondition" id="condition" value="موجود"/>موجود</label>

            <label class="checkbox-inline">
                <form:radiobutton path="productCondition" id="condition" value="ناموجود"/>ناموجود </label>

        </div>


        <label for="status">جزئیات :</label>
        <div class="form-group">
            <form:input path="productStatus" id="status" Class="form-controller"/>
        </div>


        <label for="unitInStatus">وزن :</label><form:errors path="unitInStatus" cssStyle="color: red;"/>
        <div class="form-group">
            <form:input path="unitInStatus" id="unitInStatus" Class="form-controller"/>
        </div>

        <label for="Manufacturer">سازنده :</label>
        <div class="form-group">
            <form:input path="productManufacturer" id="Manufacturer" Class="form-controller" />
        </div>

        <label for="productImage">بارگزاری تصویر محصول :</label>
        <div class="form-group">
            <form:input type="file" path="productImage" id="productImage" Class="form-controller"/>
        </div>

        <br>
        <br>
        <input type="submit" value="ذخیره" class="btn btn-success">
        <a href="<c:url value="/admin/productInventory"/>" class="btn btn-danger" > لغو</a>




        </form:form>





<%@include file="templete/footer.jsp" %>