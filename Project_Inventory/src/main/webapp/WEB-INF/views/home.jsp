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

<jsp:include page="../include/header.jsp" />
</head>
<body>
	<section>
		<div style="text-align: center">
			<h1>수유점입니다! 좋은 하루 보내세요!</h1>
		</div>
	</section>
	<section>
		<div style="text-align: center">
			<P>현재 시간은 ${serverTime} 입니다.</P>
			<p>원하는 기능을 선택해주세요.</p>
			<button onclick="location.href='www.naver.com'">재고관리</button>
			<p>
			<button type="button" onclick="goRepairList();">수선관리</button>
			<a href="<c:url value='repairList.jsp' />">오오</a>
		</div>
	</section>
</body>
<jsp:include page="../include/footer.jsp" />
</html>

<script>

function goRepairList(){
    location.href = "repairboard/repairList.jsp";
}

</script>