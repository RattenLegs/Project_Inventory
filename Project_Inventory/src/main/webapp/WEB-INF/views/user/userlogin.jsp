<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 해주세요.</title>
</head>
<body>

	<form action="/home" method="post">

		<fieldset>
			<legend>로그인</legend>
			# ID <input type="text" name="userId" size="10"><br> #
			비밀번호 <input type="text" name="userPw" size="10"><br> <input
				type="submit" value="로그인">
		</fieldset>
	</form>

<div>
			<p><a href="<c:url value='/user/userJoin'/>">회원가입</a></p>
</div>
</body>
</html>