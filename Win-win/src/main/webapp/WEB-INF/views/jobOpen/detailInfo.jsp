<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp" %>

<style>
.box{
	float: left;
	width: 190px;
	height: 100px;
	display :inline-block;
    line-height: 6.4em;
}

.boxm{
	float:left;
	width:160px;
	height:100px;
	display:inline-block;
	line-height:6.4em;
}

.noticeBox{
	width:800px;
	height:200px;
 	display : inline-block;
	border : 1px solid blue;
	text-align : center;
	line-height: 200px;
	font-family: inherit;
	color: blue;
}

.size{
	display:inline-block;
	margin:1em;
	border:1px solid black;
}

.enter{
	white-space:pre;
}

.red {
	background-color: red;
}
.triangle-right-primary {
	float: left;	
      width: 0;
      height: 0;
      border-top: 50px solid transparent;
      border-left: 50px solid #376092;
      border-bottom: 50px solid transparent;
}
.triangle-right-white {
	float: left;
      width: 0;
      height: 0;
      border-top: 50px solid red;
      border-left: 100px solid transparent;
      border-bottom: 50px solid red;
}

.line {
	float : left;
	border-top : 1px solid #376092;
	border-right: 1px solid #376092;
	width:4.7em;
	height:4.75em;
	transform: scale(1) rotate(45deg) translateX(10px) translateY(10px);
}
    

</style>

<%@ include file="../include/adminHeader.jsp"%>

<div class="container">
	<div class="row m-3 justify-content-center">
		<div style="width: 680px; height: 101px; border:1px solid #376092;">
			<div class="box text-light text-center" style="background-color: #376092; cursor:pointer;" onclick='location.href="/jobOpen/basicInfo";'><strong>기본정보</strong></div>
			<div class="triangle-right-primary"></div>
			<div class="boxm text-primary text-center pl-5"><strong>세부정보</strong></div>
			<div class="line"></div>
			<div class="box text-primary text-center"><strong>등록하기</strong></div>
		</div>		
	</div>
	<div class="row clearfix m-2">
		<div class="col-10"></div>
		<div class="col-2">
			<i class="fas fa-key"></i><small>&nbsp;사원 코드 : 123456789</small><br>
			<i class="far fa-id-card"></i><small>&nbsp;사원 이름 : 김동현</small>
		</div>
	</div>
</div>

