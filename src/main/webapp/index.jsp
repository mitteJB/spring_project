<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<!-- Bootstrap -->
<%@include file="/bootstrap.jsp"%>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<link rel="stylesheet" type="text/css" href = "resources/css/main.170f3c02.css">

<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
 -->
<!-- <link rel="stylesheet" href="resources/css/tht.css"> -->
<title>BOM AIR :: Best Of Most Airline & Rent Car</title>
</head>
<body>

	<!-- 상단 네비게이션 메뉴바 -->
	<header>
		<%@include file="./header.jsp"%>
	</header>
	
	<!-- 배경화면 슬라이드 -->

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<!-- <ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol> -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="resources/images/bg1.jpg" class="d-block w-100" alt="...">
				<%-- <img src="${pageContext.request.contextPath}/resources/images/bg1.jpg" class="d-block w-100" alt="..."> --%>
				<!-- <iframe src="https://www.youtube.com/embed/pRq2jWK7rPI?autoplay=1&mute=1 " 
				width="100%" height="670" frameborder="0" allow="autoplay"></iframe> -->
				
				<!-- <img alt="..." src="resources/images/beach.gif" class="d-block w-100"> --> <!-- 배경 이미지 gif 배경 -->
				
			</div>
			<!-- <div class="carousel-item">
				<img src="resources/images/bg2.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="resources/images/bg3.jpg" class="d-block w-100" alt="...">
			</div> -->
		</div>
		<div class="modal" id="myModal" tabindex="-1" role="dialog">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-body">
						성인: <input type="button" id="decAd" value="▽"><span
							id="numberUpDown1">1</span><input type="button" id="incAd"
							value="△"><br> <br>소아: <input type="button"
							id="decCh" value="▽"><span id="numberUpDown2">0</span><input
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
							id="inwonClose">닫기</button>
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
					<div class="image_title"></div> <a href="#"> <img
						src="resources/images/bg1.jpg">
				</a>
				</li>
				<li>
					<div class="image_title"></div> <a href="#"> <img
						src="resources/images/bg2.jpg">
				</a>
				</li>
				<li>
					<div class="image_title"></div> <a href="#"> <img
						src="resources/images/bg3.jpg">
				</a>
				</li>
				<li>
					<div class="image_title"></div> <a href="#"> <img
						src="resources/images/bg1.jpg">
				</a>
				</li>
				<li>
					<div class="image_title"></div> <a href="#"> <img
						src="resources/images/bg2.jpg">
				</a>
				</li>
			</ul>
		</div>
	</div>
	
	<div class="inner">
		<div class="textMotionD on">
			<div class="motionTit textD">
				<p>즐거운 여행을 위한<br/><span>댜양한 프로모션</span>을 확인하세요
			</div>
		</div>
	
	</div>
	
	
<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
  <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
  <label class="btn btn-outline-primary" for="btnradio1">왕복</label>

  <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
  <label class="btn btn-outline-primary" for="btnradio2">편도</label>

  
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
									<!-- <td style="width: 50%"><input type="button" value="항공권"
										name="reservation" style="width: 100%"></td> -->
									
										
									<td style="width: 50%; text-align: left;" >
									
									<input type="radio" name="flightWay" value="round" checked="checked"/>왕복
									<input type="radio" name="flightWay" value="one_way" />편도</td>
									
									
									
									
									
								
								</tr>
								<tr>
							
									<td style="width: 50%; text-align: left;" >
									
									<select
										id="Depart" style="width: 100%; margin: 5px;" >
											<option>출발지 선택</option>
											<option value="inc" style="width: 100%">인천(INC)</option>
											
									</select></td>
									
									
									
								
									<td style="width: 50%; text-align: left;" >
									<select
										id="Arrive" style="width: 100%; margin: 5px;" >
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
										name="people" placeholder="인원수" style="/* width: 30% */ margin: 5px;"
										data-toggle="modal" data-target="#myModal" readonly="readonly"></td>
									</td>
									
									</tr>
								<tr>	
								
								<!-- <tr id="ReservationDateTr" style="width: 50%"> -->
								
									<td id="goDate" style="width: 50%"><input type="text"
										class="testDatepicker" id="GoDateChoose" style="width: 100%; margin: 5px;"
										placeholder="출발 날짜 선택"></td>
									<td id="backDate" style="width: 50%"><input type="text"
										class="testDatepicker" id="BackDateChoose" style="width: 100%; margin: 5px;"
										placeholder="복귀 날짜 선택"></td>
									<td id ="searchHang">
										<a href="#" class="btn btn-primary btn-sm" style="align:right; font-size: 1.5rem;  padding: .375rem 1.5rem; margin:5px;  /* margin-right: -10rem; */ width: -webkit-fill-available;" 
								id="reservationsubmit">항공권 검색<!-- <img src="resources/images/tripPlanArea_icon.jpg"> --></a></td>
									<!-- <td colspan="2"><input type="text" id="people"
										name="people" placeholder="인원수" style="/* width: 30% */"
										data-toggle="modal" data-target="#myModal" readonly="readonly"></td>
									</td> -->
										
								</tr>
								
								
								
							</table>
							<!-- <td id ="searchHang">
										<a href="#" class="btn btn-primary" style="align:right; font-size: 2.3rem;  padding: .375rem 1.5rem; margin-bottom: .75rem;  margin-right: -112rem;" 
								id="reservationsubmit">항공권 검색<img src="resources/images/tripPlanArea_icon.jpg"></a></td> -->




							
						</div>
						
						
						<!-- <div class="panel-footer panel-footer-landing" id="searchHang">
							<a href="#" class="btn btn-price btn-success btn-lg"
								id="reservationsubmit" >일정으로 조회</a>
						</div>
						<div class="panel-footer panel-footer-landing" id="searchRent"
							style="display: none;">
							<a href="#" class="btn btn-price btn-success btn-lg" id="rentsubmit">일정으로 조회</a>
						</div> -->
						</tr>
					</div>
				</div>
			</div>
		</div>
		
		
		

	
	
	
	
		
	


	<ul class="sci" style="opacity: 0.5">
		<li><a href="https://blog.naver.com/mint3081"><img
				src="resources/images/facebook.png"></a></li>
		<li><a href="#"><img src="resources/images/twitter.png"></a></li>
		<li><a href="#"><img src="resources/images/instagram.png"></a></li>
	</ul>


	<a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top"
		role="button" data-toggle="tooltip" data-placement="left"><span
		class="glyphicon glyphicon-chevron-up"></span></a>
	<%@include file="./bottom.jsp"%>

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
