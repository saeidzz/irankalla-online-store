<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: saeid
  Date: 21/07/2017
  Time: 08:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!DOCTYPE html>
<html lang="fa">
<head>
     <link rel="icon" type="image/x-icon"
           href="<s:url value="/res/images/logo-1.ico"/>"/>
     <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
     <meta name="description" content="">
     <meta name="author" content="">
     <!-- <link rel="icon" href="../../favicon.ico"> -->

     <title>ایران کالا</title>

     <!-- Bootstrap core CSS -->
     <link href="<c:url value="/res/css/bootstrap.min.css"/>" rel="stylesheet">
     <!-- Custom styles for this template -->
     <link href="<c:url value="/res/css/carousel.css"/>" rel="stylesheet">
</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper">
     <div class="container">

          <nav class="navbar navbar-inverse navbar-static-top">
               <div class="container">
                    <div class="navbar-header">
                         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                                 aria-expanded="false" aria-controls="navbar">
                              <span class="sr-only">منو</span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                         </button>
                         <a class="navbar-brand" href="#">ایران کالا</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                         <ul class="nav navbar-nav">
                              <li class="active"><a href="<c:url value="/"/>">خانه</a></li>
                              <li><a href="<c:url value="/product/productList"/>">لیست محصولات</a></li>
                              <li><a href="#contact">تماس با ما</a></li>
                              <li class="dropdown">
                                   <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                      aria-haspopup="true" aria-expanded="false">منو <span class="caret"></span></a>
                                   <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li class="dropdown-header">Nav header</li>
                                        <li><a href="#">Separated link</a></li>
                                        <li><a href="#">One more separated link</a></li>
                                   </ul>
                              </li>
                         </ul>
                         <ul class="nav navbar-nav pull-right">
                              <c:if test="${pageContext.request.userPrincipal.name != null}">
                                   <li><a>${pageContext.request.userPrincipal.name}</a></li>
                                   <li><a href="<c:url value="/j_spring_security_logout"/>">خروج</a></li>
                                   <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                        <li><a href="<c:url value="/customer/cart"/>">سبد خرید</a></li>
                                   </c:if>
                                   <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                                        <li><a href="<c:url value="/admin/"/>">صفحه مدیریت</a></li>

                                   </c:if>

                              </c:if>
                              <c:if test="${pageContext.request.userPrincipal.name == null}">
                                   <li>
                                        <a href="<c:url value="/login/"/>">ورود</a>
                                   </li>

                                   <li>
                                        <a href="<c:url value="/register"/>"> ثبت نام </a>
                                   </li>
                              </c:if>
                         </ul>
                    </div>
               </div>
          </nav>

     </div>
</div>
