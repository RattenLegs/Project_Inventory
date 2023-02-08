<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addInventory</title>
<%-- <%@ include file="../../views/include/header.jsp"%> --%>
</head>
<body>
	<p>우와 재고등록</p>
	<p>우와 재고등록</p>
	<p>우와 재고등록</p>
	<p>우와 재고등록</p>
	<p>모달로 처리될 예정입니다.</p>

	<%--
		form태그의 action을 작성하지 않으면
		마지막 요청(현재 화면을 보기 위해 요청한 url 주소)
		url과 동일하게 서버로 요청이 들어갑니다.
	 --%>

	<form action="/inventoryboard/addInventoryCheck" method="post">
		<fieldset>
			<legend>등록 양식</legend>
			<p>
				<input type="checkbox" name="shoeGender" value="남화"> 남화
				&nbsp; <input type="checkbox" name="shoeGender" value="여화">
				여화 &nbsp; <br> # 디자인NO <input type="text" name="design"
					size="10"> <br> # 색상 <input type="text" name="color"
					size="10"> <br> # 사이즈 <input type="text" name="size"
					size="10"> <br> # 수량 <input type="text" name="num"
					size="10"> <br> # 세일가 <input type="text" name="price"
					size="10"> <br> # 계 <input type="text" name="sum"
					size="10"> <br> <input type="submit" value="확인">
			</p>
		</fieldset>

	</form>
	<%-- 	<%@ include file="../../views/include/footer.jsp"%> --%>
</body>
</html>