<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Judy Air : Show Checkin Info</title>
    <!-- 직접 정의한 CSS -->
    <link rel="stylesheet" href="resources/css/showCheckinInfo.css?after">
</head>
<body>

<div class="container">
    <h1>체크인 완료!</h1>
    <hr class="hrCss">
    <br>
    <div class="dispArea basicFont">
        <br><br>
        <table>
            <tr>
                <th>출발날짜</th>
                <th>항공편명</th>
                <th>좌석번호</th>
                <th>탑승자명</th>
                <th>여권번호</th>
            </tr>
            <c:forEach var="c" items="${cList}">
                <tr>
                    <td>${c.departDate }</td>
                    <td>${c.TABLE_NAME }</td>
                    <td>${c.s_no }</td>
                    <td>${c.b_name }</td>
                    <td>${c.b_pp }</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <br><br><br>
    <a href="index.jsp" class="font_NotoSerif">돌아가기</a>
</div>
</body>
</html>