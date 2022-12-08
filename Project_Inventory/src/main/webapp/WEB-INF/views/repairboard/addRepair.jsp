<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수선 등록 양식</title>
</head>
<body>
<form action="/repairboard/addRepairCheck" method="post">
	<fieldset>
		<legend>등록 양식</legend>
		<p>

		# 번호 <input type="text" name="num" size="10"> <br> 
		# 접수일 <input type="text" name="startDay" size="10"> <br> 
		# 이름 <input type="text" name="name" size="10"> <br> 
		# 연락처 <input type="text" name="phoneNumber" size="10"> <br> 
		# 디자인 <input type="text" name="design" size="10"> <br> 
		# 내용 <input type="text" name="text" size="10"> <br> 
		# 약속일 <input type="text" name="promiseDay" size="10"> <br> 
		# 납품일 <input type="text" name="endDay" size="10"> <br> 
		# 비고 <input type="text" name="etc" size="10"> <br> 
		
		<input type="submit" value="확인">
		</p>
	</fieldset>
	
	</form>
</body>
</html>