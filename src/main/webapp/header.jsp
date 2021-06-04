<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String id = (String) session.getAttribute("id");
%>
<script src="resources/js/login.js"></script>
<div class="container">
	<nav class="navbar navbar-expand-lg navbar-light fixed-top">
		<a class="navbar-brand" href="goindex"><img
						class="brand-logo-light"
						src="resources/images/judyair_logo2.png" style="width:50%; padding-top: 5px;"></a>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-lg-auto">
				
				
				<c:if test="${id ne null }">
					<li class="nav-item dropdown" id="login_id">${id }님 안녕하세요!</li>
				</c:if>
				
				<c:if test="${id eq 'admin' }">
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="dropdown01"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admin Page</a>
					<div class="dropdown-menu" aria-labelledby="dropdown01">
						<a class="dropdown-item" href="insert">데이터베이스</a> 
						<a class="dropdown-item" href="cal">매출현황 </a>
					</div></li>
				</c:if>

				<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="dropdown01"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >항공권
						예매</a>
					<div class="dropdown-menu" aria-labelledby="dropdown01">
						<a class="dropdown-item" href="booking">항공권 예매</a>
					</div></li>
				<li class="nav-item"><a class="nav-link" href="mybook?g_id=${id }">나의
						예매</a></li>
				<c:if test="${id ne null }">
					<li class="nav-item"><a class="nav-link" href="#"
						onclick='confirmLogout()'>로그아웃</a></li>
					<li class="nav-item"><a class="nav-link" href="mypage?g_id=${id}">마이페이지</a></li>
				</c:if>
				<c:if test="${id eq null }">
					<li class="nav-item"><a class="nav-link" href="login">로그인</a></li>
					<li class="nav-item"><a class="nav-link" href="register">회원가입</a></li>
				</c:if>

			</ul>
		</div>
	</nav>
</div>
<ul class="sci" style="opacity: 0.7">
	<li><a href="https://github.com/mitteJB"><img src="resources/images/j.png" style="width: 25px; height: 25px;"></a>
	</li>
	<li><a href="https://github.com/Catching-Java"><img src="resources/images/u.png" style="width: 25px; height: 25px;"></a>
	</li>
	<li><a href="https://github.com/pigletmong2"><img src="resources/images/d.png"
													  style="width: 25px; height: 25px;"></a></li>
	<li><a href="https://github.com/movie4568"><img src="resources/images/y.png" style="width: 25px; height: 25px;"></a>
	</li>
</ul>