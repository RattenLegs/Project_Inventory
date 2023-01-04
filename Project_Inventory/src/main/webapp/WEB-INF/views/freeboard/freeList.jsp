<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
    
    <%@ include file="../include/header.jsp" %>
    
    
    <section>
        <div class="container-fluid">
            <div class="row">
                <!--lg에서 9그리드, xs에서 전체그리드-->   
                <div class="col-lg-9 col-xs-12 board-table">
                    <div class="titlebox">
                        <p>자유게시판</p>
                    </div>
                    <hr>
                    
                    <!--form select를 가져온다 -->
            <form action="<c:url value='/freeboard/freeList' />">
		    		<div class="search-wrap">
                       <button type="submit" class="btn btn-info search-btn">검색</button>
                       <input type="text" name="keyword" class="form-control search-input" value="${pc.paging.keyword}">
                       <select class="form-control search-select" name="condition">
                            <option value="title" ${pc.paging.condition == 'title' ? 'selected' : ''}>제목</option>
                            <option value="content" ${pc.paging.condition == 'content' ? 'selected' : ''}>내용</option>
                            <option value="writer" ${pc.paging.condition == 'writer' ? 'selected' : ''}>작성자</option>
                            <option value="titleContent" ${pc.paging.condition == 'titleContent' ? 'selected' : ''}>제목+내용</option>
                       </select>
                    </div>
		    </form>
                   
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th class="board-title">제목</th>
                                <th>작성자</th>
                                <th>등록일</th>
                                <th>수정일</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach var="vo" items="${boardList}">
	                            <tr>
	                                <td>${vo.bno}</td>
	                                <td>
	                                	<a href="<c:url value='/freeboard/freeDetail/${vo.bno}${pc.makeURI(pc.paging.pageNum)}' />">${vo.title}</a>
	                                &nbsp;&nbsp;&nbsp;
	                                <c:if test="${vo.newMark}">
	                                	<img alt="newMark" src="<c:url value='/img/icon_new.gif' />">
	                                </c:if>
	                                </td>
	                                <td>${vo.writer}</td>
	                                <td><fmt:formatDate value="${vo.regDate}" pattern="yyyy-MM-dd HH:mm" /></td>
	                                <td><fmt:formatDate value="${vo.updateDate}" pattern="yyyy-MM-dd HH:mm"/></td>
	                            </tr>
                            </c:forEach>
                        </tbody>
                        
                    </table>


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

                </div>
            </div>
        </div>
	</section>
	
	<%@ include file="../include/footer.jsp" %>
	
	<script>
		$(function() {
			
			const msg = '${msg}';
			if(msg !== '') {
				alert(msg);
			}
			
			
			//사용자가 페이지 관련 버튼을 클릭했을 때, 기존에는 각각의 a태그의 href에다가
			//각각 다른 url을 작성해서 요청을 보내줬다면, 이번에는 클릭한 그 버튼이 무엇인지를 확인해서
			//그 버튼에 맞는 페이지 정보를 자바스크립트로 끌고와서 요청을 보내 주겠습니다.
			$('#pagination').on('click', 'a', function(e) {
				e.preventDefault(); //a태그의 고유기능 중지.
				
				//현재 이벤트가 발생한 요소(버튼)의
				//data-pageNum의 값을 얻어서 변수에 저장.
				//const value = e.target.dataset.pagenum; -> Vanilla JS 
				const value = $(this).data('pagenum'); // -> jQuery
				console.log(value);
				
				//페이지 버튼들을 감싸고 있는 form태그를 name으로 지목하여
				//그 안에 숨겨져 있는 pageNum이라는 input태그의 value에
				//위에서 얻은 data-pageNum의 값을 삽입 한 후 submit
				document.pageForm.pageNum.value = value;
				document.pageForm.submit();
				
			});
			
			
		}); //end jQuery
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	



