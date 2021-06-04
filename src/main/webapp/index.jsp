<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <%@include file="/bootstrap.jsp" %>

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <style>
        .swiper_1 {
            width: 1170px;
            margin: 0 auto 20px;
        }

        .swiper_2 {
            width: 1280px;
            height: 424px;
            margin-top: 50px;
            margin-right: auto;
            margin-bottom: 250px;
            margin-left: auto;

        }

        .swiper_3 {
            width: 1170px;
            height: 424px;
        }

    </style>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script>
        $(function () {
            var swiper = new Swiper('.swiper_1', {
                slidesPerView: 3,
                spaceBetween: 18,
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },
                autoplay: {
                    delay: 3000,
                },
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                }
            });

            var swiper = new Swiper('.swiper_2', {
                loop: true,
                loopFillGroupWithBlank: true,
                observer: true,
                observeParents: true,


                pagination: {
                    el: '.swiper-pagination',
                    type: 'progressbar',
                },
                autoplay: {
                    delay: 3000,
                },
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                }
            });

            var swiper = new Swiper('.swiper_3', {
                direction: 'vertical',
                slidesPerView: 1,
                spaceBetween: 30,
                mousewheel: true,
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },
                autoplay: {
                    delay: 3000,
                }
            });
        });
    </script>


    <link rel="stylesheet" type="text/css" href="resources/css/style.css">
    <title>BOM AIR :: Best Of Most Airline & Rent Car</title>
</head>
<body>

<!-- 상단 네비게이션 메뉴바 -->
<header>
    <%@include file="./header.jsp" %>
</header>

<!-- 배경화면 슬라이드 -->

<div id="carouselExampleIndicators" class="carousel slide"
     data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="resources/images/airplane_.gif" class="d-block w-100" alt="...">
        </div>
    </div>
    <div class="modal" id="myModal" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-body">
                    성인: <input type="button" id="decAd" value="▽"><span
                        id="numberUpDown1">1</span><input type="button" id="incAd"
                                                          value="△"><br> <br>소아: <input type="button"
                                                                                        id="decCh" value="▽"><span
                        id="numberUpDown2">0</span><input
                        id="incCh" type="button" value="△"><br> <br>유아:
                    <input type="button" id="decBa" value="▽"><span
                        id="numberUpDown3">0</span><input id="incBa" type="button"
                                                          value="△"><br>
                    <hr>
                    <b>소아</b> : 국내선 만 2세~만12세<Br> 국제선 만 2세~만11세<br> <b>유아</b>
                    : 만2세 미만<br>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn" id="inwonOk">확인</button>
                    <button type="button" class="btn" data-dismiss="modal"
                            id="inwonClose">닫기
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="gonggi2">
    <div class="row" style="width: 1000px">
        <div class="col-md-6">
            <h2>
                <a href="gong_list?spage=1">공지사항</a>
            </h2>
            <ul class="timeline" id="gonggi_content">

            </ul>
        </div>
    </div>
</div>

<div id="accorDiv">
    <div class="accordian">
        <ul>
            <li>
                <div class="image_title"></div>
                <a href="#"> <img
                        src="resources/images/polynesia.jpg">
                </a>
            </li>
            <li>
                <div class="image_title"></div>
                <a href="#"> <img
                        src="resources/images/house.jpg">
                </a>
            </li>
            <li>
                <div class="image_title"></div>
                <a href="#"> <img
                        src="resources/images/joshua-earle.jpg">
                </a>
            </li>
            <li>
                <div class="image_title"></div>
                <a href="#"> <img
                        src="resources/images/dino-reichmuth.jpg">
                </a>
            </li>
            <li>
                <div class="image_title"></div>
                <a href="#"> <img
                        src="resources/images/beach-6292382_640.jpg">
                </a>
            </li>
        </ul>
    </div>
</div>


