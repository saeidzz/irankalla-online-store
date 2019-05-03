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
            <h1>ویرایش محصولات</h1>
            <p class="lead">این صفحه جهت ویرایش نمودن محصولات می باشد. </p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post" commandName="product" enctype="multipart/form-data">
        <form:hidden path="productId" value="${product.productId}"/>

        <label for="name">نام محصول:</label>
        <div class="form-group">
            <form:input path="productName" id="name" value="${product.productName}" Class="form-controller" />
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

        <label for="description">توضیحات :</label>http://r1---sn-ab5szn7y.googlevideo.com/videoplayback?sparams=dur,ei,expire,id,initcwndbps,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pcm2cms,pl,ratebypass,source&key=cms1&itag=18&lmt=1390135952894058&ratebypass=yes&source=youtube&dur=920.276&mime=video%2Fmp4&ip=181.189.235.11&ei=WfIBWuyxLMbsqwWq2Z-4AQ&pl=23&id=o-APUSyEcyjRdfaPDobWgQTQQiNWQgrhj5sMY0yDgEmSQB&signature=28A8E8B513473D7B68D7CDE32A7842B31961BE63.0F513E39988651A59C7DA057EFAD87463827574C&ipbits=0&expire=1510098617&title=%D8%A7%D8%B3%D8%AA%D8%B9%D8%AF%D8%A7%D8%AF%E2%80%8C%D9%87%D8%A7%DB%8C+%D8%AA%D8%B1%DA%A9%DB%8C%D9%87-+%D8%B9%D8%A7%D8%B1%D9%81+%D8%BA%D9%81%D9%88%D8%B1%DB%8C-+%D9%81%DB%8C%D9%86%D8%A7%D9%84&rm=sn-joio-n52e7e,sn-hp5de7e&fexp=23702512&req_id=999be80dc3a5a3ee&redirect_counter=2&cms_redirect=yes&ipbypass=yes&mip=107.182.230.17&mm=29&mn=sn-ab5szn7y&ms=rdu&mt=1510076957&mv=m
        <div class="form-group">
            <form:textarea path="productDescription" id="description" value="${product.productDescription}" Class="form-controller"/>
        </div>


        <label for="price">قیمت محصول :</label>
        <div class="form-group">
            <form:input path="productPrice" id="price" Class="form-controller" value="${product.productPrice}"/>
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
            <form:input path="productStatus" id="status" Class="form-controller" value="${product.productStatus}"/>
        </div>


        <label for="unitInStatus">وزن :</label>
        <div class="form-group">
            <form:input path="unitInStatus" id="unitInStatus" Class="form-controller" value="${product.unitInStatus}"/>
        </div>

        <label for="Manufacturer">سازنده :</label>
        <div class="form-group">
            <form:input path="productManufacturer" id="Manufacturer" Class="form-controller" value="${product.productManufacturer}"/>
        </div>


        <label for="productImage">بارگزاری تصویر محصول :</label>
        <div class="form-group">
            <form:input type="file" path="productImage" id="productImage" Class="form-controller" />
        </div>

        <br>
        <br>
        <input type="submit" value="ذخیره" class="btn btn-success">
        <a href="<c:url value="/admin/productInventory"/>" class="btn btn-danger" > لغو</a>







        </form:form>





<%@include file="templete/footer.jsp" %>