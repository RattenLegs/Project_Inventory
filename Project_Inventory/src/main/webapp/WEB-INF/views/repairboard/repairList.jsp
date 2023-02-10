<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!-- 한글 깨질때 꼭 해야함 -->
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
.background {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100vh;
	background-color: rgba(0, 0, 0, 0.3);
	z-index: 1000;
	/* 숨기기 */
	z-index: -1;
	opacity: 0;
}

.modalOpen {
	opacity: 1;
	z-index: 1000;
	transition: all .5s;
}

.window {
	position: relative;
	width: 100%;
	height: 100%;
}

.modalyes {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: #ffffff;
	box-shadow: 0 2px 7px rgba(0, 0, 0, 0.3);
	/* 임시 지정 */
	width: 50%;
	height: 50%;
	/* 초기에 약간 아래에 배치 */
	transform: translate(-50%, -40%);
}

.modalOpen .modalyes {
	transform: translate(-50%, -50%);
	transition: all .5s;
}
</style>

<title>수선관리 시스템입니다.</title>
<%@ include file="../../views/include/header.jsp"%>

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

		<form action="<c:url value='/repairboard/repairList' />">
			<div class="search-wrap">
				<button type="submit" class="btn btn-info search-btn">검색</button>
				<input type="text" name="keyword" class="form-control search-input"
					value="${pc.paging.keyword}"> <select
					class="form-control search-select" name="condition">
					<option value="title"
						${pc.paging.condition == 'title' ? 'selected' : ''}>접수일</option>
					<option value="content"
						${pc.paging.condition == 'content' ? 'selected' : ''}>이름</option>
					<option value="writer"
						${pc.paging.condition == 'writer' ? 'selected' : ''}>연락처</option>
					<option value="titleContent"
						${pc.paging.condition == 'titleContent' ? 'selected' : ''}>디자인</option>
					<option value="titleContent"
						${pc.paging.condition == 'titleContent' ? 'selected' : ''}>내용</option>
					<option value="titleContent"
						${pc.paging.condition == 'titleContent' ? 'selected' : ''}>약속일</option>
					<option value="titleContent"
						${pc.paging.condition == 'titleContent' ? 'selected' : ''}>매장재고일</option>
					<option value="titleContent"
						${pc.paging.condition == 'titleContent' ? 'selected' : ''}>납품일</option>
				</select>
			</div>
		</form>

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
			<%-- 			<p>
				<a href="<c:url value='/repairboard/addRepair'/>">등록</a>
			</p> --%>
			<p>수정</p>
			<p>삭제</p>

		</div>



		<button id="modalOpen">등록</button>

		<div class="background">
			<div class="window">
				<div class="modalyes">
					<form action="/repairboard/addRepairCheck" method="post">
						<fieldset>
							<legend>등록 양식</legend>
							<p>

								# 번호 <input type="text" name="num" size="10"> <br>
								# 접수일 <input type="text" name="startDay" size="10"> <br>
								# 이름 <input type="text" name="name" size="10"> <br>
								# 연락처 <input type="text" name="phoneNumber" size="10"> <br>
								# 디자인 <input type="text" name="design" size="10"> <br>
								# 내용 <input type="text" name="text" size="10"> <br>
								# 약속일 <input type="text" name="promiseDay" size="10"> <br>
								# 납품일 <input type="text" name="endDay" size="10"> <br>
								# 비고 <input type="text" name="etc" size="10"> <br>

								<input type="submit" value="확인">
							</p>
						</fieldset>

					</form>

					<button id="modalClose">모달 닫기</button>
				</div>
			</div>
		</div>

		<form action="<c:url value='/repairboard/repairList' />">
			<div class="search-wrap">
				<button type="submit" class="btn btn-info search-btn">검색</button>
				<input type="text" name="keyword" class="form-control search-input"
					value="${pc.paging.keyword}"> <select
					class="form-control search-select" name="condition">
					<option value="title"
						${pc.paging.condition == 'title' ? 'selected' : ''}>접수일</option>
					<option value="content"
						${pc.paging.condition == 'content' ? 'selected' : ''}>이름</option>
					<option value="writer"
						${pc.paging.condition == 'writer' ? 'selected' : ''}>연락처</option>
					<option value="titleContent"
						${pc.paging.condition == 'titleContent' ? 'selected' : ''}>디자인</option>
					<option value="titleContent"
						${pc.paging.condition == 'titleContent' ? 'selected' : ''}>내용</option>
					<option value="titleContent"
						${pc.paging.condition == 'titleContent' ? 'selected' : ''}>약속일</option>
					<option value="titleContent"
						${pc.paging.condition == 'titleContent' ? 'selected' : ''}>매장재고일</option>
					<option value="titleContent"
						${pc.paging.condition == 'titleContent' ? 'selected' : ''}>납품일</option>
				</select>
			</div>
		</form>

	</section>
	<%@ include file="../../views/include/footer.jsp"%>
</body>


<script>
	function modalOpen() {
		document.querySelector(".background").className = "background modalOpen";
	}

	function close() {
		document.querySelector(".background").className = "background";
	}

	document.querySelector("#modalOpen").addEventListener("click", modalOpen);
	document.querySelector("#modalClose").addEventListener("click", close);
/* 	document.querySelector(".background").addEventListener("click", close); */ //바깥 클릭시에도 닫히게 하기
</script>

</html>