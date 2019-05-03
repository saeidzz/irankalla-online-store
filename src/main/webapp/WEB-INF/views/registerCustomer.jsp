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
            <h1>ثبت نام مشتری</h1>
            <p class="lead">لطفا اطلاعات ثبت نام را وارد کنید. </p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post" commandName="customer">

        <h3>اطلاعات پایه ایی</h3>

        <label for="customerName">نام:</label>
        <div class="form-group">
            <form:input path="customerName" id="customerName" Class="form-controller"/>
        </div>

        <label for="email">پست الکترونیکی:</label>
        <div class="form-group">
            <form:input path="customerEmail" id="email" Class="form-controller"/>
        </div>

        <label for="phone">شماره تلفن:</label>
        <div class="form-group">
            <form:input path="customerPhone" id="phone" Class="form-controller"/>
        </div>

        <label for="userName">نام کاربری:</label>
        <div class="form-group">
            <form:input path="username" id="userName" Class="form-controller"/>
        </div>


        <label for="password">رمز عبور:</label>
        <div class="form-group">
            <form:password path="password" id="password" Class="form-controller"/>
        </div>

        <h3>اطلاعات صورتحساب</h3>

        <label for="billingStreet">خیابان :</label>
        <div class="form-group">
            <form:input path="billingAddress.streetName" id="billingStreet" Class="form-controller"/>
        </div>

        <label for="billingApartmentNumber">پلاک:</label>
        <div class="form-group">
            <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" Class="form-controller"/>
        </div>

        <label for="billingCity">شهر:</label>
        <div class="form-group">
            <form:input path="billingAddress.city" id="billingCity" Class="form-controller"/>
        </div>


        <label for="billingState">استان:</label>
        <div class="form-group">
            <form:input path="billingAddress.state" id="billingState" Class="form-controller"/>
        </div>


        <label for="billingCountry">کشور:</label>
        <div class="form-group">
            <form:input path="billingAddress.country" id="billingCountry" Class="form-controller"/>
        </div>


        <label for="billingZip">کد پستی:</label>
        <div class="form-group">
            <form:input path="billingAddress.zipCode" id="billingZip" Class="form-controller"/>
        </div>

        <h3>اطلاعات حمل و نقل</h3>


        <label for="shippingStreet">خیابان :</label>
        <div class="form-group">
            <form:input path="shippingAddress.streetName" id="shippingStreet" Class="form-controller"/>
        </div>


        <label for="shippingApartmentNumber">پلاک:</label>
        <div class="form-group">
            <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" Class="form-controller"/>
        </div>

        <label for="shippingCity">شهر:</label>
        <div class="form-group">
            <form:input path="shippingAddress.city" id="shippingCity" Class="form-controller"/>
        </div>


        <label for="shippingState">استان:</label>
        <div class="form-group">
            <form:input path="shippingAddress.state" id="shippingState" Class="form-controller"/>
        </div>


        <label for="shippingCountry">کشور:</label>
        <div class="form-group">
            <form:input path="shippingAddress.country" id="shippingCountry" Class="form-controller"/>
        </div>


        <label for="shippingZip">کد پستی:</label>
        <div class="form-group">
            <form:input path="shippingAddress.zipCode" id="shippingZip" Class="form-controller"/>
        </div>


        <br>
        <br>
        <input type="submit" value="ذخیره" class="btn btn-success">
        <a href="<c:url value="/"/>" class="btn btn-danger"> لغو</a>


        </form:form>


<%@include file="templete/footer.jsp" %>