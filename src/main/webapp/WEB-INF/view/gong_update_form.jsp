<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>게시물 수정 페이지</title>
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
		$('#reset1').click(function() {
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

<%@include file="/bootstrap.jsp"%>
<link rel="stylesheet" type="text/css" href="resources/css/style.css?after">
<body>
	<header>
		<%@ include file="../../header.jsp"%>
	</header>
	<section style="margin-top: 150px" >
	<div class="container">
		<table class="table table-bordered">
			<tbody>
				<form action="gong_update" method="POST" id="frm">
					<tr>
						<th colspan="4" style="background-color: #eeeeee; text-align: center;">게시물 수정</th>
					</tr>
					<tr>
						<th>작성자:</th>
						<td><input type="text" name="writer" class="form-control" id="writer" value="${dto.writer}" readonly="readonly"/></td>
					</tr>
					<tr>
						<th>제목:</th>
						<td><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control" id='subject' value='${dto.title}'/></td>
						<th>날짜:</th>
						<td><input type="text" name="date" class="form-control" id="date" value='${dto.bdate}' readonly="readonly"/></td>
						<input type="hidden" name="num" value=${dto.num}>
						<input type="hidden" name="spage" value=${spage}>
						<input type="hidden" name="sword" value=${sword}>
					</tr>
					<tr>
						<th>내용:</th>
						<td colspan="4"><textarea cols="10" rows="20" placeholder="내용을 입력하세요. " name="content" class="form-control" id="content">${dto.con}</textarea></td>
					</tr>
					<tr>
						<td colspan="4">
						<a id="confirm" href="javascript:void(0);" onclick="function(confirm);">수정하기</a> 
						<a id="reset1" href="javascript:void(0);" onclick="function(reset1);">초기화</a>
						<a id="gotolist1" href="gong_list?spage=${spage}&sword=${sword}">목록으로 이동</a>
						</td>
					</tr>
				</form>
			</tbody>
		</table>
		file: <input type="file" name="file">
	</div>
	</section>
	<%@ include file="/bottom.jsp"%>
	</section>
	<%@ include file="/bottom.jsp"%>
</body>
</html>