<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="../../views/include/header.jsp"%>
<title>재고관리 시스템입니다.</title>

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

					<hr>
					<%@ include
						file="../../views/inventoryboard/inventorySearchForm.jsp"%>

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
					
					
					<%@ include file="../../views/inventoryboard/addInventoryForm.jsp"%>

					<%@ include file="../../views/inventoryboard/inventoryModalForm.jsp"%>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../../views/include/footer.jsp"%>
</body>
<script
	src="${pageContext.request.contextPath}/resources/modal/modal.js"></script>
</html>