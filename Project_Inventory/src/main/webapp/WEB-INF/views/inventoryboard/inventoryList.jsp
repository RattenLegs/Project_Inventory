<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>재고관리 시스템입니다.</title>
<%@ include file="../../views/include/header.jsp"%>

</head>
<body>
	<section>
		<div style="text-align: center">
			<h1>재고관리 시스템입니다!</h1>
		</div>
	</section>
	<section>
		<div style="text-align: center">
			<p>재고용 테이블이 등장할 예정</p>
			<p>남화 여화</p>
			<p>디자인NO 색상 사이즈 수량 세일가 계</p>
		</div>

		<div>
			<p>조회조건</p>
			<p>조회</p>
			<p><a href="<c:url value='/inventoryboard/addInventory' />">등록</a></p>
			<p>수정</p>
			<p>삭제</p>
		</div>
	</section>
	<%@ include file="../../views/include/footer.jsp"%>
</body>

</html>