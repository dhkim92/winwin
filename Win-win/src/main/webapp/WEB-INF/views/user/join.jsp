<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<body>
<h1>회원가입 페이지</h1>
<hr>
<form action="/user/join" method="post">
		한글이름 : <input type="text" name="username"><br>
		이메일 주소 : <input type="email" name="userid">
		<button id="btnOverlap">중복확인</button><br>
		전화번호 : <input type="text" name="phone"><br>
		패스워드 : <input type="password" name="password" /><br>
		<input type="submit" value="가입" />
	</form>
	<br>
	<a href="/user/main" role="button" aria-pressed="true">메인으로</a>
</body>
</html>