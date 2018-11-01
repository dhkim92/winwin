<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<p class="font-weight-bold h3">채용Q&A</p>
		<hr style="border: solid #376092;">	
	</div>
	
	<div class="d-flex justify-content-center">
		<table class="table table-sm col-md-11 table-hover table-bordered" align="center">
			<thead class="thead-light">
				<tr>
					<th>문의사항 게시판 알림</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td>&nbsp;<i class="fas fa-lightbulb text-danger"></i>&nbsp;문의사항 게시판 작성가이드</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<c:if test="${adminLogin }">
		<div id="btn" class="text-right">
			<button id="btnWrite" class="btn btn-primary mr-3">작성</button>
		</div>
	</c:if>

	<div class="d-flex justify-content-center">
		<table class="table table-sm col-md-11 table-hover text-center">
			<thead class="thead-light">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>답변여부</th>
					<th>작성일자</th>
					<th>작성자</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${list }" var="board">
				<tr>
					<td>${board.qnaNo }</td>					
					<td><i class="fas fa-lock mr-2"></i><a href="/notice/view?noticeno=${board.qnaNo}" style="text-decoration: none">${board.title }</a></td>
					<td>
						<c:if test="${board.asw_code ne null }">
							<i class="fas fa-check ml-2"></i>
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
	
	<jsp:include page="/WEB-INF/views/util/qnapaging.jsp" />
	
	</div>
</div>

<%@ include file="../include/scriptLoader.jsp"%>

<script>



</script>

<%@ include file="../include/footer.jsp"%>