<div class="container">
	<form action="/jobOpen/detailInfo" method="post" id="formId">
	
		<!-- start of offer -->
		<div class="row justify-content-left p-4">
			<div class="col-auto">
				<div class="mt-5" style="border-bottom: 2px solid gray;"><h3>모집 요강</h3></div>
			</div>
		</div>
	
		<div class="row justify-content-center">
			<div class="col-9" id="detailInfo">
				<div class="detailin p-3 border border-primary">
					<div class="form-inline m-1">
						<div class="col-2">
							<label for="sector">모집 부문</label>
						</div>
						<div class="col-6">
							<input type="text" id="sector" class="form-control w-100" name="detail[0].sector" placeholder="ex) IT/WEB 서비스" required />
						</div>
						<div class="col-4">
							<i class="far fa-plus-square fa-2x addDetail" data-toggle="tooltip" data-placement="top" title="모집요강 추가" style="cursor:pointer" ></i>
						</div>
						
					</div>
					
					<div class="form-inline m-1">
						<div class="col-2">
							<label for="task">담당 업무</label>		
						</div>
						<div class="col-10">
							<input type="text" id="task" class="form-control w-100" name="detail[0].task" placeholder="ex) Back-End 개발자" required />
						</div>
					</div>
					
					<div class="form-inline m-1">
						<div class="col-2">
							<label for="volume">채용 인원</label>
						</div>
						<div class="col-4  border-right border-info">
							<input type="number" id="volume" class="form-control w-75" name="detail[0].volume" placeholder="00" required /> 명
						</div>
						<div class="col-2">
							<label for="location">근무지</label>
						</div>
						<div class="col-4">
							<input type="text" id="location" class="form-control w-100" name="detail[0].location" placeholder="근무지를 입력해주세요" required />
						</div>
					</div>
					
					<div class="form-inline m-1">
						<div class="col-2">
							<label for="special">우대 사항</label>		
						</div>
						<div class="col-10">
							<input type="text" id="special" class="form-control w-100" name="detail[0].special" required />
						</div>
					</div>
					<div>
						<input type="hidden" value="${sessionScope.jobopen }" name="detail[0].jobopenNo"/>
					</div>
					
				</div>
			</div>
		</div> <!-- end of offer -->
		<button id="detail">테스트 버튼</button>
		
		<!-- start of etc -->
		<div class="row justify-content-left p-4">
			<div class="col-auto">
				<div class="mt-5" style="border-bottom: 2px solid gray;"><h3>지원 자격</h3></div>
			</div>
		</div>
		
		<div class="row justify-content-center">
			<div class="col-9" id="detailInfo">
				<div class="detailin p-3 border border-primary">
					<div class="form-inline m-1">
						<div class="col-2">
							<label for="academic">학&nbsp;&nbsp;&nbsp;력</label>
						</div>
						<div class="col-5">
							<input type="text" id="academic" class="form-control w-100" name="academic" placeholder="ex) 4년제 대졸" required />
						</div>
						<div class="col-2">
							<div class="form-check-inline">
						    	<input type="checkbox" class="form-check-input" id="chkAcademic">
								<label class="form-check-label" for="chkAcademic">없음</label>
							</div>
						</div>
					</div>
					
					<div class="form-inline m-1">
						<div class="col-2">
							<label for="score">학&nbsp;&nbsp;&nbsp;점</label>		
						</div>
						<div class="col-5">
							<input type="text" id="score" class="form-control w-100" name="score" placeholder="ex) 4.5환산 기준 3.0" required />
						</div>
						<div class="col-2">
							<div class="form-check-inline">
						    	<input type="checkbox" class="form-check-input" id="chkScore">
								<label class="form-check-label" for="chkScore">없음</label>
							</div>
						</div>
					</div>
					
					<div class="form-inline m-1">
						<div class="col-2">
							<label for="lang">어&nbsp;&nbsp;&nbsp;학</label>
						</div>
						<div class="col-5">
							<input type="text" id="lang" class="form-control w-100" name="lang" placeholder="ex) TOEIC 600점 이상" required />
						</div>
						<div class="col-2">
							<div class="form-check-inline">
						    	<input type="checkbox" class="form-check-input" id="chkLang">
								<label class="form-check-label" for="chkLang">없음</label>
							</div>
						</div>
					</div>
					
					<div class="form-inline m-1">
						<div class="col-2">
							<label for="etcQual">기타 자격</label>		
						</div>
						<div class="col-10">
							<input type="text" id="etcQual" class="form-control w-100" name="etcQual" value="없음" required />
						</div>
					</div>
					<div>
						<input type="hidden" value="${sessionScope.jobopen }" name="jobopenNo" />
					</div>
				</div>
			</div>
		</div> <!-- end of etc  -->
		
		
	</form>
</div>







<%@ include file="../include/scriptLoader.jsp"%>

<script>

$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
	
	
// 	$('#chkAcademic').
	
	
	function setSector(i){
		var sector = '<div class="detailin mt-5 p-3 border border-primary"> <div class="form-inline m-1"> <div class="col-2"> <label for="sector">모집 부문</label> </div> <div class="col-6"> <input type="text" id="sector" class="form-control w-100" name="detail['+i+'].sector" required /> </div> <div class="col-4"> <i class="far fa-minus-square fa-2x subDetail" data-toggle="tooltip" data-placement="top" title="모집요강 삭제" style="cursor:pointer" ></i> </div> </div> <div class="form-inline m-1"> <div class="col-2"> <label for="task">담당 업무</label>	</div> <div class="col-10"> <input type="text" id="task" class="form-control w-100" name="detail['+i+'].task" required /> </div> </div> <div class="form-inline m-1"> <div class="col-2"><label for="volume">채용 인원</label> </div><div class="col-4  border-right border-info"><input type="number" id="volume" class="form-control w-75" name="detail['+i+'].volume" required /> 명</div><div class="col-2"> <label for="location">근무지</label> </div> <div class="col-4"> <input type="text" id="location" class="form-control w-100" name="detail['+i+'].location" required /> </div></div><div class="form-inline m-1"> <div class="col-2"> <label for="special">우대 사항</label></div><div class="col-10"><input type="text" id="special" class="form-control w-100" name="detail['+i+'].special" required /></div> </div><div><input type="hidden" value="${sessionScope.jobopen }" name="detail['+i+'].jobopenNo"/></div> </div>'
		
		return sector;
	}
	
	var i = 0;
	$('.addDetail').click(function(){
		i++;
		var s = setSector(i);s
		$('#detailInfo').append(s);
		$('[data-toggle="tooltip"]').tooltip();
	});
	
	
	$(document).on("click",".subDetail",function(){
		$('[data-toggle="tooltip"]').tooltip('hide');
		$(this).parent().parent().parent().remove();
		
		
	});
});

</script>

<%@ include file="../include/footer.jsp"%>