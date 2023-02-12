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
				<%@ include file="../../views/repairboard/repairSearchForm.jsp"%>

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


				<div>
					<p>조회</p>
					<button id="modalOpen">등록</button>
					<p>수정</p>
					<p>삭제</p>
				</div>
				
				                    <!--페이지 네이션을 가져옴-->
		    <form action="<c:url value='/freeboard/freeList' />" name="pageForm">
                    <div class="text-center">
                    <hr>
                    <ul id="pagination" class="pagination pagination-sm">
                    	<c:if test="${pc.prev}">
                        	<li><a href="#" data-pagenum="${pc.beginPage-1}">이전</a></li>
                        </c:if>
                        
                        <c:forEach var="num" begin="${pc.beginPage}" end="${pc.endPage}">
                        	<li class="${pc.paging.pageNum == num ? 'active' : ''}"><a href="#" data-pagenum="${num}">${num}</a></li>
                        </c:forEach>
                        
                        <c:if test="${pc.next}">
                        	<li><a href="#" data-pagenum="${pc.endPage+1}">다음</a></li>
                        </c:if>
                    </ul>
                    <button type="button" class="btn btn-info" onclick="location.href='<c:url value="/freeboard/freeRegist" />'">글쓰기</button>
                    </div>
                    
                    <!-- 페이지 관련 버튼(이전, 다음, 페이지번호)을 클릭 시 같이 숨겨서 보내줄 공통 값  -->
                    <input type="hidden" name="pageNum" value="${pc.paging.pageNum}">
                    <input type="hidden" name="cpp" value="${pc.paging.cpp}">
                    <input type="hidden" name="condition" value="${pc.paging.condition}">
                    <input type="hidden" name="keyword" value="${pc.paging.keyword}">
                    
		    </form>
				

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