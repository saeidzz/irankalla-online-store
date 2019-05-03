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
                    <h1>سبد خرید</h1>
                    <p>محصولات انتخابی شما در سبد خرید می باشد.</p>
                </div>
            </div>
        </section>
        <section class="container" ng-app="cartApp">
            <div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
            <div>
               <a class="btn btn-danger pull-left" ng-click="clearCart()">
                   <span class="glyphicon glyphicon-remove-sign"></span>خالی کردن سبد</a>
           </div>
            <table class="table table-hover">
                <tr>
                    <th>محصول</th>
                    <th>قیمت واحد</th>
                    <th>واحد</th>
                    <th>قیمت</th>
                    <th>عملیات</th>
                </tr>
                <tr ng-repeat="it in cart.items">
                    <td>{{it.product.productName}}</td>
                    <td>{{it.product.productPrice}}</td>
                    <td>{{it.quantity}}</td>
                    <td>{{it.totalPrice}}</td>
                    <td><a href="#" class="label label-danger" ng-click="removeFromCart(it.product.productId)">
                        <span class="glyphicon glyphicon-remove"></span>حذف
                    </a></td>
                </tr>

                <tr>
                    <th></th>
                    <th></th>
                    <th>قیمت کل محصولات</th>
                    <th>{{calGrandTotal()}}</th>
                    <th></th>
                </tr>
            </table>
            <a href="<spring:url value="/productList"/>" class="btn btn-default">ادامه خرید</a>
         </div>
        </section>
    </div>
</div>

<script src="<c:url value="/res/js/controller.js"/>"></script>

<%@include file="templete/footer.jsp" %>