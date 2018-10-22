
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>
    
<style>
th {
	font-size: 14px;
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