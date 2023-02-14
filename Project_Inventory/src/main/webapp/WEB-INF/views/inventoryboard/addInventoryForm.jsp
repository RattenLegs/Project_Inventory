<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--페이지 네이션을 가져옴-->
<form action="<c:url value='/inventoryboard/inventoryList' />"
	name="pageForm">
	<div class="text-center">
		<hr>
		<ul id="pagination" class="pagination pagination-sm">
			<c:if test="${pc.prev}">
				<li><a href="#" data-pagenum="${pc.beginPage-1}">이전</a></li>
			</c:if>

			<c:forEach var="num" begin="${pc.beginPage}" end="${pc.endPage}">
				<li class="${pc.paging.pageNum == num ? 'active' : ''}"><a
					href="#" data-pagenum="${num}">${num}</a></li>
			</c:forEach>

			<c:if test="${pc.next}">
				<li><a href="#" data-pagenum="${pc.endPage+1}">다음</a></li>
			</c:if>
		</ul>
		<button type="button" class="btn btn-info">재고삭제</button>
		<button type="button" class="btn btn-info">재고수정</button>
		<button type="button" id="modalOpen" class="btn btn-info">재고등록</button>
	</div>


	<!-- 페이지 관련 버튼(이전, 다음, 페이지번호)을 클릭 시 같이 숨겨서 보내줄 공통 값  -->
	<input type="hidden" name="pageNum" value="${pc.paging.pageNum}">
	<input type="hidden" name="cpp" value="${pc.paging.cpp}"> <input
		type="hidden" name="condition" value="${pc.paging.condition}">
	<input type="hidden" name="keyword" value="${pc.paging.keyword}">
</form>