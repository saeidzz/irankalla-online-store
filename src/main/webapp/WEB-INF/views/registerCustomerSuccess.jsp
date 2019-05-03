<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="templete/header.jsp" %>


<%--
  Created by IntelliJ IDEA.
  User: saeid
  Date: 15-Sep-17
  Time: 2:34 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>ثبت نام شما با موفقیت انجام شد</h1>
                </div>
            </div>
        </section>
        <section class="container">


               <h2><a href="<spring:url value="product/productList"/>" class="btn btn-default">محصولات</a></h2>

        </section>
    </div>
</div>

<script src="<c:url value="/res/js/controller.js"/>"></script>

<%@include file="templete/footer.jsp" %>