
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ include file="../include/CSSLoader.jsp"%>
    
<style>
tr{
	font-size: 16px
}
</style>

<%@ include file="../include/header.jsp"%>

<div class = "container">
	<div class="p-5">
	<h3 class="text-primary font-weight-bold">공지사항</h3>
	<hr style="border: solid #376092;">
	<table class="table table-sm table-bordered table-hover">
		<tr>
			<td class="text-center" style="width:300px;background-color: lightgray">
				<strong>제목</strong>
			</td>
			<td class="text-center" style="background-color: lightgray">
				<strong>${board.title}</strong>
			</td>
		</tr>
		<tr>
			<td class="text-center">
			작성일
			</td>
			<td class="text-center">
			<fmt:formatDate value="${board.writedate}" pattern="yyyy-MM-dd" />
			</td>
		</tr>
		<tr>
			<td class="text-center">
			첨부파일
			</td>
			<td class="text-center">
			<a href="notice/download">파일.text</a>
			</td>
		</tr>
	</table>
	<div id="content">
	${board.content}
	</div>
	<div id="btns" class="form-group d-flex justify-content-center">
		<button type="button" class="btn btn-primary">목록</button>
		<button type="button" class="btn btn-primary ml-2 mr-2">수정</button>
		<button type="button" class="btn btn-primary">삭제</button>
	</div>
	</div>
</div>



<%@ include file="../include/scriptLoader.jsp"%>

<script>



</script>

<%@ include file="../include/footer.jsp"%>