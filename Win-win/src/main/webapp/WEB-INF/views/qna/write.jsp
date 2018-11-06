
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/CSSLoader.jsp"%>
    
<style>
#content{
	width : 99%
}
tr{
	font-size: 16px;
}
</style>

<%@ include file="../include/header.jsp"%>

<div class = "container">
	<form action="/qna/write" method="post">
	<div class="p-5">
	<h3 class="font-weight-bold">채용Q&A</h3>
	<hr style="border: solid #376092;">
	<table class="table table-sm table-bordered">
		<tr style="background-color:lightgray;">
			<td class="text-center align-middle" >
				<strong>제목</strong>
			</td>
			<td class="text-center">
				<input type="text" class="form-control" name="title" id="title" value="${board.title }" placeholder="제목을 적으세요(66자 이내)"/>
			</td>
			<td class="text-center align-middle">
				<strong>비밀번호</strong>
			</td>
			<td class="text-center">
				<input type="password" class="form-control" name="pw" id="pw" placeholder="비밀번호를 입력하세요"/>
			</td>
		</tr>
		<tr>
			<td class="text-center">
				작성자
			</td>
			<td class="text-center">
				${sessionScope.name }
			</td>
			<td class="text-center">
				작성일
			</td>
			<td class="text-center" id="today">
			</td>
		</tr>
	</table>
	<div class="p-5">
		<textarea class="form-control" name="content" rows="20" id="content"></textarea>
	</div>
	</div>
		
		<input type="hidden" name="userId" value="${sessionScope.id }"/>
		<input type="hidden" name="writer" value="${sessionScope.name }"/>
	</form>
	<div class="form-group d-flex justify-content-center">
		<button type="button" id="btnWrite" class="btn btn-primary">작성</button>
		<button type="button" id="btnCancel" class="btn btn-primary ml-2">취소</button>
	</div>
</div>



<%@ include file="../include/scriptLoader.jsp"%>

<script type="text/javascript"
 src="/resources/se2/js/HuskyEZCreator.js"></script>
  <script type="text/javascript" 
 src="/resources/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>
<script>
$(document).ready(function() {
	var time = new Date();
	var today = time.getFullYear()+"년 "+(time.getMonth()+1)+"월 "+time.getDate()+"일";
	$("#today").text(today);
	
	$("#btnCancel").click(function() {
		history.go(-1);
	});
	$("#btnWrite").click(function() {
		submitContents($(this));
		$("form").submit();
	});
});
</script>
<script type="text/javascript">
var oEditors = [];
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


//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
function submitContents(elClickedObj) {
    // 에디터의 내용이 textarea에 적용된다.
    oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);

    // 에디터의 내용에 대한 값 검증은 이곳에서
    // document.getElementById("ir1").value를 이용해서 처리한다.
    try {
        elClickedObj.form.submit();
    } catch(e) {}
}
function pasteHTML(filepath){
	var sHTML = '<img src="/resources/image/'+filepath+'">';
    oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
}
</script>


<%@ include file="../include/footer.jsp"%>