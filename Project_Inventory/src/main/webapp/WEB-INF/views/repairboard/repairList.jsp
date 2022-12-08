<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!-- 한글 깨질때 꼭 해야함 -->
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>수선관리 시스템입니다.</title>
<%@ include file="../../views/include/header.jsp"%>

</head>
<body>
	<section>
		<div style="text-align: center">
			<h1>수선관리 시스템입니다!</h1>
		</div>
	</section>
	<section>
		<div style="text-align: center">
			<p>수선용 테이블이 등장할 예정</p>
			<p>번호 접수일 이름 연락처 디자인 내용 약속일 매장재고일 납품일 비고</p>
		</div>
		
		<div>
			<p>조회조건</p>
			<p>조회</p>
			<p><a href="<c:url value='/repairboard/addRepair'/>">등록</a></p>
			<p>수정</p>
			<p>삭제</p>
		
		</div>
	</section>
	<%@ include file="../../views/include/footer.jsp"%>
</body>

</html>