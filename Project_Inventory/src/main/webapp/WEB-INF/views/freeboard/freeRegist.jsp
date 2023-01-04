<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<%@ include file="../include/header.jsp" %>
	
    <section>
       <div class="container">
            <div class="row">
                <div class="col-xs-12 content-wrap">
                    <div class="titlebox">
                        <p>자유게시판</p>
                    </div>
                    <form action="<c:url value='/freeboard/registForm' />" name="registForm" method="post">
	                    <table class="table">
	                        <tbody class="t-control">
	                            <tr>
	                                <td class="t-title">NAME</td>
	                                <td><input class="form-control input-sm" name="writer" value="${login.userId}" readonly></td>
	                            </tr>
	                            <tr>
	                                <td class="t-title">TITLE</td>
	                                <td><input class="form-control input-sm" name="title"></td>
	                            </tr>
	                            <tr>
	                                <td class="t-title">CONTENT</td>
	                                <td>
	                                <textarea class="form-control" rows="7" name="content"></textarea>
	                                </td>                 
	                            </tr>
	                        </tbody>
	                    </table>
                    </form>
                    <div class="titlefoot">
                        <button class="btn" id="registBtn">등록</button>
                        <button class="btn" id="listBtn">목록</button>
                    </div>
                </div>
            </div>    
       </div>
    </section>
    
    <%@ include file="../include/footer.jsp" %>
    
    <script>
    	$(function() {
			$('#registBtn').click(function() {
				if($('input[name=title]').val() === '') {
					alert('제목은 필수 항목입니다.');
					$('input[name=writer]').focus();
					return;
				} else if($('textarea[name=content]').val() === '') {
					alert('내용은 필수 항목입니다.');
					$('textarea[name=content]').focus();
					return;
				} else {
					document.registForm.submit();
				}
			});
			
			$('#listBtn').click(function() {
				if(confirm('목록으로 돌아가시겠습니까?')) {
					location.href='<c:url value="/freeboard/freeList" />'
				} else return;
			})
			
			
		});
    </script>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  