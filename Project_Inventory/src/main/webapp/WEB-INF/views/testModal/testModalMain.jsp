<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

.modal {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: #ffffff;
  box-shadow: 0 2px 7px rgba(0, 0, 0, 0.3);
  
  /* 임시 지정 */
  width: 25%;
  height: 25%;
  
  /* 초기에 약간 아래에 배치 */
  transform: translate(-50%, -40%);
}

.modalOpen .modal {
  transform: translate(-50%, -50%);
  transition: all .5s;
}

</style>
<title>testModalMain</title>
<%-- <%@ include file="../../views/include/header.jsp"%> --%>
</head>
<body>

<button id="modalOpen">모달 열기</button>

<div class="background">
  <div class="window">
    <div class="modal">
      <button id="modalClose">모달 닫기</button>
    </div>
  </div>
</div>

<%-- <%@ include file="../../views/include/footer.jsp"%> --%>

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
      document.querySelector(".background").addEventListener("click", close); //바깥 클릭시에도 닫히게 하기

    </script>

</html>