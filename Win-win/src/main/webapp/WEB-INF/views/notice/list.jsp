<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/CSSLoader.jsp"%>

<style>
th,td {
	font-size: 16px;
}
</style>

<%@ include file="../include/header.jsp"%>

<div class = "container">
	<div class="container">
	<div class="col-12 mt-5">
		<p class="font-weight-bold h3">공지사항</p>
		<hr style="border: solid #376092;">
	</div>
	<div id="btn" class="text-right">
		<button class="btn btn-primary mr-3">작성</button>
	</div>	
	<div class="d-flex justify-content-center">
		<table class="table table-sm col-md-11 table-hover text-center">
			<thead class="thead-light">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성일자</th>
					<th>작성자</th>
					<th>조회수</th>
				</tr>
			</thead>
		<tbody>
		<c:forEach items="${list }" var="board">
		<tr>
			<td>${board.noticeno }</td>
			<td><a href="/notice/view?noticeno=${board.noticeno}">${board.title }</a></td>
			<td><fmt:formatDate value="${board.writedate}" pattern="yyyy-MM-dd" /></td>
			<td>${board.writer }</td>
			<td>${board.hit }</td>	
		</tr>
		</c:forEach>
		</tbody>
		</table>
	</div>
	<br>
	<jsp:include page="/WEB-INF/views/util/noticepaging.jsp" />

	</div>
</div>



<%@ include file="../include/scriptLoader.jsp"%>

<script>



</script>

<%@ include file="../include/footer.jsp"%>