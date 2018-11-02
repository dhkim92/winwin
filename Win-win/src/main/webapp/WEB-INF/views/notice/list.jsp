<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/CSSLoader.jsp"%>

<style>
th {
	font-size: 15px;
}
td {
	font-size: 14px;
}
</style>

<c:if test="${empty adminLogin}">
<%@ include file="../include/header.jsp"%>
</c:if>

<c:if test="${adminLogin }">
<%@ include file="../include/adminHeader.jsp"%>
</c:if>

<div class = "container">
	<div class="container">
	<div class="col-12 mt-5">
		<p class="font-weight-bold h3">공지사항</p>
		<hr style="border: solid #376092;">
	</div>
		
	<div class="d-flex justify-content-center">
		<table class="table table-sm col-md-11 table-hover text-center">
			<thead class="thead-light">
				<tr>
					<th width="13%">번호</th>
					<th class="truncated" width="50%">제목</th>
					<th width="4%"><th>
					<th width="11%">작성일자</th>
					<th width="11%">작성자</th>
					<th width="11%">조회수</th>
				</tr>
			</thead>
		<tbody>
		<c:forEach items="${list }" var="board">
		<tr>
			<td>${board.noticeno }</td>
			<td><a href="/notice/view?noticeno=${board.noticeno}" style="text-decoration: none">${board.title }</a></td>
			<td>
			<c:if test="${board.filesCnt ne 0 }">
				<span class="badge badge-pill badge-secondary">파일첨부</span>
			</c:if>
			<td>
			<td><fmt:formatDate value="${board.writedate}" pattern="yyyy-MM-dd" /></td>
			<td>${board.writer }</td>
			<td>${board.hit }</td>	
		</tr>
		</c:forEach>
		</tbody>
		</table>
	</div>
	
	<c:if test="${adminLogin }">
		<div id="btn" class="text-right">
			<button id="btnWrite" class="btn btn-primary mr-3">작성</button>
		</div>
	</c:if>
	<br>
	
	<jsp:include page="/WEB-INF/views/util/noticepaging.jsp" />

	</div>
</div>

<%@ include file="../include/scriptLoader.jsp"%>

<script>
$("#btnWrite").click(function(){
	$(location).attr("href","/notice/write");
});
</script>

<%@ include file="../include/footer.jsp"%>