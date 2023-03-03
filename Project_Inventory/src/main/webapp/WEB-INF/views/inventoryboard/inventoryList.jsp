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
								<th>디자인NO</th>
								<th>남화/여화</th>
								<th>색상</th>
								<th>사이즈</th>
								<th>수량</th>
								<th>가격</th>
								<th>할인율</th>
								<th>할인가</th>
								<th>등록일</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach var="vo" items="${boardList}">
								<tr>
									<td></td>
									<td>${vo.bno}</td>
									<td><a
										href="<c:url value='/inventoryboard/inventoryDetail/${vo.bno}${pc.makeURI(pc.paging.pageNum)}' />">${vo.design}</a>
										&nbsp;&nbsp;&nbsp; <c:if test="${vo.newMark}">
											<img alt="newMark" src="<c:url value='/img/icon_new.gif' />">
										</c:if></td>

									<td>${vo.shoeGender}</td>
									<td>${vo.color}</td>
									<td>${vo.shoeSize}</td>
									<td>${vo.shoeNum}</td>
									<td>${vo.price}</td>
									<td>${vo.salePercent}</td>
									<td>${vo.sale}</td>
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

<script>
	//페이지 관련 스크립트
	$(function() {

		const msg = '${msg}';
		if (msg !== '') {
			alert(msg);
		}

		//사용자가 페이지 관련 버튼을 클릭했을 때, 기존에는 각각의 a태그의 href에다가
		//각각 다른 url을 작성해서 요청을 보내줬다면, 이번에는 클릭한 그 버튼이 무엇인지를 확인해서
		//그 버튼에 맞는 페이지 정보를 자바스크립트로 끌고와서 요청을 보내 주겠습니다.
		$('#pagination').on('click', 'a', function(e) {//on 함수 jQuery
			e.preventDefault(); //a태그의 고유기능 중지.

			//현재 이벤트가 발생한 요소(버튼)의
			//data-pageNum의 값을 얻어서 변수에 저장.
			//const value = e.target.dataset.pagenum; -> Vanilla JS 
			const value = $(this).data('pagenum'); // -> jQuery
			console.log(value);

			//페이지 버튼들을 감싸고 있는 form태그를 name으로 지목하여
			//그 안에 숨겨져 있는 pageNum이라는 input태그의 value에
			//위에서 얻은 data-pageNum의 값을 삽입 한 후 submit
			//formatpageNum의 value를 얻어온 사용자가 클릭한 버튼, 그 버튼에 매겨진 page값으로 변경하고 submit 때리면 hidden으로 숨겨진 데이터도 넘어감
			document.pageForm.pageNum.value = value;
			document.pageForm.submit();

		});

	}); //end jQuery
</script>

</html>