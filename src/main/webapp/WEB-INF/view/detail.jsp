<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>bomair 예매내역 상세보기</title>
    <link rel="stylesheet" type="text/css" href="resources/css/style.css?after">
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js"></script>
    <link rel="stylesheet" href="resources/css/detail.css?after">
    <script type="text/javascript">
        function functview(t_no, s_no) {

            if (s_no === '' || s_no === null) {
                alert("체크인 후 이용 가능합니다");
            } else {

                $('input[name=t_no]').attr('value', t_no);
                var o_sdate = t_no.substring(1, 5) + "-" + t_no.substring(5, 7) + "-" + t_no.substring(7, 9);
                $('input[name=o_sdate]').attr('value', o_sdate);
                $('#tview').submit();
            }
        }

		function funcdetail(t_no) {
			$('input[name=t_no]').attr('value', t_no);
			var o_sdate = t_no.substring(1, 5) + "-" + t_no.substring(5, 7) + "-" + t_no.substring(7, 9);
			// alert(o_sdate);
			$('input[name=o_sdate]').attr('value', o_sdate);
			$('#detail').submit();
		}

		function pagePrintPreview() {
            var browser = navigator.userAgent.toLowerCase();
                window.print();
        }

        function airinfo() {
            location.href = "airinfo";
        }

    </script>

</head>
<body class="basicFont container">
<%--<div class="logo"><a href="index.jsp"><img src="resources/images/bomair_logo.png" alt=""/></a></div>--%>
<%--<div class="logo"><a href="index.jsp"><img src="resources/images/judyair_logo.png" alt=""/></a></div>--%>
<div class="logo"><a href="index.jsp"><img src="resources/images/bg1.png" alt=""/></a></div>
<h1>예약번호 : ${dto.t_no }</h1>
<br>
<input type="button" class="btn btn-primary nextBtn btn-lg btn2 btn2-lg" value="나의예매" onclick="history.back(-1)">&nbsp;

<hr class="hrCss">
<br>
<table>
    <tr>
        <th align="center" colspan="2">상세 예약정보</th>
    </tr>
    <tr>
        <td align="center">예매자</td>
        <td align="center">${dto.g_id }</td>
    </tr>
    <tr>
        <td align="center">인원 수</td>
        <td align="center">
            ${fn:substring(dto.t_no ,11,12)} 명

        </td>
    </tr>
    <c:if test="${fn:substring(dto.t_no ,0,1) eq 'D'}">
        <tr>
            <td align="center">출발지</td>
            <td align="center">인천(ICN)</td>
        </tr>
        <tr>
            <td align="center">도착지</td>
            <td align="center">
                <c:choose>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '1'}">제주(CJU)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '2'}">도쿄(NPT)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '3'}">오사카(KIX)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '4'}">후쿠오카(FUK)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '5'}">홍콩(HKG)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '6'}">방콕(BKK)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '7'}">코타키나발루(BKI)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '8'}">블라디보스토크(WO)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '9'}">뉴욕(JFK)</c:when>
                </c:choose>
            </td>
        </tr>
    </c:if>

    <c:if test="${fn:substring(dto.t_no ,0,1) eq 'R'}">
        <tr>
            <td align="center">출발지</td>
            <td align="center">
                <c:choose>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '1'}">제주(CJU)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '2'}">도쿄(NPT)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '3'}">오사카(KIX)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '4'}">후쿠오카(FUK)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '5'}">홍콩(HKG)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '6'}">방콕(BKK)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '7'}">코타키나발루(BKI)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '8'}">블라디보스토크(WO)</c:when>
                    <c:when test="${fn:substring(dto.air_name,2,3) eq '9'}">뉴욕(JFK)</c:when>
                </c:choose>
            </td>
        </tr>
        <tr>
            <td align="center">도착지</td>
            <td align="center">인천(ICN)</td>
        </tr>
    </c:if>


    <tr>
        <td align="center">출발날짜</td>
        <td align="center">${fn:substring(dto.t_no ,1,5)}-${fn:substring(dto.t_no ,5,7)}-${fn:substring(dto.t_no ,7,9)}</td>
    </tr>
    <tr>
        <td align="center">출발시간</td>
        <td align="center">${dto.o_stime }</td>
    </tr>
    <tr>
        <td align="center">소요시간</td>
        <td align="center">
            <fmt:parseNumber var="soyo_hh" value="${dto.o_soyo / 60}" integerOnly="true"/>
            <c:set var="soyo_time" value="${soyo_hh }시간 ${dto.o_soyo % 60}분"></c:set>
            ${soyo_time }
        </td>
    </tr>
    <tr>
        <td align="center">편명</td>
        <td align="center">${dto.air_name }</td>
    </tr>
    <tr>
        <td align="center">예약한 날짜</td>
        <td align="center">${dto.ab_date }</td>
    </tr>
    <tr>
        <td align="center">결제가격</td>
        <td align="center"><fmt:formatNumber value="${dto.pay }" pattern="#,###"/> KRW</td>
    </tr>

    <tr>
        <td align="center">좌석번호</td>
        <c:choose>
            <c:when test="${dto.s_no eq null}">
                <td align="center">
                    <input type="button" value="체크인" onclick="checkIn('${dto.t_no }')">
                </td>
            </c:when>
            <c:otherwise>
                <td align="center">
                        ${dto.s_no}
                </td>
            </c:otherwise>
        </c:choose>
    </tr>
</table>
<br><br>

<input type="button" value="티켓미리보기" onclick="functview('${dto.t_no}', '${dto.s_no}')">
<input type="button" value="결제 내역 프린트하기" onclick="pagePrintPreview()">
<br>
<br>
<br>
<form action="tview" method="post" id="tview" >
    <input type="hidden" name="t_no">
    <input type="hidden" name="o_sdate">
</form>


</body>
</html>