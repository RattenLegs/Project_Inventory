<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


		<!-- form을 가져온다 -->
		<form action="<c:url value='/repairboard/repairList' />">
			<div class="search-wrap">
				<button type="submit" class="btn btn-info search-btn">검색</button>
				<input type="text" name="keyword" class="form-control search-input"
					value="${pc.paging.keyword}"> <select
					class="form-control search-select" name="condition">
										<option value="all"
						${pc.paging.condition == 'title' ? 'selected' : ''}>전체</option>
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