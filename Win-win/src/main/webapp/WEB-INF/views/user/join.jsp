<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../jobOpen/include/CSSLoader.jsp"%>

<style>
</style>
<%@ include file="../jobOpen/include/header.jsp"%>


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

	
<%@ include file="../jobOpen/include/scriptLoader.jsp"%>

<script>



</script>

<%@ include file="../jobOpen/include/footer.jsp"%>