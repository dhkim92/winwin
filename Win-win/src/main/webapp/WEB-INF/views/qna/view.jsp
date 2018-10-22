
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>
    
<style>

</style>

<%@ include file="../include/header.jsp"%>

<div class = "container">
	<div class="p-5">
	<h3 class="text-primary font-weight-bold">채용Q&A</h3>
	<hr style="border: solid #376092;">
	<table class="table table-sm table-striped table-hover table-condensed">
		<tr>
			<td style="width:150px;text-align: center;font-size: 16px">
				<strong>제목</strong>
			</td>
			<td style="width:750px;text-align: center;font-size: 16px">
				<strong>2018년 하반기 채용 금지</strong>
			</td>
		</tr>
		<tr>
			<td style="width:100px;text-align: center">
			작성자
			</td>
			<td style="width:350px;text-align: center">
			이현우
			</td>
			<td style="width:100px;text-align: center">
			작성일
			</td>
			<td style="width:350px;text-align: center">
			2018.09.24
			</td>
		</tr>
	</table>
	<div id="content">
	여기에 게시글의 내용이 보입니다.<br>
	질문 내용이 포함됩니다.<br>
	밑에 답변버튼을 누르면 답변하기를 할 수 있습니다.<br>
	</div>
	<div id="aswBox" class="text-right">
		<button type="button" class="btn btn-primary" onclick="onAsw();">답변하기</button>
	</div>
	<br>
	<div id="btns" class="form-group d-flex justify-content-center">
		<button type="button" class="btn btn-primary">목록</button>
		<button type="button" class="btn btn-primary ml-2 mr-2">수정</button>
		<button type="button" class="btn btn-primary">삭제</button>
	</div>
	<br><br><br><br><br>
	<h3 class="font-weight-bold">댓글 남기기</h3>
	<hr style="border: solid #376092;">
	<div id="commentBox" class="form-inline text-center">
		<textarea class="form-control col-md-11" placeholder="댓글을 남겨주세요" rows="5" cols="" style="display:inline-block;"></textarea>
		<button class="btn btn-primary col-md-1" style="display:inline-block;height:130px">댓글등록</button>
	</div>
	</div>
</div>



<%@ include file="../include/scriptLoader.jsp"%>

<script>
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
</script>

<%@ include file="../include/footer.jsp"%>