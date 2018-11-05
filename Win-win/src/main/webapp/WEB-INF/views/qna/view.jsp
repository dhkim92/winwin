
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<%@ include file="../include/CSSLoader.jsp"%>
    
<style>
td{
	font-size: 16px
}
#content{
	max-height: 400px; 
	overflow-x : hidden;
	overflow-y : auto;
	word-wrap: break-word;
	border: 1px dashed lightgrey;
}
.tablediv {
	padding: 0;
}
</style>

<c:if test="${empty adminLogin}">
<%@ include file="../include/header.jsp"%>
</c:if>

<c:if test="${adminLogin }">
<%@ include file="../include/adminHeader.jsp"%>
</c:if>

<div class="container">
<div class = "container">
	<div class="col-12 mt-5">
		<p class="font-weight-bold h3">채용Q&A</p>
		<hr style="border: solid #376092;">
	</div>
	
	<div class="d-flex justify-content-center">
		<div class="tablediv col-11 mt-3" style="border-bottom: 2px solid lightgrey">
			<table class="table table-striped " style="border-bottom: 1px solid lightgrey">
				<tr>
					<th width="10%">글번호 <span class="ml-2">${board.qnaNo}</span></th>
					<th width="30%">제목 <span class="ml-3">${board.title}</span></th>
					<th width="15%">작성자 <span class="ml-3">${board.writer }</span></th>
					<th width="15%">작성일<span class="ml-3"><fmt:formatDate value="${board.writedate}" pattern="yyyy-MM-dd" /></span></th>
					<th width="15%">답변자<span class="ml-3">${board.asw_writer }</span></th>
					<th width="15%">답변일<span class="ml-3"></span></th>
				</tr>
			</table>
		</div>
	</div>
	
	<div class="d-flex justify-content-center">
		<div class="col-11 mt-3" id="content">
			<p class="mt-4">
				${board.content }
			</p>
			<div class="text-right" id="aswBox">
				<button type="button" class="btn btn-primary" onclick="onAsw();">답변하기</button>
			</div>
		</div>
	</div>

	

	<br>
	<div id="btns" class="form-group d-flex justify-content-center">
		<button id="btnList" type="button" class="btn btn-primary">목록</button>
		<button id="btnUpdate" type="button" class="btn btn-primary ml-2 mr-2">수정</button>
		<button id="btnDel" type="button" class="btn btn-primary">삭제</button>
	</div>
	<br><br><br>
	
	<div class="col-12 mt-5" id="commentList">
		<i class="far fa-comment-dots mr-2" onclick="onComment();"></i><label onclick="onComment();">댓글 목록(0)</label>
		<hr class="mt-1">
	</div>
	
	<div class="col-12 mt-5">
		<p class="font-weight-bold h3">댓글남기기</p>
		<hr style="border: solid #376092;">
	</div>
	
	<div class="d-flex justify-content-center">
		<div id="commentBox" class="form-inline col-12">
			<textarea class="form-control col-md-11" placeholder="댓글을 남겨주세요" rows="4" cols="" style="display:inline-block;"></textarea>
			<button class="btn btn-primary col-md-1" style="display:inline-block;height:100px">댓글등록</button>
		</div>
	</div>
</div>
</div>



<%@ include file="../include/scriptLoader.jsp"%>

<script>
$("#btnList").click(function(){
	$(location).attr("href","/qna/list");
});
$("#btnUpdate").click(function(){
	$(location).attr("href","/qna/update?qnaNo="+${board.qnaNo});
});
$("#btnDel").click(function(){
	$(location).attr("href","/qna/delete?qnaNo="+${board.qnaNo});
});
function onAsw(){
	$("#aswBox").html("");
	var text = "<textarea rows='8' class='form-control' placeholder='답변하기'></textarea>";
	var button1 = "<button type='button' class='btn btn-primary mr-1' onclick='btnAsw();'>등록</button>";
	var button2 = "<button type='button' class='btn btn-primary' onclick='offAsw();'>취소</button>";
	$("#aswBox").append(text);
	$("#aswBox").append(button1);
	$("#aswBox").append(button2);
}
function offAsw(){
	$("#aswBox").html("");
	var button1 = "<button type='button' class='btn btn-primary' onclick='onAsw();'>답변하기</button>"
	$("#aswBox").append(button1);
}
function onComment(){
	console.log("댓글 열림");
}
</script>

<%@ include file="../include/footer.jsp"%>