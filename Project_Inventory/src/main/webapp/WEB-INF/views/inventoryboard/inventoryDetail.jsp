<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp"%>
<title>재고상세보기 페이지입니다.</title>

<section>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-md-9 write-wrap">
				<div class="titlebox">
					<p>상세보기</p>
				</div>

				<form>
					<div>
						<label>DATE</label>
						<c:if test="${article.updateDate == null}">
							<p>${article.regDate}</p>
						</c:if>
						<c:if test="${article.updateDate != null}">
							<p>${article.updateDate}</p>
						</c:if>
					</div>
					<div class="form-group">
						<label>번호</label> <input class="form-control" name='##'
							value="${article.bno}" readonly>
					</div>
					<div class="form-group">
						<label>디자인NO</label> <input class="form-control" name='##'
							value="${article.design}" readonly>
					</div>
					<div class="form-group">
						<label>색상</label> <input class="form-control" name='##'
							value="${article.color}" readonly>
					</div>
					<div class="form-group">
						<label>사이즈</label> <input class="form-control" name='##'
							value="${article.shoeSize}" readonly>
					</div>
					<div class="form-group">
						<label>수량</label> <input class="form-control" name='##'
							value="${article.shoeNum}" readonly>
					</div>
					<div class="form-group">
						<label>가격</label> <input class="form-control" name='##'
							value="${article.price}" readonly>
					</div>
					<div class="form-group">
						<label>할인율</label> <input class="form-control" name='##'
							value="${article.salePercent}" readonly>
					</div>
					<div class="form-group">
						<label>할인가</label> <input class="form-control" name='##'
							value="${article.sale}" readonly>
					</div>

					<%--                             <div class="form-group">
                                <label>내용</label>
                                <textarea class="form-control" rows="10" name='##' readonly>${article.content}</textarea>
                            </div> --%>

					<%--   <button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/freeboard/freeModify?bno=${article.bno}&writer=${article.writer}" />'">변경</button>
                            <button type="button" class="btn btn-dark" onclick="location.href='${pageContext.request.contextPath}/freeboard/freeList?pageNum=${p.pageNum}&cpp=${p.cpp}&condition=${p.condition}&keyword=${p.keyword}'">목록</button> --%>
				</form>
			</div>
		</div>
	</div>
</section>

<section style="margin-top: 80px;"><!-- reply 말고 memo 정도로 해 둡시다. -->
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-md-9 write-wrap">
				<form class="reply-wrap">
					<div class="reply-image">
						MEMO
					</div>
					<!--form-control은 부트스트랩의 클래스입니다-->
					<div class="reply-content">
						<textarea class="form-control" rows="3" id="reply"></textarea>
						<div class="reply-group">
							<div class="reply-input">
								<input type="text" class="form-control" id="replyId"
									placeholder="이름"> <input type="password"
									class="form-control" id="replyPw" placeholder="비밀번호">
							</div>

							<button type="button" id="replyRegist" class="right btn btn-info">등록하기</button>
						</div>

					</div>
				</form>

				<!--여기에접근 반복-->
				<div id="replyList">

					<!-- 자바스크립트 단에서 반복문을 이용해서 댓글의 개수만큼 반복 표현.
	                   	   <div class='reply-wrap'>
	                            <div class='reply-image'>
	                                <img src='../resources/img/profile.png'>
	                            </div>
	                            <div class='reply-content'>
	                                <div class='reply-group'>
	                                    <strong class='left'>honggildong</strong> 
	                                    <small class='left'>2019/12/10</small>
	                                    <a href='#' class='right'><span class='glyphicon glyphicon-pencil'></span>수정</a>
	                                    <a href='#' class='right'><span class='glyphicon glyphicon-remove'></span>삭제</a>
	                                </div>
	                                <p class='clearfix'>여기는 댓글영역</p>
	                            </div>
	                        </div> -->

				</div>
				<button class="form-control" id="moreList">더보기(페이징)</button>
			</div>
		</div>
	</div>
</section>

<!-- 모달 -->
<!-- 	<div class="modal fade" id="replyModal" role="dialog">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn btn-default pull-right" data-dismiss="modal">닫기</button>
					<h4 class="modal-title">댓글 수정</h4>
				</div>
				<div class="modal-body">
					수정폼 id값을 확인하세요
					<div class="reply-content">
					<textarea class="form-control" rows="4" id="modalReply" placeholder="내용입력"></textarea>
					<div class="reply-group">
						<div class="reply-input">
						    <input type="hidden" id="modalRno">
							<input type="password" class="form-control" placeholder="비밀번호" id="modalPw">
						</div>
						<button class="right btn btn-info" id="modalModBtn">수정하기</button>
						<button class="right btn btn-info" id="modalDelBtn">삭제하기</button>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->


<%@ include file="../include/footer.jsp"%>























