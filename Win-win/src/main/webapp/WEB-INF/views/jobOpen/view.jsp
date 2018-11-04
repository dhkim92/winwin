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
					<th width="15%">글번호 <span class="ml-2" id="jobopenNo">${basic.jobopenNo}</span></th>
					<th width="45%">제목 <span class="ml-3" id="title">${basic.title}</span></th>
					<th width="15%">작성자 <span class="ml-3">[관리자]</span></th>
					<th width="10%">조회수<span class="ml-2">${basic.hit }</span></th>
					<th width="15%">작성일<span class="ml-3"><fmt:formatDate value="${basic.writeDate}" pattern="yyyy-MM-dd" /></span></th>
				</tr>
			</table>
		</div>
	</div>

	<div class="d-flex justify-content-center">
		<div class="col-11 mt-3" style="border: 1px dashed lightgrey;">	
<!-- 		    <p class="mt-4"> -->
<!-- 			    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet magna sed massa ultrices rhoncus. Praesent suscipit, magna et congue tristique, nisl dolor bibendum diam, a volutpat lacus purus non eros. Mauris dignissim, dui quis dapibus finibus, dui lorem egestas mauris, vel porta ex arcu at ante. Curabitur non pellentesque libero. Proin in quam porta mauris commodo ornare. Nulla pretium justo eget ex rhoncus pulvinar. Donec at aliquam mauris, eu interdum ipsum. Cras ornare interdum elit, quis consectetur leo imperdiet nec. Praesent et odio pretium, vehicula nibh et, gravida mauris. Sed dictum ultrices velit, id elementum ligula. Morbi et rhoncus orci. Phasellus finibus rhoncus ex, ac rhoncus enim accumsan ac. -->
		
<!-- 				Sed tempus in nibh a mollis. Curabitur convallis elementum facilisis. Maecenas eu ex magna. Aliquam odio purus, volutpat fringilla enim id, tincidunt tincidunt mi. Etiam fermentum magna vel aliquam laoreet. Aenean commodo, nibh nec porta vehicula, lacus nunc tempor nunc, at sollicitudin mi lectus et purus. Sed pulvinar sed massa gravida dictum. Etiam molestie justo eros. Phasellus eu ultrices magna, sit amet pellentesque urna. Sed in malesuada libero. Nunc ut leo eget lacus dictum semper. Duis lacinia lobortis malesuada. Nunc laoreet ullamcorper pharetra. -->
<!-- 			</p> -->
<!-- 		    <p class="mt-4"> -->
<!-- 		    	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet magna sed massa ultrices rhoncus. Praesent suscipit, magna et congue tristique, nisl dolor bibendum diam, a volutpat lacus purus non eros. Mauris dignissim, dui quis dapibus finibus, dui lorem egestas mauris, vel porta ex arcu at ante. Curabitur non pellentesque libero. Proin in quam porta mauris commodo ornare. Nulla pretium justo eget ex rhoncus pulvinar. Donec at aliquam mauris, eu interdum ipsum. Cras ornare interdum elit, quis consectetur leo imperdiet nec. Praesent et odio pretium, vehicula nibh et, gravida mauris. Sed dictum ultrices velit, id elementum ligula. Morbi et rhoncus orci. Phasellus finibus rhoncus ex, ac rhoncus enim accumsan ac. -->
		
<!-- 				Sed tempus in nibh a mollis. Curabitur convallis elementum facilisis. Maecenas eu ex magna. Aliquam odio purus, volutpat fringilla enim id, tincidunt tincidunt mi. Etiam fermentum magna vel aliquam laoreet. Aenean commodo, nibh nec porta vehicula, lacus nunc tempor nunc, at sollicitudin mi lectus et purus. Sed pulvinar sed massa gravida dictum. Etiam molestie justo eros. Phasellus eu ultrices magna, sit amet pellentesque urna. Sed in malesuada libero. Nunc ut leo eget lacus dictum semper. Duis lacinia lobortis malesuada. Nunc laoreet ullamcorper pharetra. -->
<!-- 			</p> -->
<!-- 		    <p class="mt-4"> -->
<!-- 		    	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet magna sed massa ultrices rhoncus. Praesent suscipit, magna et congue tristique, nisl dolor bibendum diam, a volutpat lacus purus non eros. Mauris dignissim, dui quis dapibus finibus, dui lorem egestas mauris, vel porta ex arcu at ante. Curabitur non pellentesque libero. Proin in quam porta mauris commodo ornare. Nulla pretium justo eget ex rhoncus pulvinar. Donec at aliquam mauris, eu interdum ipsum. Cras ornare interdum elit, quis consectetur leo imperdiet nec. Praesent et odio pretium, vehicula nibh et, gravida mauris. Sed dictum ultrices velit, id elementum ligula. Morbi et rhoncus orci. Phasellus finibus rhoncus ex, ac rhoncus enim accumsan ac. -->
		
