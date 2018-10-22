<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
th {
	font-size: 14px;
}
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
		<p class="font-weight-bold h3">채용공고</p>
		<hr style="border: solid #376092;">
	</div>
	
	<div class="mt-4">
		<table class="table table-sm col-md-11 table-hover table-bordered" align="center">
			<thead class="thead-light">
				<tr>
					<th>채용공고 알림</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td>&nbsp;<i class="fas fa-lightbulb text-danger"></i>&nbsp;채용공고 작성가이드</td>
				</tr>
			</tbody>
		</table>
	
	</div>

	<div class="mt-4">
		<table class="table table-sm col-md-11 table-hover text-center" align="center">
			<thead class="thead-light">
				<tr>
					<th>번호</th>
					<th>구분</th>
					<th>제목</th>
					<th>게시기간</th>
					<th>조회수</th>
					<th>진행상황</th>
				</tr>
			</thead>
		
	<%-- 	<c:forEach items="${list }" var="board"> --%>
	<!-- 	<tr> -->
	<%-- 		<td>${board.boardNo }</td> --%>
	<!-- 		<td> -->
	<%-- 			<a href="/board/view?boardNo=${board.boardNo }">${board.title }</a> --%>
	<!-- 		</td> -->
	<%-- 	<%-- 	<td>${board.title }</td> --%>
	<%-- 		<td>${board.writerNick }</td> --%>
	<%-- 		<td>${board.hit }</td> --%>
	<%-- 		<td><fmt:formatDate value="${board.writeDate}" pattern="yyyy-MM-dd" /></td> --%>
	<%-- 	<%-- 	<td>${board.writeDate }</td> --%>
	<!-- 	</tr> -->
	<%-- 	</c:forEach> --%>
	
		</table>
	</div>
	
	<div class=" d-flex justify-content-center">
	  <ul class="pagination">
	    <li class="page-item">
	      <a class="page-link" href="#">&laquo;</a>
	    </li>
	    <li class="page-item active">
	      <a class="page-link" href="#">1</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">2</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">3</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">4</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">5</a>
	    </li>
	    <li class="page-item">
	      <a class="page-link" href="#">&raquo;</a>
	    </li>
	  </ul>
	</div>
	
</div>
</div>

<%@ include file="../include/scriptLoader.jsp"%>
<%@ include file="../include/footer.jsp"%>