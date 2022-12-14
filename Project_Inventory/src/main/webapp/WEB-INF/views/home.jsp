<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!-- 한글 깨질때 꼭 해야함 -->
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>수유점 관리시스템에 오신걸 환영합니다.</title>

 <%@ include file="../views/include/header.jsp" %>
 <link rel="icon" href="data:;base64,iVBORw0KGgo="> <!-- favicon.ico 없애주는 친구 -->
</head>
<body>
	<section>
		<div style="text-align: center">
			<h1>수유점입니다! 좋은 하루 보내세요!</h1>
		</div>
	</section>
	<section>
		<div style="text-align: center">
			<%
				java.util.Calendar cal = java.util.Calendar.getInstance();
			%>
			<p>
			오늘은
			<%=cal.get(java.util.Calendar.YEAR) %>년
			<%=cal.get(java.util.Calendar.MONTH) %>월
			<%=cal.get(java.util.Calendar.DATE) %>일
			입니다.
			</p>
			<p>
			현재 시간은 <%=new java.util.Date() %> 입니다. <!-- java.util.date 한글로 변환하기 -->
			</p>
			<P>현재 시간은 ${serverTime} 입니다.</P>
			<p>현재 총재고는 n족, 당일 입고는 m족, 당일 출고는 k족입니다.</p>
			<p>총 수선재고는 n족입니다.</p>
			<p>원하는 기능을 선택해주세요.</p>
			<button type="button" onclick="goInventoryList();">재고관리</button>
			<button type="button" onclick="goRepairList();">수선관리</button>
<%-- 			<a href="<c:url value='/repairboard/repairList' />">오오</a> --%>
		</div>
	</section>
</body>
	<%@ include file="../views/include/footer.jsp" %>
	
</html>

<script>

function goInventoryList(){
    location.href = "/inventoryboard/inventoryList";
}

function goRepairList(){
    location.href = "/repairboard/repairList";
}

</script>