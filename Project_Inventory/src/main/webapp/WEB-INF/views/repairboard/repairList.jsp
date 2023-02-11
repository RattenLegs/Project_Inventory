<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- JSTL 라이브러리 추가 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- JSTL FMT태그 추가 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!-- 한글 깨질때 꼭 해야함 -->

<html>
<head>

<title>수선관리 시스템입니다.</title>
<%@ include file="../../views/include/header.jsp"%>
<link
	href="${pageContext.request.contextPath}/resources/modal/modal.css"
	rel="stylesheet">

</head>
<body>
	<section>
		<div class="container-fluid">
			<div class="row">
				<!--lg에서 9그리드, xs에서 전체그리드-->
				<div class="col-lg-9 col-xs-12 board-table">
					<div class="titlebox">
						<p>수 선 관 리</p>
					</div>
				</div>
			</div>
		</div>
		<hr>

	<%@ include file="../../views/repairboard/repairSearchForm.jsp"%>

		<div>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>번호</th>
						<th>접수일</th>
						<th>이름</th>
						<th>연락처</th>
						<th>디자인</th>
						<th>내용</th>
						<th>약속일</th>
						<th>매장재고일</th>
						<th>납품일</th>
						<th>비고</th>
					</tr>
				</thead>

				<tbody>
				</tbody>

				<tfoot>
				</tfoot>

			</table>
		</div>

		<div>
			<button id="modalOpen">등록</button>
			<p>수정</p>
			<p>삭제</p>
		</div>

	<%@ include file="../../views/repairboard/repairModalForm.jsp"%>

<%-- 	<%@ include file="../../views/repairboard/repairSearchForm.jsp"%> --%>
<!-- 지우고 위로 올라가는 버튼 만들 예정 -->

	</section>
	<%@ include file="../../views/include/footer.jsp"%>
</body>

<script
	src="${pageContext.request.contextPath}/resources/modal/modal.js"></script>

</html>