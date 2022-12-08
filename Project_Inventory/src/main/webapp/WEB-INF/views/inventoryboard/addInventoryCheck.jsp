<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록하시겠습니까?</title>
</head>
<body>
	
	<p>등록하실거에요?</p>
	<p>
	${shoeGender}, ${design}, ${color}, ${size}, ${num}, ${price}, ${sum}
	</p>
	<button type="button" class="yes" onclick="goInventoryList();">네</button>
	<!-- 화면 in 화면을 거쳐 goInventoryList로 갈 예정 -->
	
	<button type="button" onclick="goInventoryList();">아니오</button>
	
</body>
</html>

<script>

function goInventoryList(){
    location.href = "/inventoryboard/inventoryList";
}

</script>