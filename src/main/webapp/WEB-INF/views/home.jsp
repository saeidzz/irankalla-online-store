<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="templete/header.jsp" %>

<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image" src="<c:url value="/res/images/00.jpg" /> " alt="اسلاید اول"/>
            <div class="container">
                <div class="carousel-caption">
                    <h1>ایران کالا</h1>
                    <p>حامی تولید کنندگان داخلی</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">درجا خرید کنید و در کوتاه ترین زمان
                        تحویل بگیرید.</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image" src="<c:url value="/res/images/01.jpg" />" alt="اسلاید دوم"/>
            <div class="container">
                <div class="carousel-caption">
                    <h1>مطمئن خرید کنید</h1>
                    <p>همه محصولات ما دارای گارانتی بوده و در صورت ناراضی بودن از محصولات میتوانید آنها را پس داده وجه
                        خود را دریافت کنید </p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">اطلاعات بیشتر</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image" src="<c:url value="/res/images/02.jpg" />" alt="اسلاید سوم"/>
            <div class="container">
                <div class="carousel-caption">
                    <h1>حامی تولید داخلی</h1>
                    <p>با خرید از ایران کالا به رونق کسب کار داخلی کمک کنید</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">نمایش محصولات</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">قبلی</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">بعدی</span>
    </a>
</div><!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <img class="img-circle" src="<c:url value="/res/images/1.jpg"/>" width="140" height="140" alt="صنایع دستی"/>

            <h2>صنایع دستی</h2>
            <p>صنایع دستی اغلب کارهای فرهنگی و رسمی هستند چراکه به عنوان بخشی از زندگی روزمره مطرح می باشند</p>
            <p><a class="btn btn-default" href="#" role="button">نمایش محصولات &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="<c:url value="/res/images/2.jpg"/>" alt="Generic placeholder image" width="140"
                 height="140">
            <h2>پوشاک </h2>
            <p>درصورت نارضایتی از پوشاک ایران کالا میتوانید آن را عودت داده و پول خود را باز پس گیرید</p>
            <p><a class="btn btn-default" href="#" role="button">نمایش محصولات &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="<c:url value="/res/images/3.jpg"/>" alt="Generic placeholder image" width="140"
                 height="140">
            <h2>عروسک و عینک</h2>
            <p>تمام محصولات ایران کالا دارای تضمین کیفیت و ضمانت نامه می باشند</p>
            <p><a class="btn btn-default" href="#" role="button">نمایش محصولات &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">وظیفه اول </h2>
            <p class="lead">به عنوان یک ایرانی هرکس وظیفه دارد برای پیشرفت کشور احساس مسولیت کند </p>
        </div>
        <div class="col-md-5">
            <img class="img-circle img-thumbnail" src="<c:url value="/res/images/iran-flag.jpg"/>"
                 alt="Generic placeholder image">
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
            <h2 class="featurette-heading">وظیفه دوم</h2>
            <p class="lead">احساس مسولیت در حوزه پیشرفت اقتصادی خود و کشور عزیرمان</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
            <img class="img-circle img-thumbnail" src="<c:url value="/res/images/6.jpeg"/>"
                 alt="Generic placeholder image">
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">وظیفه سوم</h2>
            <p class="lead">تنها احساس مسولیت کافی نیست بلکه باید با خرید کالای ایرانی به اقتصاد داخلی کمک نموده و باید
                به عنوان یک فرهنگ استفاده از کالای ایرانی را پاس بداریم</p>
        </div>
        <div class="col-md-5">
            <img class="img-circle img-thumbnail" src="<c:url value="/res/images/5.jpg"/>"
                 alt="Generic placeholder image">
        </div>
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

<%@include file="templete/footer.jsp" %>