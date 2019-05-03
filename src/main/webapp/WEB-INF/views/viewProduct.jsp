<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
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
              <br>
              <br>
              <br>


               <h1>جزئیات محصول</h1>
               <p class="lead">در این صفحه میتوان جزئیات محصولات را دید </p>
          </div>
          <div class="container" ng-app="cartApp">
                    <div class="row">
                              <div class="col-lg-8">
                                  <img src="<c:url value="/res/productsImage/${product.productId}.png"/>" alt="image" style="width: 100%" />
                                  
                         </div >
                         <div class="col-lg-4" style="direction: rtl">
                                   <h1>${product.productName}</h1>
                                   <p>${product.productDescription}</p>
                                   <p><strong>سازنده:</strong>${product.productManufacturer}</p>
                                   <p><strong>دسته :</strong>${product.productCategory}</p>
                                   <p><strong>شرایط</strong>${product.productCondition}</p>
                                   <p><strong>ریال</strong>${product.productPrice}</p>

                             <c:set var="role" scope="page"  value="${param.role}" />
                             <c:set var="url" scope="page"  value="/product/productList" />

                             <c:if test="${role='admin'}">
                                 <c:set var="url" scope="page" value="/admin/productInventory"/>
                             </c:if>

                             <p ng-controller="cartCtrl">
                                 <a href="<c:url value="${url}"/>" class="btn btn-default">بازگشت</a>
                                 <a class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')"><span class="glyphicon glyphicon-shopping-cart"></span>اضافه به سبد خرید</a>
                                 <a href="<spring:url value="/cart"/>" class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span>نمایش سبد خرید</a>
                             </p>
                         </div>
               </div>  
             
          </div>


         <script src="<c:url value="/res/js/controller.js"/>"></script>

<%@include file="templete/footer.jsp" %>