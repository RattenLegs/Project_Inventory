﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../include/header.jsp" %>

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
                                <label>번호</label>
                                <input class="form-control" name='##' value="${article.bno}" readonly>
                            </div>
                            <div class="form-group">
                                <label>작성자</label>
                                <input class="form-control" name='##' value="${article.writer}" readonly>
                            </div>    
                            <div class="form-group">
                                <label>제목</label>
                                <input class="form-control" name='##' value="${article.title}" readonly>
                            </div>

                            <div class="form-group">
                                <label>내용</label>
                                <textarea class="form-control" rows="10" name='##' readonly>${article.content}</textarea>
                            </div>

                            <button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/freeboard/freeModify?bno=${article.bno}&writer=${article.writer}" />'">변경</button>
                            <button type="button" class="btn btn-dark" onclick="location.href='${pageContext.request.contextPath}/freeboard/freeList?pageNum=${p.pageNum}&cpp=${p.cpp}&condition=${p.condition}&keyword=${p.keyword}'">목록</button>
                    </form>
                </div>
            </div>
        </div>
        </section>
        
        <section style="margin-top: 80px;">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-md-9 write-wrap">
                        <form class="reply-wrap">
                            <div class="reply-image">
                                <img src="<c:url value='/img/profile.png' />">
                            </div>
                            <!--form-control은 부트스트랩의 클래스입니다-->
	                    <div class="reply-content">
	                        <textarea class="form-control" rows="3" id="reply"></textarea>
	                        <div class="reply-group">
	                              <div class="reply-input">
		                              <input type="text" class="form-control" id="replyId" placeholder="이름">
		                              <input type="password" class="form-control" id="replyPw" placeholder="비밀번호">
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
	<div class="modal fade" id="replyModal" role="dialog">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn btn-default pull-right" data-dismiss="modal">닫기</button>
					<h4 class="modal-title">댓글 수정</h4>
				</div>
				<div class="modal-body">
					<!-- 수정폼 id값을 확인하세요-->
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
					<!-- 수정폼끝 -->
				</div>
			</div>
		</div>
	</div>

	
	<%@ include file="../include/footer.jsp" %>
	
	<script>
		const msg = '${msg}';
		if(msg !== '') {
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
				
				if(reply === '' || replyId === '' || replyPw === '') {
					alert('이름, 비밀번호, 내용을 입력하세요!');
					return;
				}
				
				$.ajax({
					type: 'post',
					url: '<c:url value="/reply/replyRegist" />',
					data: JSON.stringify(
						{
							"bno": bno,
							"reply": reply,
							"replyId": replyId,
							"replyPw": replyPw
						}
					),
					dataType: 'text', //서버로부터 어떤 형식으로 받을지 (text는 생략 가능.)
					contentType: 'application/json',
					success: function(data) {
						console.log('통신 성공!: ' + data);
						$('#reply').val('');
						$('#replyId').val('');
						$('#replyPw').val('');
						//등록 완료 후 댓글 목록 함수를 호출해서 비동기식으로 목록 표현.
						getList(1, true);
					},
					error: function() {
						alert('등록에 실패했습니다. 관리자에게 문의하세요!');
					}
				}); //댓글 등록 비동기 통신 끝.
			
			}); //댓글 등록 이벤트 끝.
			
			
			//더보기 버튼 처리(클릭 시 전역 변수 page에 +1 한 값을 전달)
			$('#moreList').click(function() {
				//왜 false를 주었죠?
				//더보기잖아요. 누적해야 하지 않을까요?
				//1페이지의 댓글 내용 밑에다가 2페이지를 줘야지
				//1페이지를 없애고 2페이지를 보여주자 는 게 아니니까요.
				getList(++page, false);
			});
			
			
			//목록 요청
			let page = 1; //페이지 번호
			let strAdd = ''; //화면에 그려넣을 태그를 문자열의 형태로 추가할 변수.
			
			getList(1, true); //상세보기 화면에 처음 진입 시 댓글 리스트를 불러옴.
			
			
			//getList의 매개값으로 요청된 페이지 번호와
			//화면을 리셋할 것인지의 여부를 bool 타입의 reset 이름의 변수로 받겠습니다.
			//(페이지가 그대로 머물면서 댓글이 밑에 계속 쌓이기 때문에, 상황에 따라서
			//페이지를 리셋해서 새롭게 가져올 것이니지, 누적해서 쌓을 것인지의 여부를 확인)
			function getList(pageNum, reset) {
				
				const bno = '${article.bno}'; //게시글 번호
				
				//getJSON 함수를 통해 JSON 형식의 파일을 읽어올 수 있다.
				//get방식의 요청을 통해 서버로부터 받은 JSON 데이터를 로드한다.
				//$.getJSON(url, [DATA], [통신 성공 여부])
				$.getJSON(
					"<c:url value='/reply/getList/' />" + bno + '/' + pageNum,
					function(data) {
						console.log(data);
						
						let total = data.total; //총 댓글 수
						let replyList = data.list; //댓글 리스트
						
						//insert, update, delete 작업 후에는
						//댓글을 누적하고 있는 strAdd 변수를 초기화를 해서
						//화면이 리셋된 것처럼 보여줘야 합니다.
						if(reset === true) {
							strAdd = '';
							page = 1;
						}
						
						//페이지번호 * 데이터 수보다 전체 댓글 개수가 작으면 더보기 버튼을 없애자.
						console.log('현재 페이지: ' + page);
						if(total <= page * 5) {
							$('#moreList').css('display', 'none');
						} else {
							$('#moreList').css('display', 'block');
						}
						
						//응답 데이터의 길이가 0과 같거나 더 작으면 함수를 종료하자.
						if(replyList.length <= 0) {
							return; //함수 종료
						}
					
						for(let i=0; i<replyList.length; i++) {
							strAdd += 
							`<div class='reply-wrap'>
                            <div class='reply-image'>
                                <img src='${pageContext.request.contextPath}/img/profile.png'>
                            </div>
                            <div class='reply-content'>
                                <div class='reply-group'>
                                    <strong class='left'>` + replyList[i].replyId + `</strong> 
                                    <small class='left'>` + timeStamp(replyList[i].replyDate) + `</small>
                                    <a href='` + replyList[i].rno + `' class='right replyDelete'><span class='glyphicon glyphicon-remove'></span>삭제</a>
                                    <a href='` + replyList[i].rno + `' class='right replyModify'><span class='glyphicon glyphicon-pencil'></span>수정</a>
                                </div>
                                <p class='clearfix'>` + replyList[i].reply + `</p>
                            </div>
                        	</div>`;
						}
						//replyList라는 div 영역에 문자열 형식으로 모든 댓글을 추가.
						$('#replyList').html(strAdd); 
						
						
					}
				); //end getJSON
				
				
			} //end getList()
			
			//수정, 삭제
			/*
			$('.replyModify').click(function(e) {
				e.preventDefault();
				console.log('수정 이벤트 발생!');
			}); (동작 x)
			
			ajax함수의 실행이 더 늦게 완료가 되기 때문에, 실제 이벤트 선언이 먼저 실행되게 됩니다.
			이런 상황에서는 화면에 댓글 관련 창은 아무것도 등록되어 있지 않은 형태이므로,
			일반 클릭 이벤트가 동작하지 않습니다.
			이 때는, 이미 존재하는 #replyList에 이벤트를 등록하고, 이벤트를 자식에게 전파시켜
			사용하는 제이쿼리의 이벤트 위임 함수를 반드시 사용해야 합니다.
			*/
			
			$('#replyList').on('click', 'a', function(e) {
				e.preventDefault(); //태그의 고유 기능을 중지.
				//1. a태그가 두 개(수정, 삭제)이므로 버튼부터 확인.
				//수정, 삭제가 발생하는 댓글 번호가 몇 번인지도 확인.
				
				const rno = $(this).attr('href');
				$('#modalRno').val(rno); //모달 내부에 숨겨진 input 태그에 댓글 번호를 담아서 전송.
				
				//2. 모달 창 하나를 이용해서 상황에 따라 수정 / 삭제 모달을 구분하기 위해
				//조건문 작성. (모달 하나로 수정, 삭제 같이 처리. 그러기 위해 디자인 조정)
				
				//hasClass()는 클래스 이름에 매개값이 포함되어 있다면 true, 없다면 false.
				if($(this).hasClass('replyModify')) {
					//수정 버튼을 눌렀으므로 수정 모달 형식으로 꾸며주겠다.
					$('.modal-title').html('댓글 수정');
					$('#modalReply').css('display', 'inline');
					$('#modalModBtn').css('display', 'inline');
					$('#modalDelBtn').css('display', 'none'); //수정이므로 삭제버튼은 숨기자.
					
					//jQuery를 이용한 모달 창 열기/닫기 ('show'/'hide')
					//BootStrap에서는 trigger를 통해서 모달을 열고 닫았지만, 지금은 그런 게 없기 때문에
					//제이쿼리를 이용하여 직접 모달을 열고 닫습니다.
					$('#replyModal').modal('show');
					
				} else {
					//삭제 버튼을 눌렀으므로 삭제 모달 형식으로 변경
					$('.modal-title').html('댓글 삭제');
					$('#modalReply').css('display', 'none');
					$('#modalModBtn').css('display', 'none');
					$('#modalDelBtn').css('display', 'inline');
					$('#replyModal').modal('show');
				}
				
			}); //수정 or 삭제 버튼 클릭 이벤트 처리 끝.
			
			//수정 처리 함수(수정 모달을 열어서 수정 내용을 작성 후 수정 버튼을 클릭했을 때)
			$('#modalModBtn').click(function() {
				
				/*
				1. 모달창에 rno값, 수정한 댓글 내용(reply), replyPw값을 얻습니다.
				2. ajax함수를 이용해서 post방식으로 reply/update 요청,
				필요한 값은 JSON형식으로 처리해서 요청.
				3. 서버에서는 요청받을 메서드 선언해서 비밀번호 확인하고, 비밀번호가 맞다면
				 수정을 진행하세요. 만약 비밀번호가 틀렸다면 "pwFail"을 반환해서
				 '비밀번호가 틀렸습니다.' 경고창을 띄우세요.
				4. 업데이트가 진행된 다음에는 modal창의 모든 값을 ''로 처리해서 초기화 시키시고
				 modal창을 닫으세요.
				 수정된 댓글 내용이 반영될 수 있도록 댓글 목록을 다시 불러 오세요.
				*/
				
				const reply = $('#modalReply').val();
				const rno = $('#modalRno').val();
				const replyPw = $('#modalPw').val();
				
				if(reply === '' || replyPw === '') {
					alert('내용, 비밀번호를 확인하세요!');
					return;
				}
				
				$.ajax({
					type: 'post',
					url: '<c:url value="/reply/update" />',
					contentType: 'application/json',
					data: JSON.stringify({
						'reply': reply,
						'rno': rno,
						'replyPw': replyPw
					}),
					success: function(result) {
						if(result === 'modSuccess') {
							alert('정상 수정되었습니다.');
							$('#modalReply').val('');
							$('#modalPw').val('');
							$('#replyModal').modal('hide');
							getList(1, true);
						} else {
							alert('비밀번호를 확인하세요.');
							$('#modalPw').val('');
							$('#modalPw').focus();
						}
					},
					error: function() {
						alert('수정에 실패했습니다. 관리자에게 문의하세요!');
					}
				}); //end ajax(수정)
				
			}); //수정 처리 이벤트 끝.
			
			
			//삭제 함수
			$('#modalDelBtn').click(function() {
				/*
				1. 모달창에 rno값, replyPw값을 얻습니다.
				2. ajax함수를 이용해서 POST방식으로 /reply/delete 요청
				 필요한 값은 JSON 형식으로 처리해서 요청
				3. 서버에서는 요청을 받아서 비밀번호를 확인하고, 비밀번호가 맞으면
				 삭제를 진행하시면 됩니다.
				4. 만약 비밀번호가 틀렸다면, 문자열을 반환해서 
				 '비밀번호가 틀렸습니다.' 경고창을 띄우세요.
				*/
				const rno = $('#modalRno').val();
				const replyPw = $('#modalPw').val();
				
				if(replyPw === '') {
					alert('비밀번호를 확인하세요.');
					return;
				}
				
				$.ajax({
					type: 'post',
					url: '<c:url value="/reply/delete" />',
					data: JSON.stringify({
						'rno': rno,
						'replyPw': replyPw
					}),
					contentType: 'application/json',
					success: function(data) {
						if(data === 'delSuccess') {
							alert('댓글이 삭제되었습니다.');
							$('#modalPw').val('');//비밀번호 초기화
							$('#replyModal').modal('hide');
							getList(1, true);
						} else {
							alert('비밀번호가 틀렸습니다.');
							$('#modalPw').val('');
							$('#modalPw').focus();
						}
					},
					error: function() {
						alert('삭제에 실패했습니다. 관리자에게 문의하세요.');
					}
				}); //삭제 비동기 통신 끝.
				
			}); //삭제 이벤트 끝.
			
			
			
			
			//날짜 처리 함수
			function timeStamp(millis) {
				const date = new Date(); //현재 날짜
				//현재 날짜를 밀리초로 변환 - 등록일 밀리초 -> 시간 차
				const gap = date.getTime() - millis;
				
				let time; //리턴할 시간
				if(gap < 60 * 60 * 24 * 1000) { //1일 미만일 경우
					if(gap < 60 * 60 * 1000) { //1시간 미만일 경우
						time = '방금 전';
					} else {
						time = parseInt(gap / (1000 * 60 * 60)) + '시간 전';
					}
				} else { //1일 이상일 경우
					const today = new Date(millis);
					const year = today.getFullYear(); //년
					const month = today.getMonth() + 1; //월
					const day = today.getDate(); //일
					
					time = year + '년 ' + month + '월 ' + day + '일';
				}
				
				return time;			
			}
			
			
			
			
			
		}); // end jQuery
		
		
		
		
		
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	