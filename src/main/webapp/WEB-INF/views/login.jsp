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
        <div id="login-box">
        <h2>ورود به ایران کالا</h2>


            <c:if test="${not empty msg}">
                <div class="msg">
                    ${msg}
                </div>
            </c:if>

         <form name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post">

             <c:if test="${not empty error}">
                 <div class="error" style="color: red">
                         ${error}
                 </div>
             </c:if>

             <div class="form-group ">
                 <label for="username">نام کاربری</label>
                 <input type="text" id="username" name="username" class="form-control"/>
             </div>

             <div class="form-group ">
                 <label for="password">رمز عبور</label>
                 <input type="password" id="password" name="password" class="form-control"/>
             </div>

             <input type="submit" value="ورود" class="btn btn-default">
             <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">

         </form>
        </div>
    </div>
<%@include file="templete/footer.jsp" %>