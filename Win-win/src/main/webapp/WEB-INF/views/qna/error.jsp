<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ include file="../include/CSSLoader.jsp"%>
<style>

</style>

<c:if test="${empty adminLogin}">
<%@ include file="../include/header.jsp"%>
</c:if>

<c:if test="${adminLogin }">
<%@ include file="../include/adminHeader.jsp"%>
</c:if>
<div class="container">
<div class="container">
	<div class="col-12 mt-5">
		<p class="font-weight-bold h3">해당 페이지의 요청 권한이 없습니다</p>
		<hr style="border: solid #376092;">
		로그인 정보와 게시판 정보가 일치하지 않습니다.<br>
		로그인 정보를 다시 한번 확인해 보세요.<br><br>
		<a href="/qna/view?qnaNo=${board.qnaNo }">게시글로 이동</a><br>
		<a href="/qna/list">목록으로</a><br>
	</div>
</div>
</div>
<%@ include file="../include/scriptLoader.jsp"%>
<script>
</script>
<%@ include file="../include/footer.jsp"%>