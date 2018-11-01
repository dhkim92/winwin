
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%@ include file="../include/CSSLoader.jsp"%>
    
<style>
#content{
	width : 99%
}
td{
	font-size: 16px;
}
</style>

<%@ include file="../include/adminHeader.jsp"%>

<div class = "container">
	<form id="upFile" action="/notice/write" method="post" enctype="multipart/form-data">	
	<div class="p-5">
	<h3 class="text-primary font-weight-bold">공지사항</h3>
	<hr style="border: solid #376092;">
	<table class="table table-sm table-bordered table-hover">
		<tr>
			<td class="align-middle text-center" style="background-color:lightgray; width: 300px">
				<strong>제목</strong>
			</td>
			<td class="text-center" style="background-color: lightgray;">
				<input type="text" class="form-control" name="title" placeholder="제목을 적으세요(66자 이내)"/>
			</td>
		</tr>
		<tr>
			<td class="text-center">
			작성일
			</td>
			<td class="text-center">
			2018.09.24
			</td>
		</tr>
		<tr>
			<td class="text-center">
			첨부파일
			</td>
			<td class="text-center">
				<input type="file" multiple="multiple" name="files" />
			</td>
		</tr>
	</table>
	<div class="p-5">
		<textarea class="form-control" rows="20" name="content" id="content"></textarea>
	</div>
	</div>
	
	<input type="hidden" name="code" value="${sessionScope.admincode }"/>
	<input type="hidden" name="writer" value="${sessionScope.adminname }"/>
	
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