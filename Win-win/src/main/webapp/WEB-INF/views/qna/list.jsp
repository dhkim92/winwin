<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ include file="../include/CSSLoader.jsp"%>
    
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

<div class = "container">
<div class="container">
	<div class="col-12 mt-5">
		<p class="font-weight-bold h3">채용Q&A</p>
		<hr style="border: solid #376092;">
		
	</div>
		<div class="mt-4">
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
	
	<div id="btn" class="text-right">
		<button class="btn btn-primary mr-3">작성</button>
	</div>	
	<div class="mt-4">
		<table class="table table-sm col-md-11 table-hover text-center" align="center">
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
				<tr>
					<th>2018</th>
					<th><i class="fas fa-lock mr-2"></i>문의합니다<i class="fas fa-check ml-2"></i></th>
					<th>2018.01.02</th>
					<th>이현우</th>
					<th>0</th>
				</tr>
				<tr>
					<th>2017</th>
					<th><i class="fas fa-lock-open mr-2"></i>저번에 문의했던...</th>
					<th>2018.01.01</th>
					<th>이현우</th>
					<th>0</th>
				</tr>
			</tbody>
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

<script>



</script>

<%@ include file="../include/footer.jsp"%>