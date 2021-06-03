<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String id = (String) session.getAttribute("id");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="resources/css/rent.css">
<title>Write something else you want</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/
3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous">
	
</script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var st_date = new Date().toISOString().substr(0, 10).replace('T', ' ');
		$('#date').val(st_date);
		$('#reset').click(function() {
			$('#subject').val('');
			$('#content').val('');
		});

		$('#confirm').click(function() {
			if($('#subject').val().length==0||$('#content').val().length==0)
			alert("제목과 내용을 입력하세요");
			else
				$('#frm').submit();
		});
	});
</script>
</head>
<body>
<!-- 	
	<section style="margin-top: 150px" > -->
	<div class="container">
	<form action="gong_write" method="post" id="frm" enctype="multipart/form-data">
		<table class="table table-bordered">
			<thead>
			<caption>글쓰기</caption>
			</thead>
			<tbody>
					<tr>
						<th>작성자:</th>
						<td>
						<c:if test="${id ne 'admin'}">
						<input type="text" name="writer" class="form-control" id="writer" value="${id}" readonly="readonly"/>
						</c:if>
						<c:if test="${id eq 'admin'}">
						<input type="text" name="writer" class="form-control" id="writer" value="JudyAir" readonly="readonly"/>
						</c:if>
						</td>
					</tr>
					<tr>
						<th>제목:</th>
						<td><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control" id='subject'/></td>
						<th>날짜:</th>
						<td><input type="text" name="date" class="form-control" id="date" readonly="readonly"/></td>
					</tr>
					<tr>
						<th>내용:</th>
						<td colspan="4"><textarea cols="10" placeholder="내용을 입력하세요. " name="content" class="form-control" id="content"></textarea></td>
					</tr>
					<tr>
						<td colspan="5"><input type="button" value="등록" class="pull-right" id="confirm"/> 
							<input type="button" value="초기화" class="pull-left" id="reset" /> 
							<input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='gong_list?spage=1'"/></td>
					</tr>

			</tbody>
		</table>
		</form>
		file: <input type="file" name="file">
	</div>
	<%-- </section>
	<%@ include file="/bottom.jsp"%> --%>
</body>
</html>