<!-- 빠른예약 창 -->
<div class="imsi-container">
    <div class="row text-center">
        <div class="col-xl-12">
            <div class="pricing-table">
                <div class="panel panel-primary" style="border: none;">
                    <!-- 빠른예약 창(항공권)-->
                    <table class="table" id="reservation-table" style="width: 1280px; ">
                        <tr>
                            <td style="width: 50%; text-align: left;">
                                <input type="radio" name="flightWay" value="round" checked="checked"/>왕복
                                <input type="radio" name="flightWay" value="one_way"/>편도
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 50%; text-align: left;">
                                <select
                                        id="Depart" style="width: 100%; margin: 10px;">
                                    <option>출발지 선택</option>
                                    <option value="inc" style="width: 100%">인천(INC)</option>
                                </select></td>
                            <td style="width: 50%; text-align: left;">
                                <select
                                        id="Arrive" style="width: 100%; margin: 10px;">
                                    <option>도착지 선택</option>
                                    <optgroup label="국내">
                                        <option value="CJU" style="width: 100%">제주(CJU)</option>
                                    </optgroup>
                                    <optgroup label="일본">
                                        <option value="NPT" style="width: 100%">도쿄(NPT)</option>
                                        <option value="KIX" style="width: 100%">오사카(KIX)</option>
                                        <option value="FUK" style="width: 100%">후쿠오카(FUK)</option>
                                    </optgroup>
                                    <optgroup label="동남아">
                                        <option value="HKG" style="width: 100%">홍콩(HKG)</option>
                                        <option value="BKK" style="width: 100%">방콕(BKK)</option>
                                        <option value="BKI" style="width: 100%">코타키나발루(BKI)</option>
                                    </optgroup>
                                    <optgroup label="그외 지역">
                                        <option value="WO" style="width: 100%">블라디보스토크(WO)</option>
                                        <option value="JFK" style="width: 100%">뉴욕(JFK)</option>
                                    </optgroup>
                                </select></td>
                            <td colspan="2"><input type="text" id="people"
                                                   name="people" placeholder="인원수"
                                                   style="/* width: 30% */ margin: 10px;"
                                                   data-toggle="modal" data-target="#myModal" readonly="readonly"></td>
                            </td>
                        </tr>
                        <tr>
                            <td id="goDate" style="width: 50%"><input type="text"
                                                                      class="testDatepicker" id="GoDateChoose"
                                                                      style="width: 100%; margin: 10px;"
                                                                      placeholder="출발 날짜 선택"></td>
                            <td id="backDate" style="width: 50%"><input type="text"
                                                                        class="testDatepicker" id="BackDateChoose"
                                                                        style="width: 100%; margin: 10px;"
                                                                        placeholder="복귀 날짜 선택"></td>
                            <td id="searchHang">
                                <a href="#" class="btn btn-primary btn-sm"
                                   style="align:right; font-size: 1.5rem;  padding: .375rem 1.5rem; margin:10px;  /* margin-right: -10rem; */ width: -webkit-fill-available;"
                                   id="reservationsubmit">항공권 검색
                                </a></td>
                            </td>
                        </tr>
                    </table>
                </div>
                </tr>
            </div>
        </div>
    </div>
</div>

<%--영화1--%>
<div class="promotionD">
    <div class="inner">
        <div class="textMotionD">
            <div class="motionTit textD">
                <p>주디에어가 추천드리는 <br/>다양한 여행지를<span></span> 확인하세요</p>
            </div>
            <p class="line" style="left: 590px; width: 690px;"></p>
            <a href="#" class="viewMore"><img src="resources/images/viewMore.png" alt="" style=""/></a>
        </div>
        <div class="topD">
            <div class="visualD" style="opacity: 1; top: 0px;">
                <div class="list" style="display: block;"><a href="#">
                    <img src="resources/images/main_f_recommend_bangkok.jpg" alt=""></a></div>

                <div class="list" style="display: block;"><a href="#">
                    <img src="resources/images/main_f_recommend_cebu.jpg" alt=""></a></div>

                <div class="list" style="display: block;"><a href="#">
                    <img src="resources/images/main_f_recommend_jeju2.jpg" alt=""></a></div>

                <div class="list" style="display: block;"><a href="#">
                    <img src="resources/images/main_f_recommend_paris.jpg" alt=""></a></div>
            </div>
            <div class="tabs"></div>
        </div>
    </div>
</div>

<%--영화2--%>
<div class="promotionD">
    <div class="inner">
        <div class="textMotionD">
            <div class="motionTit textD">
                <p>여행을 위한 가장 올바른 선택<br/><span>주디에어가 </span>함께합니다 </p>
            </div>
            <p class="line" style="left: 590px; width: 690px;"></p>

        </div>
    </div>

    <div class="swiper-container swiper_2">
        <div class="swiper-wrapper">
            <a href="#" class="swiper-slide">
                <img src="resources/images/judyair_banner-1.jpg" alt="슬라이드이미지" style="width: 1280px;"></a>

            <a href="#" class="swiper-slide">
                <img src="resources/images/judyair_banner-2.jpg" alt="슬라이드이미지" style="width: 1280px;"></a>

            <a href="#" class="swiper-slide">
                <img src="resources/images/judyair_banner-3.jpg" alt="슬라이드이미지" style="width: 1280px;"></a>
        </div>
        <div class="swiper-pagination"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>

    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top"
       role="button" data-toggle="tooltip" data-placement="left"><span
            class="glyphicon glyphicon-chevron-up"></span></a>
    <%@include file="./bottom.jsp" %>

    <form action="airinfo" method="post" id="O_frm">
        <input type="hidden" name="l_code">
        <input type="hidden" name="o_sdate">
        <input type="hidden" name="people">
    </form>

    <form action="airinfo_R" method="post" id="R_frm">
        <input type="hidden" name="l_code">
        <input type="hidden" name="o_sdate">
        <input type="hidden" name="o_sdate_R">
        <input type="hidden" name="people">
    </form>

    <form action="rent" id="frm" method="post">
        <input type="hidden" name="aa" id="aa">
        <input type="hidden" name="bb" id="bb">
        <input type="hidden" name="cc" id="cc">
    </form>

</body>
</html>
