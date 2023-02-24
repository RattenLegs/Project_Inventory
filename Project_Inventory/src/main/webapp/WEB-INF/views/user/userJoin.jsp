<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<%@ include file="../include/header.jsp" %>


    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-9 col-sm-12 join-form">
                    <div class="titlebox">
                       	 회원가입
                    </div>
                    <form action="<c:url value='/user/join' />" method="post" id="joinForm">
                        <div class="form-group"><!--사용자클래스선언-->
                            <label for="id">아이디</label>
                            <div class="input-group"><!--input2탭의 input-addon을 가져온다 -->
                                <input type="text" name="userId" class="form-control" id="userId" placeholder="아이디를 (영문포함 4~12자 이상)">
                                <div class="input-group-addon">
                                    <button type="button" class="btn btn-primary" id="idCheckBtn">아이디중복체크</button>
                                </div>
                            </div>
                            <span id="msgId">*필수 사항입니다.</span><!--자바스크립트에서 추가-->
                        </div>
                        <div class="form-group"><!--기본 폼그룹을 가져온다-->
                            <label for="password">비밀번호</label>
                            <input type="password" name="userPw" class="form-control" id="userPw" placeholder="비밀번호 (영 대/소문자, 숫자 조합 8~16자 이상)">
                            <span id="msgPw"></span><!--자바스크립트에서 추가-->
                        </div>
                        <div class="form-group">
                            <label for="password-confrim">비밀번호 확인</label>
                            <input type="password" class="form-control" id="pwConfirm" placeholder="비밀번호를 확인해주세요.">
                             <span id="msgPw-c"></span><!--자바스크립트에서 추가-->
                        </div>
                        <div class="form-group">
                            <label for="name">이름</label>
                            <input type="text" name="userName" class="form-control" id="userName" placeholder="이름을 입력하세요.">
                        </div>
                        <!--input2탭의 input-addon을 가져온다 -->
                        <div class="form-group">
                            <label for="hp">휴대폰번호</label>
                            <div class="input-group">
				<select name="userPhone1" class="form-control phone1" id="userPhone1">
					<option>010</option>
					<option>011</option>
					<option>017</option>
					<option>018</option>
				</select> 
				<input type="text" name="userPhone2" class="form-control phone2" id="userPhone2" placeholder="휴대폰번호를 입력하세요.">
                                
                            </div>
                        </div>
			<div class="form-group email-form">
			  <label for="email">이메일</label>
			  <div class="input-group">
				  <input type="text" name="userEmail1" class="form-control" id="userEmail1" placeholder="이메일">
				  <select name="userEmail2" class="form-control" id="userEmail2">
				    <option>@naver.com</option>
				    <option>@daum.net</option>
				    <option>@gmail.com</option>
				    <option>@hanmail.com</option>
				    <option>@yahoo.co.kr</option>
				  </select>
				  <div class="input-group-addon">
	                  <button type="button" id="mail-check-btn" class="btn btn-primary">이메일 인증</button>
	              </div>
              </div>
              <div class="mail-check-box">
              	<input type="text" class="form-control mail-check-input" placeholder="인증번호 6자리를 입력하세요." maxlength="6" disabled="disabled">
              	<span id="mail-check-warn"></span>
              </div>
              
			</div>
                        <!--readonly 속성 추가시 자동으로 블락-->
                        <div class="form-group">
                            <label for="addr-num">주소</label>
                            <div class="input-group">
                                <input type="text" name="addrZipNum" class="form-control" id="addrZipNum" placeholder="우편번호" readonly>
                                <div class="input-group-addon">
                                    <button type="button" class="btn btn-primary" onclick="searchAddress()">주소찾기</button>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" name="addrBasic" class="form-control" id="addrBasic" placeholder="기본주소">
                        </div>
                        <div class="form-group">
                            <input type="text" name="addrDetail" class="form-control" id="addrDetail" placeholder="상세주소">
                        </div>

                        <!--button탭에 들어가서 버튼종류를 확인한다-->
                        <div class="form-group">
                            <button type="button" id="joinBtn" class="btn btn-lg btn-success btn-block">회원가입</button>
                        </div>

                        <div class="form-group">
                            <button type="button" class="btn btn-lg btn-info btn-block">로그인</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    
    <%@ include file="../include/footer.jsp" %>

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   
    <script>
    
    	$(function() {
			
    		let code = ''; //이메일 전송 인증번호 저장을 위한 변수.
    		
    		//아이디 중복 체크
    		$('#idCheckBtn').click(function() {
				
    			//아이디값을 받아와서 비동기 통신을 통해 서버와 통신하고
    			// 중복되었다면 '중복된 아이디입니다.',
    			//아니라면 '사용 가능한 아이디입니다' 라고
    			//화면에 띄워주시면 되겠습니다.
    			//attr()를 이용해서 readonly 속성을 true를 주어서 작성하지 못하도록.
    			
    			const userId = $('#userId').val();
    			
    			if(userId === '') {
    				alert('아이디는 필수값입니다.');
    				return;
    			}
    			
    			$.ajax({
    				type: 'post',
    				url: '<c:url value="/user/idCheck" />',
    				data: userId,
    				contentType: 'application/json',
    				success: function(data) {
						if(data === 'ok') {
							$('#userId').attr('readonly', true);
							$('#msgId').html('사용 가능한 아이디입니다.');
						} else {
							$('#msgId').html('중복된 아이디입니다.');
						}
					},
					error: function() {
						alert('서버 에러입니다. 관리자에게 문의하세요.');
					}
    			}); //중복확인 비동기 통신 끝.
    			
    			
			}); //아이디 중복 체크 끝.
			
			
			//인증번호 이메일 전송
			$('#mail-check-btn').click(function() {
				const email = $('#userEmail1').val() + $('#userEmail2').val();
				console.log('완성된 이메일: ' + email);
				
				$.ajax({
					type: 'get',
					url: '<c:url value="/user/mailCheck?email=" />' + email,
					success: function(data) {
						console.log('컨트롤러가 전달한 인증번호: ' + data);
						$('.mail-check-input').attr('disabled', false); //비활성된 인증번호 입력창 활성화.
						code = data;
						alert('인증번호가 전송되었습니다. 확인 후 입력란에 정확하게 입력하세요!');
					}
				}); //end ajax(이메일 전송)
				
			}); //이메일 전송 끝.
			
			
			//인증번호 비교
			//blur -> focus가 벗어나는 경우 발생
			$('.mail-check-input').blur(function() {
				const inputCode = $(this).val();
				const $resultMsg = $('#mail-check-warn');
				
				if(inputCode === code) {
					$resultMsg.html('인증번호가 일치합니다.');
					$resultMsg.css('color', 'green');
					$('#mail-check-btn').attr('disabled', true); //이메일 인증 못하게 버튼 비활성.
					$('#userEmail1').attr('readonly', true);
					$('#userEmail2').attr('readonly', true);
					$(this).css('display', 'none');
					
					//초기값을 사용자가 선택한 값으로 무조건 설정하는 방법.(select에서 readonly 대용)
					//2개 같이 쓰셔야 해요.
					$('#userEmail2').attr('onFocus', 'this.initialSelect = this.selectedIndex');
					$('#userEmail2').attr('onChange', 'this.selectedIndex = this.initialSelect');
				} else {
					$resultMsg.html('인증번호를 다시 확인해 주세요.');
					$resultMsg.css('color', 'red');
				}
				
			}); //인증번호 이벤트 끝.
			
			//폼 데이터 검증 (회원 가입 버튼 눌렀을 시)
			/*
				아이디 중복 체크를 했는지의 여부.(아이디 입력창이 readonly인지를 확인.)
				비밀번호 확인란이 제대로 인식이 됐는지의 여부.
				이름란이 공백이 아닌지를 확인.
				(이메일 인증, 주소는 필수값이 아니기 때문에 확인 안하겠습니다.)
				문제가 없다면 폼 데이터 submit으로 처리하세요.
			*/
			$('#joinBtn').click(function() {
				if(!$('#userId').attr('readonly')) {
					alert('아이디 중복체크는 필수입니다.');
					return;
				} else if($('#userPw').val() === '' || $('#userPw').val() !== $('#pwConfirm').val()) {
					alert('비밀번호 규칙을 확인하세요.');
					$('#userPw').focus();
					return;
				} else if($('#userName').val() === '') {
					alert('이름은 필수입니다.');
					$('#userName').focus();
					return;
				} else {
					$('#joinForm').submit();
				}
			});
			
			
			
			
			
    		
		}); // end jQuery
		
		/*
		function goPopup(){
			//주소찾기 버튼을 누르면 절대경로로 팝업창을 오픈.
			var pop = window.open("${pageContext.request.contextPath}/resources/popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
			
		}


		function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
				// 콜백 방식으로 받아온 데이터를 가입 폼에 자동 완성.
				document.getElementById('addrBasic').value = roadAddrPart1;
				document.getElementById('addrDetail').value = addrDetail;
				document.getElementById('addrZipNum').value = zipNo;
				
		}
		*/
		
		//다음 주소 api 사용해 보기
	    function searchAddress() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }	                
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('addrZipNum').value = data.zonecode;
	                document.getElementById("addrBasic").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("addrDetail").focus();
	            }
	        }).open();
	    }
    
    
    
    
    
    
    
    
    
    
    
    
    
        /*아이디 형식 검사 스크립트*/
        var id = document.getElementById("userId");
        id.onkeyup = function() {
            /*자바스크립트의 정규표현식 입니다*/
            /*test메서드를 통해 비교하며, 매칭되면 true, 아니면 false반*/
            var regex = /^[A-Za-z0-9+]{4,12}$/; 
            if(regex.test(document.getElementById("userId").value )) {
                document.getElementById("userId").style.borderColor = "green";
                document.getElementById("msgId").innerHTML = "아이디중복체크는 필수 입니다";

            } else {
                document.getElementById("userId").style.borderColor = "red";
                document.getElementById("msgId").innerHTML = "";
            }
        }
        /*비밀번호 형식 검사 스크립트*/
        var pw = document.getElementById("userPw");
        pw.onkeyup = function(){
            var regex = /^[A-Za-z0-9+]{8,16}$/;
             if(regex.test(document.getElementById("userPw").value )) {
                document.getElementById("userPw").style.borderColor = "green";
                document.getElementById("msgPw").innerHTML = "사용가능합니다";
            } else {
                document.getElementById("userPw").style.borderColor = "red";
                document.getElementById("msgPw").innerHTML = "";
            }
        }
        /*비밀번호 확인검사*/
        var pwConfirm = document.getElementById("pwConfirm");
        pwConfirm.onkeyup = function() {
            var regex = /^[A-Za-z0-9+]{8,16}$/;
            if(document.getElementById("pwConfirm").value == document.getElementById("userPw").value ) {
                document.getElementById("pwConfirm").style.borderColor = "green";
                document.getElementById("msgPw-c").innerHTML = "비밀번호가 일치합니다";
            } else {
                document.getElementById("pwConfirm").style.borderColor = "red";
                document.getElementById("msgPw-c").innerHTML = "비밀번호 확인란을 확인하세요";
            }
        }        
    </script>
