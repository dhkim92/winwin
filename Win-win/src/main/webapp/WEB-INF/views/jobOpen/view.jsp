<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>

<style>

.card-body {
	padding: 0;
}

.tablediv {
	padding: 0;
}

</style>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
		
	<div class="d-flex justify-content-center">
		<div class="tablediv col-11 mt-3" style="border-bottom: 2px solid lightgrey">
			<table class="table table-striped " style="border-bottom: 1px solid lightgrey">
				<tr>
					<th width="15%">글번호 <span class="ml-2">33</span></th>
					<th width="45%">제목 <span class="ml-3">채용공고 타이틀 1</span></th>
					<th width="15%">작성자 <span class="ml-3">유승리</span></th>
					<th width="10%">조회수<span class="ml-2">12</span></th>
					<th width="15%">작성일<span class="ml-3">2018-10-26</span></th>
				</tr>
			</table>
		</div>
	</div>

	<div class="d-flex justify-content-center">
		<div class="col-11 mt-3" style="border: 1px dashed lightgrey;">	
		    <p class="mt-4">
			    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet magna sed massa ultrices rhoncus. Praesent suscipit, magna et congue tristique, nisl dolor bibendum diam, a volutpat lacus purus non eros. Mauris dignissim, dui quis dapibus finibus, dui lorem egestas mauris, vel porta ex arcu at ante. Curabitur non pellentesque libero. Proin in quam porta mauris commodo ornare. Nulla pretium justo eget ex rhoncus pulvinar. Donec at aliquam mauris, eu interdum ipsum. Cras ornare interdum elit, quis consectetur leo imperdiet nec. Praesent et odio pretium, vehicula nibh et, gravida mauris. Sed dictum ultrices velit, id elementum ligula. Morbi et rhoncus orci. Phasellus finibus rhoncus ex, ac rhoncus enim accumsan ac.
		
				Sed tempus in nibh a mollis. Curabitur convallis elementum facilisis. Maecenas eu ex magna. Aliquam odio purus, volutpat fringilla enim id, tincidunt tincidunt mi. Etiam fermentum magna vel aliquam laoreet. Aenean commodo, nibh nec porta vehicula, lacus nunc tempor nunc, at sollicitudin mi lectus et purus. Sed pulvinar sed massa gravida dictum. Etiam molestie justo eros. Phasellus eu ultrices magna, sit amet pellentesque urna. Sed in malesuada libero. Nunc ut leo eget lacus dictum semper. Duis lacinia lobortis malesuada. Nunc laoreet ullamcorper pharetra.
			</p>
		    <p class="mt-4">
		    	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet magna sed massa ultrices rhoncus. Praesent suscipit, magna et congue tristique, nisl dolor bibendum diam, a volutpat lacus purus non eros. Mauris dignissim, dui quis dapibus finibus, dui lorem egestas mauris, vel porta ex arcu at ante. Curabitur non pellentesque libero. Proin in quam porta mauris commodo ornare. Nulla pretium justo eget ex rhoncus pulvinar. Donec at aliquam mauris, eu interdum ipsum. Cras ornare interdum elit, quis consectetur leo imperdiet nec. Praesent et odio pretium, vehicula nibh et, gravida mauris. Sed dictum ultrices velit, id elementum ligula. Morbi et rhoncus orci. Phasellus finibus rhoncus ex, ac rhoncus enim accumsan ac.
		
				Sed tempus in nibh a mollis. Curabitur convallis elementum facilisis. Maecenas eu ex magna. Aliquam odio purus, volutpat fringilla enim id, tincidunt tincidunt mi. Etiam fermentum magna vel aliquam laoreet. Aenean commodo, nibh nec porta vehicula, lacus nunc tempor nunc, at sollicitudin mi lectus et purus. Sed pulvinar sed massa gravida dictum. Etiam molestie justo eros. Phasellus eu ultrices magna, sit amet pellentesque urna. Sed in malesuada libero. Nunc ut leo eget lacus dictum semper. Duis lacinia lobortis malesuada. Nunc laoreet ullamcorper pharetra.
			</p>
		    <p class="mt-4">
		    	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet magna sed massa ultrices rhoncus. Praesent suscipit, magna et congue tristique, nisl dolor bibendum diam, a volutpat lacus purus non eros. Mauris dignissim, dui quis dapibus finibus, dui lorem egestas mauris, vel porta ex arcu at ante. Curabitur non pellentesque libero. Proin in quam porta mauris commodo ornare. Nulla pretium justo eget ex rhoncus pulvinar. Donec at aliquam mauris, eu interdum ipsum. Cras ornare interdum elit, quis consectetur leo imperdiet nec. Praesent et odio pretium, vehicula nibh et, gravida mauris. Sed dictum ultrices velit, id elementum ligula. Morbi et rhoncus orci. Phasellus finibus rhoncus ex, ac rhoncus enim accumsan ac.
		
				Sed tempus in nibh a mollis. Curabitur convallis elementum facilisis. Maecenas eu ex magna. Aliquam odio purus, volutpat fringilla enim id, tincidunt tincidunt mi. Etiam fermentum magna vel aliquam laoreet. Aenean commodo, nibh nec porta vehicula, lacus nunc tempor nunc, at sollicitudin mi lectus et purus. Sed pulvinar sed massa gravida dictum. Etiam molestie justo eros. Phasellus eu ultrices magna, sit amet pellentesque urna. Sed in malesuada libero. Nunc ut leo eget lacus dictum semper. Duis lacinia lobortis malesuada. Nunc laoreet ullamcorper pharetra.
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
<%@ include file="../include/footer.jsp"%>