<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>

<style>
.box{
	float: left;
	width: 280px;
	height: 134px;
	display :inline-block;
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

.enter{
	white-space:pre;
}

.red {
	background-color: red;
}
.triangle-right-red {
	float: left;	
      width: 0;
      height: 0;
      border-top: 67px solid transparent;
      border-left: 67px solid red;
      border-bottom: 67px solid transparent;
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
	border-top : 1px solid gray;
	border-right: 1px solid gray;
	width:6em;
	height:6em;
	transform: scale(1) rotate(45deg) translateX(10px) translateY(10px);
	margin:5px;
}
    
</style>

<%@ include file="../include/header.jsp"%>


<div class="container">
	<div class="row border border-secondary m-3">		
		<div  class="box red"></div>
		<div class="triangle-right-red"></div>
		<div class="box"></div>
		<div class="line"></div>
	</div>
	
	<div class="row clearfix m-2">
		<div class="col-9"></div>
		<div class="col-3"> 사원 코드 : 123456789<br>
							사원 이름 : 김동현</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row justify-content-center">
		<div class="col-auto">
			<div class="border p-5">채용 공고 만들기 입니다.   채용의 목적에 맞게 내용을 작성해주세요.</div>
		</div>
	</div>

	<div class="row justify-content-center mt-5">
		<div class="col-8 border">
			<form action="/jobOpen/basicInfo" method="post">
				<div class="form-inline m-3">
				    <div class="col-4">
				      <label for="title">공고 제목</label>
				    </div>
				    <div class="col-8">
				      <input type="text" id="title" class="form-control w-100" name="title"/>
				    </div>
			    </div>
			    
				<div class="form-inline m-3">
				    <div class="col-4">
				      	<label>모집 구분</label>
				    </div>
				    <div class="col-8">
				    	<div class="form-check-inline">
					    	<input type="checkbox" class="form-check-input" id="classify_new">
							<label class="form-check-label" for="classify_new">신입</label>
						</div>
						<div class="form-check-inline">
							<input type="checkbox" class="form-check-input" id="classify_exp">
							<label class="form-check-label" for="classify_exp">경력</label>
						</div>
				    </div>
			    </div>
			    
			    <div class="form-inline m-3">
			    	<div class="col-4">
			    		<label>고용 형태</label>
			    	</div>
			    	<div class="col-8">
			    		<div class="form-check-inline">
			    			<input type="checkbox" class="form-check-input" id="permanent">
							<label class="form-check-label" for="permanet">정규직</label>
			    		</div>
			    		<div class="form-check-inline">
			    			<input type="checkbox" class="form-check-input" id="contract">
							<label class="form-check-label" for="contract">계약직</label>
			    		</div>
			    		<div class="form-check-inline">
			    			<input type="checkbox" class="form-check-input" id="intern">
							<label class="form-check-label" for="intern">인턴</label>
			    		</div>
			    		<div class="form-check-inline">
			    			<input type="checkbox" class="form-check-input" id="military">
							<label class="form-check-label" for="military">병역특례</label>
			    		</div>
			    	</div>
			    </div>
			</form>
			<div  class="box red">기본정보</div>
			<div class="triangle-right-red"></div>
			<div class="box">세부정보</div>
			<div class="line"></div>
			<div>등록하기</div>
		</div>
	
		<div class="row clearfix m-2">
			<div class="col-9"></div>
			<div class="col-3"> 사원 코드 : 123456789<br>
								사원 이름 : 김동현</div>
		</div>
	</div>
</div>

<div class="container-fluid">

	<div class="row justify-content-center">
		<div class="col-auto">
			<div class="border border-info p-5"><span class="text-info">채용 공고 만들기 입니다.   채용의 목적에 맞게 내용을 작성해주세요.</span></div>
		</div>
	</div>

	<div class="row justify-content-center mt-5">
		<div class="col-8 border">
			<form action="/jobOpen/basicInfo" method="post">
				<div class="form-inline mt-3 mb-3">
				    <div class="col-4">
				      <label for="title">공고 제목</label>
				    </div>
				    <div class="col-8">
				      <input type="text" id="title" class="form-control w-100" name="title"/>
				    </div>
			    </div>
			    
				<div class="form-inline mt-4 mb-4">
				    <div class="col-4">
				      	<label>모집 구분</label>
				    </div>
				    <div class="col-8">
				    	<div class="form-check-inline">
					    	<input type="checkbox" class="form-check-input" id="classify_new">
							<label class="form-check-label" for="classify_new">신입</label>
						</div>
						<div class="form-check-inline">
							<input type="checkbox" class="form-check-input" id="classify_exp">
							<label class="form-check-label" for="classify_exp">경력</label>
						</div>
				    </div>
			    </div>
			    
			    <div class="form-inline mt-3 mb-3">
			    	<div class="col-4">
			    		<label>고용 형태</label>
			    	</div>
			    	<div class="col-8">
			    		<div class="form-check-inline">
			    			<input type="checkbox" class="form-check-input" id="permanent">
							<label class="form-check-label" for="permanet">정규직</label>
			    		</div>
			    		<div class="form-check-inline">
			    			<input type="checkbox" class="form-check-input" id="contract">
							<label class="form-check-label" for="contract">계약직</label>
			    		</div>
			    		<div class="form-check-inline">
			    			<input type="checkbox" class="form-check-input" id="intern">
							<label class="form-check-label" for="intern">인턴</label>
			    		</div>
			    		<div class="form-check-inline">
			    			<input type="checkbox" class="form-check-input" id="military">
							<label class="form-check-label" for="military">병역특례</label>
			    		</div>
			    	</div>
			    </div>
			    
			    <div class="form-inline mb-3 mt-3">
			    	<div class="col-4">
			    		<label>급	여</label>
			    	</div>
			    	<div class="col-8">
			    		<div class="form-check-inline">
			    			<input type="checkbox" class="form-check-input" id="rulPay">
							<label class="form-check-label" for="rulPay">회사 내규에 따름</label>
			    		</div>
			    		
			    		<div class="form-check-inline">
			    			<a href="#" style="text-decoration: underline;" class="m-2 text-secondary">급여 지정하기</a>
			    			<!-- 급여지정 지웠다 켜졌다 하기 -->
			    			<div class="pay">
			    				<input type="number" class="form-control"/> 만원
			    				~
			    				<input type="number" class="form-control"/> 만원
			    			</div>
			    			
			    		</div>
			    		
			    	</div>
			    </div>
			    
			    
			    <div class="form-inline mr-5 d-flex justify-content-center" >
			    	<button id="btnOk" class="btn btn-info mr-3">저장하고 계속하기</button><button type="button" id="btnCancel" class="btn btn-secondary">취소</button>
			    </div>
			</form>
		</div>
	</div>
</div>



<%@ include file="../include/scriptLoader.jsp"%>

<script>



</script>

<%@ include file="../include/footer.jsp"%>