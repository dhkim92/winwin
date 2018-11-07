
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<%@ include file="../include/CSSLoader.jsp"%>
    
<style>
td{
	font-size: 16px
}
#contentBox{
	max-height: 600px; 
	overflow-x : hidden;
	overflow-y : auto;
	word-wrap: break-word;
	border: 1px dashed lightgrey;
}
.tablediv {
	padding: 0;
}
#content{
	width : 99%;
}

#contentBox p{
	margin-bottom: 0px;
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
		<p class="font-weight-bold h3">채용Q&A</p>
		<hr style="border: solid #376092;">
	</div>
	
	<div class="d-flex justify-content-center">
		<div class="tablediv col-11 mt-3" style="border-bottom: 2px solid lightgrey">
			<table class="table table-striped" style="border-bottom: 1px solid lightgrey">
				<tr>
					<th width="10%">글번호 <span class="ml-2" id="qnaNo">${board.qnaNo}</span></th>
					<th width="30%">제목 <span class="ml-3">${board.title}</span></th>
					<th width="15%">작성자 <span class="ml-3">${board.writer }</span></th>
					<th width="15%">작성일<span class="ml-3"><fmt:formatDate value="${board.writedate}" pattern="yyyy-MM-dd" /></span></th>
					<th width="15%">답변자<span class="ml-3" id="aswWriter">${board.asw_writer }</span></th>
					<th width="15%">답변일<span class="ml-3" id="aswDate"><fmt:formatDate value="${board.asw_date}" pattern="yyyy-MM-dd" /></span></th>
				</tr>
			</table>
		</div>
	</div>
	
	<div class="d-flex justify-content-center">
		<div class="col-11 mt-3" id="contentBox">
			<div class="mt-4">
				${board.content }<br>
			</div>
			<c:if test="${board.asw_code ne null }">
			<div id="res">
				<hr style="border: dotted #376092;">
				[답변내용]<br>							
				안녕하세요 ${board.writer }님,<br>
				<div>
				${board.asw_content }
				</div>			
				답변 내용에 대해 궁금하신 부분은 댓글을 남겨주시기 바랍니다.<br>
				감사합니다.<br>
			</div>
			</c:if>
			<c:if test="${board.asw_code eq null }" >
				<div class="text-right" id="aswBox">
					<button type="button" id="onAsw" class="btn btn-primary" onclick="onAsw();">답변하기</button>
					<textarea style="display: none" rows="8" class="form-control" id="content" placeholder="답변하기"></textarea>
				</div>
			</c:if>
			<c:if test="${board.asw_code ne null }" >
				<div class="text-right" id="aswBox">
					<button type="button" id="onAsw" class="btn btn-primary" onclick="onAsw();">수정하기</button>
					<button type="button" id="delAsw" class="btn btn-danger" onclick="delAsw();">답변삭제</button>
					<textarea style="display: none" rows="8" class="form-control" id="content" placeholder="답변하기"></textarea>
				</div>
			</c:if>
		</div>
	</div>

	<input type="hidden" id="code" value="${sessionScope.admincode }"/>
	<input type="hidden" id="writer" value="${sessionScope.adminname }"/>
	<input type="hidden" id="asw_content" value="${board.asw_content }"/>	
		
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

<script type="text/javascript"
 src="/resources/se2/js/HuskyEZCreator.js"></script>
  <script type="text/javascript" 
 src="/resources/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>
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
	$("#onAsw").css("display","none");
	$("#content").css("display","block");
	if($("#aswWriter").val() !=""){
		$("#content").val($("#asw_content").val());
	}	
	var button1 = "<button type='button' class='btn btn-primary mr-1' onclick='btnAsw();'>등록</button>";	
	var button2 = "<button type='button' class='btn btn-primary mr-4' onclick='offAsw();'>취소</button><br><br>";
	$("#aswBox").append(button1);
	$("#aswBox").append(button2);
	onSe();
}
function offAsw(){
	$("#aswBox").html("");
	if($("#aswWriter").val() ==""){
		var button1 = "<button type='button' id='onAsw' class='btn btn-primary' onclick='onAsw();'>답변하기</button>";
	}else{
		var button1 = "<button type='button' id='onAsw' class='btn btn-primary' onclick='onAsw();'>수정하기</button>";
	}
	var textarea = "<textarea style='display: none' rows='8' class='form-control' id='content' placeholder='답변하기'></textarea>";
		$("#aswBox").append(button1);
		$("#aswBox").append(textarea);
}
function delAsw(){
	var qnaNo = $("#qnaNo").text();
	var aswData = {"qnaNo":qnaNo,"word":"del"};
	$.ajax({
		type:"post"
		,url : "/qna/asw"
		,data : aswData
		,success : function(){
			$("#res").html("");
			$("#resDate").html("");
			$("#aswWriter").html("");
			alert("삭제완료");				
		}
	});
}
function btnAsw(){
	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
	var content = $("#content").val();
	if(content==""){
		alert("답변내용을 입력하세요");
	}else{
		var qnaNo = $("#qnaNo").text();
		var code = $("#code").val();
		var writer = $("#writer").val();
		var aswData = {"qnaNo":qnaNo,"asw_code":code,"asw_writer":writer,"asw_content":content,"word":"add"};
		console.log(aswData);
		$.ajax({
			type:"post"
			,url : "/qna/asw"
			,data : aswData
			,dataType : "json"
			,success : function(data){			
				$("#res").html("");
				$("#res").append("<hr style='border: dotted #376092;'>[답변내용]<br>안녕하세요 ${board.writer }님,<br><div>");
				$("#res").append(data.board.asw_content);
				$("#res").append("</div>답변 내용에 대해 궁금하신 부분은 댓글을 남겨주시기 바랍니다.<br>감사합니다.");
				var asw_date = "<fmt:formatDate value='${board.asw_date}' pattern='yyyy-MM-dd' /></span>";
				$("#resDate").html(asw_date);
				$("#aswWriter").html(data.board.asw_writer);
				offAsw();
				alert("답변완료");
				
				[답변내용]<br>							
				안녕하세요 ${board.writer }님,<br>
				<div>
				${board.asw_content }
				</div>			
				답변 내용에 대해 궁금하신 부분은 댓글을 남겨주시기 바랍니다.<br>
				감사합니다.
			}
			,error : function(){
				alert("처리과정에 오류가 있습니다");
			}			
		});
	}
}
function onComment(){
	console.log("댓글 열림");
}

function onSe(){
	nhn.husky.EZCreator.createInIFrame({
    	oAppRef: oEditors,
    	elPlaceHolder: "content",
    	sSkinURI: "/resources/se2/SmartEditor2Skin.html",
    	fCreator: "createSEditor2",
    	htParams : {
    		bUseToolbar: true, // 툴바 사용여부
    		bUseVerticalResizer: false, //입력창 크기 조절바
    		bUseModeChanger: true //모드 탭
    	}
	});
}
var oEditors = [];
//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
function pasteHTML(filepath){
	var sHTML = '<img src="/resources/image/'+filepath+'">';
    oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
}
</script>

<%@ include file="../include/footer.jsp"%>