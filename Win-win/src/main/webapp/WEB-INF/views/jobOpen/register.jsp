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


.triangle-left-primary {
	float: left;	
      width: 0;
      height: 0;
      border-top: 50px solid transparent;
      border-left: 50px solid transparent;
      border-bottom: 50px solid transparent;
}

.triangle-right-primary {
	float: left;	
      width: 0;
      height: 0;
      border-top: 50px solid #376092;
      border-left: 50px solid  transparent ;
      border-bottom: 50px solid #376092;
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
		<div style="width: 663px; height: 101px; border:1px solid #376092;">
			<div class="boxm text-primary text-center pl-5" style="cursor:pointer;" onclick='location.href="/jobOpen/basicInfo";'><strong>기본정보</strong></div>
			<div class="line"></div>
			<div class="box text-primary text-center" style="cursor:pointer;" onclick='location.href="/jobOpen/detailInfo";'><strong>세부정보</strong></div>
			<div class="triangle-right-primary"></div>
			<div class="box text-light text-center" style="background-color: #376092;"><strong>등록하기</strong></div>
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

<div class="container-fluid">
	<div class="row justify-content-center">
		<div class="col-auto">
			<div class="border border-info text-info p-5 text-center">작성하신 내용을 확인하신 후 등록하기 버튼을 눌러주세요. <br>수정하기를 원하신다면 위 진행상황을 눌러 페이지에서 수정하시면 됩니다.</div>
		</div>
	</div>
	
	<div class="row justify-content-center mt-5">
		<div class="col-8">
				<div class="form-inline m-3">
				    <div class="col-4">
				      <label>공고 제목</label>
				    </div>
				    <div class="col-8">
				      <span>title</span>
				    </div>
			    </div>
			    
				<div class="form-inline m-3">
				    <div class="col-4">
				      	<label>모집 구분</label>
				    </div>
				    <div class="col-8">
				    	<span>신입, 경력</span>
					</div>
					
			    </div>
			    
			    <div class="form-inline m-3">
			    	<div class="col-4">
			    		<label>고용 형태</label>
			    	</div>
			    	<div class="col-8">
			    		<span>정규직, 계약직</span>
			    	</div>
			    </div>

			    
			    <div class="form-inline m-3">
			    	<div class="col-4">
			    		<label>급&emsp;&emsp;&nbsp;여</label>
			    	</div>
			    	<div class="col-8" >
			    		<span>1200</span>만원 ~ <span>2800</span>만원
			    	</div>
			    </div>
			    
			    <div class="form-inline ml-3 mr-3 mb-3">
			    	<div class="col-4">
			    		<label>접수 기간</label>
			    	</div>
			    	<div class="col-8" >
			    		<span>18/10/29</span> ~ <span>18/11/10</span>
			    	</div>
			    </div>
		</div>
	</div>
</div>

<div class="container">
	<div class="row justify-content-left p-4">
		<div class="col-auto">
			<div class="mt-5" style="border-bottom: 2px solid gray;"><h3>모집 요강</h3></div>
		</div>
	</div>
	
	<div class="row justify-content-center">
		<div class="col-9" id="detailInfo">
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
					<tr>
						<td>IT/웹 서비스</td>
						<td>백엔드 개발 업무</td>
						<td>서울시 강남구 역삼동</td>
						<td>00명</td>
						<td>JSP, Servlet 가능자, SpringFramework 가능자, 정보처리기사</td>
					</tr>
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
		<div class="col-11">
			<div class="form-inline m-3">
			    <div class="col-4">
			      <label>학&emsp;&emsp;&nbsp;력</label>
			    </div>
			    <div class="col-8">
			      <span>4년제 졸</span>
			    </div>
		    </div>
		    
			<div class="form-inline m-3">
			    <div class="col-4">
			      	<label>학&emsp;&emsp;&nbsp;점</label>
			    </div>
			    <div class="col-8">
			    	<span>4.5 만점 기준 3.0 이상</span>
				</div>
				
		    </div>
		    
		    <div class="form-inline m-3">
		    	<div class="col-4">
		    		<label>어학 능력</label>
		    	</div>
		    	<div class="col-8">
		    		<span>TOEIC 500점 이상</span>
		    	</div>
		    </div>

		    
		    <div class="form-inline mt-3 ml-3 mr-3 mb-2">
		    	<div class="col-4">
		    		<label>기&emsp;&emsp;&nbsp;타</label>
		    	</div>
		    	<div class="col-8" >
		    		<span>없음</span>
		    	</div>
		    </div>
		</div>
	</div>
	
	<div class="row justify-content-left p-4">
		<div class="col-auto">
			<div class="mt-5" style="border-bottom: 2px solid gray;"><h3>기타</h3></div>
		</div>
	</div>
	
	<div class="form-inline mt-5 d-flex justify-content-center" >
		<button id="btnOk" class="btn btn-info mr-3">저장하고 계속하기</button><button type="button" id="btnCancel" class="btn btn-secondary">취소</button>
	</div>
	
</div>-


<%@ include file="../include/scriptLoader.jsp"%>

<script>


</script>

<%@ include file="../include/footer.jsp"%>