<!-- 				Sed tempus in nibh a mollis. Curabitur convallis elementum facilisis. Maecenas eu ex magna. Aliquam odio purus, volutpat fringilla enim id, tincidunt tincidunt mi. Etiam fermentum magna vel aliquam laoreet. Aenean commodo, nibh nec porta vehicula, lacus nunc tempor nunc, at sollicitudin mi lectus et purus. Sed pulvinar sed massa gravida dictum. Etiam molestie justo eros. Phasellus eu ultrices magna, sit amet pellentesque urna. Sed in malesuada libero. Nunc ut leo eget lacus dictum semper. Duis lacinia lobortis malesuada. Nunc laoreet ullamcorper pharetra. -->
<!-- 			</p> -->

					<div class="row justify-content-left p-4">
						<div class="col-auto">
							<div class="mt-5" style="border-bottom: 2px solid gray;"><h3>기본 정보</h3></div>
						</div>
					</div>

					<div class="row justify-content-center mt-5">
						<div class="col-8">
								<div class="form-inline m-3">
								    <div class="col-2">
								      <label>공고 제목</label>
								    </div>
								    <div class="col-10">
								      <span>${basic.title}</span>
								    </div>
							    </div>
							    
								<div class="form-inline m-3">
								    <div class="col-2">
								      	<label>모집 구분</label>
								    </div>
								    <div class="col-10">
								    	<span>${basic.offer }</span>
									</div>
									
							    </div>
							    
							    <div class="form-inline m-3">
							    	<div class="col-2">
							    		<label>고용 형태</label>
							    	</div>
							    	<div class="col-10">
							    		<span>${basic.form }</span>
							    	</div>
							    </div>
				
							    
							    <div class="form-inline m-3">
							    	<div class="col-2">
							    		<label>급&emsp;&emsp;&nbsp;여</label>
							    	</div>
							    	<div class="col-10" >
							    	<c:if test="${basic.startPay ne 0 }">
							    		<span>${basic.startPay }</span>만원 ~ <span>${basic.endPay }</span>만원
							    	</c:if>
							    	<c:if test="${basic.startPay eq 0 }">
							    		<span>${basic.rulePay }</span>
							    	</c:if>
							    	<!-- if 절 넣어서 내규급여, 급여 확인하기 -->
							    	</div>
							    </div>
							    
							    <div class="form-inline ml-3 mr-3 mb-3">
							    	<div class="col-2">
							    		<label>접수 기간</label>
							    	</div>
							    	<div class="col-10" >
							    	<c:if test="${basic.startDate ne null }">
	    					    		<span><fmt:formatDate value="${basic.startDate }" pattern="yyyy-MM-dd" /></span> ~ <span><fmt:formatDate value="${basic.endDate }" pattern="yyyy-MM-dd" /></span>
							    	</c:if>
							    	<c:if test="${basic.startDate eq null }">
							    		<span>${basic.allOpen }</span>
							    	</c:if>
							    	<!-- if 절 넣어서 상시채용, 접수기간 확인하기 -->
							    	</div>
							    </div>
						</div>
					</div>
					
						<div class="row justify-content-left p-4">
							<div class="col-auto">
								<div class="mt-5" style="border-bottom: 2px solid gray;"><h3>모집 요강</h3></div>
							</div>
						</div>
						
						<div class="row justify-content-center">
							<div class="col-8" id="detailInfo">
								<table class="table table-striped table-bordered table-hover" style="white-space : nowrap">
									<thead>
										<tr>
											<th>모집 부문</th>
											<th>담당 업무</th>
											<th>근무지</th>
											<th>모집인원</th>
											<th>우대사항</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${detail }" var="detail">
											<tr>
												<td>${detail.sector }</td>
												<td>${detail.task }</td>
												<td>${detail.location }</td>
												<td>${detail.volume }</td>
												<td>${detail.special }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="row justify-content-left p-4">
							<div class="col-auto">
								<div class="mt-5" style="border-bottom: 2px solid gray;"><h3>지원 자격</h3></div>
							</div>
						</div>
						
						<div class="row justify-content-center">
							<div class="col-8">
								<div class="form-inline m-3">
								    <div class="col-2">
								      <label>학&emsp;&emsp;&nbsp;력</label>
								    </div>
								    <div class="col-10">
								      <span>${basic.academic }</span>
								    </div>
							    </div>
							    
								<div class="form-inline m-3">
								    <div class="col-2">
								      	<label>학&emsp;&emsp;&nbsp;점</label>
								    </div>
								    <div class="col-10">
								    	<span>${basic.score }</span>
									</div>
									
							    </div>
							    
							    <div class="form-inline m-3">
							    	<div class="col-2">
							    		<label>어학 능력</label>
							    	</div>
							    	<div class="col-10">
							    		<span>${basic.lang }</span>
							    	</div>
							    </div>
					
							    
							    <div class="form-inline mt-3 ml-3 mr-3 mb-2">
							    	<div class="col-2">
							    		<label>기&emsp;&emsp;&nbsp;타</label>
							    	</div>
							    	<div class="col-10" >
							    		<span>${basic.etcQual }</span>
							    	</div>
							    </div>
							</div>
						</div>
						
						<div class="row justify-content-left p-4">
							<div class="col-auto">
								<div class="mt-5" style="border-bottom: 2px solid gray;"><h3>기타</h3></div>
							</div>
						</div>
						
						<div class="row justify-content-center">
							<div class="col-8">
								<div class="form-inline m-3">
								${basic.etc }
								</div>
							</div>
						</div>
		</div>
	</div>

	<div class="d-flex justify-content-center">
		<div class="col-11 mt-3" style="border-top: 2px solid lightgrey; ">
	    	<div id="btns" class="form-group d-flex justify-content-center mt-3 mb-2 " style="margin-bottom: 0px;">
				<a href="/jobOpen/list"><button id="btnList" type="button" class="btn btn-primary btn-sm">목록</button></a>
					<c:if test="${adminLogin }">
				<a href="/jobOpen/delete?boardNo=${basic.jobopenNo}"><button id="btnDel" type="button" class="btn btn-sm btn-primary ml-3">삭제</button></a>
					</c:if>
				<button type="button" class="btn btn-primary btn-sm ml-3" onclick="selectsubmit();">지원하기</button>
			</div>
		</div>
	</div>
	
