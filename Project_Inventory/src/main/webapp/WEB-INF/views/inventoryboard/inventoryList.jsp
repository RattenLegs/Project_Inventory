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
								<th>등록일</th>
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

<script>
	const msg = '${msg}';
	if (msg !== '') {
		alert(msg);
	}

	$(document).ready(function() {

		$('#replyRegist').click(function() {

			/*
			댓글을 등록하려면 게시글 번호도 보내 주셔야 합니다.
			댓글 내용, 작성자, 댓글 비밀번호, 게시글 번호를 
			json 표기 방법으로 하나로 모아서 전달해 주시면 됩니다.
			비동기 통신으로 댓글 삽입을 처리해 주시고,
			console.log를 통해 '댓글 등록 완료!'를 확인하시고
			실제 DB에 댓글이 추가되는지도 확인해 주세요.
			전송방식: POST, url: /reply/replyRegist
			 */

			const bno = '${article.bno}'; //컨트롤러에서 넘어온 게시글 번호
			const reply = $('#reply').val(); //댓글 내용
			const replyId = $('#replyId').val(); //작성자
			const replyPw = $('#replyPw').val(); //비밀번호

			if (reply === '' || replyId === '' || replyPw === '') {
				alert('이름, 비밀번호, 내용을 입력하세요!');
				return;
			}

			//제대로 입력했다면 ajax를 통해 보냄
			$.ajax({
				type : 'post',
				url : '<c:url value="/reply/replyRegist" />',
				data : JSON.stringify(//자바스크립트의 객체를 JSON 형태로 변경
				{
					"bno" : bno,
					"reply" : reply,
					"replyId" : replyId,
					"replyPw" : replyPw
				}),
				dataType : 'text', //서버로부터 어떤 형식으로 받을지 (text는 생략 가능.)
				contentType : 'application/json',
				success : function(data) {
					console.log('통신 성공!: ' + data);
					$('#reply').val('');
					$('#replyId').val('');
					$('#replyPw').val('');
					//등록 완료 후 댓글 목록 함수를 호출해서 비동기식으로 목록 표현.
					getList(1, true);
				},
				error : function() {
					alert('등록에 실패했습니다. 관리자에게 문의하세요!');
				}
			}); //댓글 등록 비동기 통신 끝.

		}); //댓글 등록 이벤트 끝.

	}); // end jQuery
</script>

</html>