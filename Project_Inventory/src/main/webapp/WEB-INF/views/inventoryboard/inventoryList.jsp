<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="../../views/include/header.jsp"%>
<title>재고관리 시스템입니다.</title>

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

					<div>

						<%@ include
							file="../../views/inventoryboard/inventorySearchForm.jsp"%></div>

					<table class="table table-bordered">
						<thead>
							<tr>
								<th>구분</th>
								<th>번호</th>
								<th>남화/여화</th>
								<th>디자인NO</th>
								<th>색상</th>
								<th>사이즈</th>
								<th>수량</th>
								<th>가격</th>
								<th>할인율</th>
								<th>할인가</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach var="vo" items="${boardList}">
								<tr>
									<td>${vo.bno}</td>
									<td><a
										href="<c:url value='/freeboard/freeDetail/${vo.bno}${pc.makeURI(pc.paging.pageNum)}' />">${vo.title}</a>
										&nbsp;&nbsp;&nbsp; <c:if test="${vo.newMark}">
											<img alt="newMark" src="<c:url value='/img/icon_new.gif' />">
										</c:if></td>
									<td>${vo.writer}</td>
									<td><fmt:formatDate value="${vo.regDate}"
											pattern="yyyy-MM-dd HH:mm" /></td>
									<td><fmt:formatDate value="${vo.updateDate}"
											pattern="yyyy-MM-dd HH:mm" /></td>
								</tr>
							</c:forEach>
						</tbody>

<!-- 						<tfoot>
						</tfoot> -->

					</table>

					<!-- 					<select class="form-select" size="1"
						aria-label="size 1 select example">
						<option selected>Open this select menu</option>
						<option value="1">One</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
					</select> -->

					<!-- <input type="checkbox"> -->
					<%@ include file="../../views/inventoryboard/addInventoryForm.jsp"%>

					<%@ include
						file="../../views/inventoryboard/inventoryModalForm.jsp"%>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../../views/include/footer.jsp"%>
</body>
<script
	src="${pageContext.request.contextPath}/resources/modal/modal.js"></script>
</html>