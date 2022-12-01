<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>앞패블로그</div>
	<form action = "/login.do" method="post">
		<div>
			아이디 : <input type="text">
		</div>
		<div>
			비밀번호 : <input type="password">
		</div>
		<input type="submit">
	</form>
	<button type="button" onclick="location.href='/joinFrm.do'">회원가입</button>
</body>
</html>