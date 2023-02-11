<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>재고관리 시스템입니다.</title>
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
						<p>재 고 관 리</p>
					</div>
				</div>
			</div>
		</div>
		<hr>
		<%@ include file="../../views/repairboard/repairSearchForm.jsp"%>
	</section>
	<section>
		<div>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>남화/여화</th>
						<th>디자인NO</th>
						<th>색상</th>
						<th>사이즈</th>
						<th>수량</th>
						<th>세일가</th>
						<th>계</th>
					</tr>
				</thead>

				<tbody>
				</tbody>

				<tfoot>
				</tfoot>

			</table>
		</div>

		<div>
			<p>조회</p>
			<button id="modalOpen">등록</button>
			<p>수정</p>
			<p>삭제</p>
		</div>

		<%@ include file="../../views/inventoryboard/inventoryModalForm.jsp"%>

	</section>
	<%@ include file="../../views/include/footer.jsp"%>
</body>
<script
	src="${pageContext.request.contextPath}/resources/modal/modal.js"></script>
</html>