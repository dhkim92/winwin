
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<strong>2018년 하반기 채용 금지</strong>
			</td>
		</tr>
		<tr>
			<td class="text-center">
			작성일
			</td>
			<td class="text-center">
			2018.09.24
			</td>
		</tr>
		<tr>
			<td class="text-center">
			첨부파일
			</td>
			<td class="text-center">
			<a href="notice/download">파일01.text</a>
			</td>
		</tr>
	</table>
	<div id="content">
	여기에 게시글의 내용이 보입니다
	이미지도 볼 수 있습니다
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