</div>
</div>

    <!-- The Modal -->
    <div id="myModal" class="modal">
 
	      <!-- Modal content -->
	      <div class="modal-content">
	      	
	      	<div class="row">
				<div class="col-6">
				<span class="font-weight-bold h2 d-flex justify-content-start mt-3">WIN-WIN</span>
				</div>
				<div class="col-6">
				<span class="d-flex justify-content-end mt-1"><span class="close">&times;</span></span>
				</div>
			</div>
	     	<div class="mb-3" style="height:4px; background-color: #376092" ></div>
	     	
	     	<!-- 모달 내용 입력하는 부분 -->
	     	<div>
	     	<div class="mt-4">
	        <p class="font-weight-bold text-center">로그인이 필요합니다</p> 
	<!--         <select id="license" class="js-example-basic-single" > -->
	<!-- 		</select> -->
			</div>
			
			<div class="modal-footer d-flex justify-content-center">
				<div class="row">
				<button type="button" id="btnClose" class="font-weight-bold btn btn-secondary">닫기</button>
				</div>
			</div>
	      </div>
	 
	    </div>
    </div>

<script type="text/javascript">

function selectsubmit(){
       var jobopenNo = document.getElementById("jobopenNo").innerHTML;
       var title = document.getElementById("title").innerHTML;

			var applyData = { "title": title, "jobopenNo": jobopenNo };

			$.ajax({
		          type:"post"
		          , url:"/applyMenu/sessionCheck"
		          , dataType: "json"
		          , success: function( data ) {
		        	  
		        	  console.log(data.result);
		        	  
		        	  if(data.result > 0 ) {
		        		  location.href = "/apply/userDetail?title="+title+"&jobopenNo="+jobopenNo;
		        	  } else {
		        			// Get the modal
		        			var modal = document.getElementById('myModal');
		        			
		        			modal.style.display = "block";
		        			
		        			// Get the <span> element that closes the modal
		        			var span = document.getElementsByClassName("close")[0];     

		        			var btnClose = document.getElementById("btnClose");
		        			
		        			// When the user clicks on <span> (x), close the modal
		        			span.onclick = function() {
		        			    modal.style.display = "none";
		        			}
		        			
		        			btnClose.onclick = function() {
		        			    modal.style.display = "none";
		        			}
		        			
		        	  }
			        	  
		          }, error: function() {
		             alert("error");
		          }
		       })
		  	
}

</script>

<%@ include file="../include/scriptLoader.jsp"%>
<%@ include file="../include/footer.jsp"%>