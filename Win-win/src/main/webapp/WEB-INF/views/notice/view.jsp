
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ include file="../include/CSSLoader.jsp"%>
    
<style>

</style>

<%@ include file="../include/header.jsp"%>

<div class = "container">
<div class= "container">

	<div class="col-12 mt-5">
		<p class="font-weight-bold h3">공지사항</p>
		<hr style="border: solid #376092;">
	</div>

	<div class="d-flex justify-content-center">
		<div class="tablediv col-11 mt-3" style="border-bottom: 2px solid lightgrey">
			<table class="table table-striped " style="border-bottom: 1px solid lightgrey">
				<tr>
					<th width="15%">글번호 <span class="ml-2">${board.noticeno }</span></th>
					<th width="40%">제목 <span class="ml-3">${board.title }</span></th>
					<th width="15%">작성자 <span class="ml-3">${board.writer }</span></th>
					<th width="10%">조회수<span class="ml-2">${board.hit }</span></th>
					<th width="20%">작성일<span class="ml-3"><fmt:formatDate value="${board.writedate}" pattern="yyyy-MM-dd" /></span></th>
				</tr>
			</table>
			<div class="text-right mb-2">
				<i class="fas fa-download mr-2"></i>첨부된 파일(0)
			</div>			
		</div>
	</div>
	
	<div class="d-flex justify-content-center">
		<div class="col-11 mt-3" style="border: 1px dashed lightgrey;">	
		    <p class="mt-4">
				${board.content}
			</p>
		</div>
	</div>	
	
	<div class="d-flex justify-content-center">
		<div class="col-11 mt-3" style="border-top: 2px solid lightgrey; ">
	    	<div id="btns" class="form-group d-flex justify-content-center mt-3 mb-2 " style="margin-bottom: 0px;">
				<button id="btnList" type="button" class="btn btn-primary btn-sm">목록</button>
				<button id="btnUpdate" type="button" class="btn btn-primary btn-sm ml-2 mr-2">수정</button>
				<button id="btnDel" type="button" class="btn btn-sm btn-primary">삭제</button>
			</div>
		</div>
	</div>
</div>
</div>


<%@ include file="../include/scriptLoader.jsp"%>

<script>
$("#btnList").click(function(){
	$(location).attr("href","/notice/list");
});
$("#btnUpdate").click(function(){
	$(location).attr("href","/notice/update?noticeno="+${board.noticeno});
});
$("#btnDel").click(function(){
	$(location).attr("href","/notice/delete?noticeno="+${board.noticeno});
});
</script>

<%@ include file="../include/footer.jsp"%>