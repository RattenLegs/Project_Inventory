<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- form을 가져온다 -->
<form action="<c:url value='/inventoryboard/inventoryList' />">
	<div class="search-wrap">
		<button type="submit" class="btn btn-info search-btn">검색</button>
		<input type="text" name="keyword" class="form-control search-input" value="${pc.paging.keyword}"> 
		<select class="form-control search-select" name="condition">
			<option value="all"
				${pc.paging.condition == 'title' ? 'selected' : ''}>전체</option>
			<option value="title"
				${pc.paging.condition == 'title' ? 'selected' : ''}>남화/여화</option>
			<option value="content"
				${pc.paging.condition == 'content' ? 'selected' : ''}>디자인NO</option>
			<option value="writer"
				${pc.paging.condition == 'writer' ? 'selected' : ''}>색상</option>
			<option value="titleContent"
				${pc.paging.condition == 'titleContent' ? 'selected' : ''}>사이즈</option>
			<option value="titleContent"
				${pc.paging.condition == 'titleContent' ? 'selected' : ''}>수량</option>
			<option value="titleContent"
				${pc.paging.condition == 'titleContent' ? 'selected' : ''}>세일가</option>
		</select>
	</div>
</form>

