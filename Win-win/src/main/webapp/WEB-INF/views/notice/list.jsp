
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>
    
<style>

</style>

<%@ include file="../include/header.jsp"%>

<div class = "container">
	<div class="p-5">
	<h3 class="text-primary font-weight-bold">공지사항</h3>
	<hr>
	<button class="btn btn-primary float-right">작성</button>
	<table class="table table-striped table-hover table-condensed">
		<thead style="background-color: lightgray; text-align: center; font-size: 16px">
			<tr>
				<td colspan="1">
					<strong>번호</strong>
				</td>
				<td colspan="5">
					<strong>제목</strong>
				</td>
				<td colspan="3">
					<strong>작성일자</strong>
				</td>
				<td colspan="2">
					<strong>작성자</strong>
				</td>
				<td colspan="1">
					<strong>조회수</strong>
				</td>
			</tr>
		</thead>
		<tbody class="text-truncate" style="text-align: center">
		<tr>
			<td colspan="1">
			07
			</td>
			<td colspan="5">
			제목입니다 제목제목제목제목제목제목제목제목제목제목제목제목목제목제목제목제목목제목제목제목제목목제목제목제목제목
			</td>
			<td colspan="3">
			2018.09.24
			</td>
			<td colspan="2">
			관리자
			</td>
			<td colspan="1" class="text-truncate">
			0
			</td>
		</tr>
		</tbody>
	</table>
	
	<div class="form-group d-flex justify-content-center">
		<button type="button" class="btn btn-primary">목록</button>
		<button type="button" class="btn btn-primary ml-2 mr-2">수정</button>
		<button type="button" class="btn btn-primary">삭제</button>
	</div>
	<div class="col-sm-5" style="background-color: blue;">안녕하세요
	</div>
	</div>
</div>



<%@ include file="../include/scriptLoader.jsp"%>

<script>



</script>

<%@ include file="../include/footer.jsp"%>