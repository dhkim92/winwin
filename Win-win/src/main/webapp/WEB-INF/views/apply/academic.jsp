<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>
<style>
</style>

<script type="text/javascript">
$(document).ready(function() {
	
	var tid;
	var cnt = 1800;
	
	counter_init();
	
	function counter_init() {
		tid = setInterval(function counter_run() {
			document.all.counter.innerText = time_format(cnt);
			cnt--;
// 			console.log(cnt);
			
			if(cnt < 0) {
				clearInterval(tid);
// 				self.location = "logout.php";
			}
		}, 1000);
	}
	
	$("#timer").click(function() {
		clearInterval(tid);
		cnt = parseInt(1800);
		counter_init();
	});
	
	function time_format(s) {
		var nHour=0;
		var nMin=0;
		var nSec=0;
		
		if(s>0) {
			nMin = parseInt(s/60);
			nSec = s%60;
			
			if(nMin>60) {
				nHour = parseInt(nMin/60);
				nMin = nMin%60;
			}
		}
		
		if(nSec<10) nSec = "0"+nSec;
		if(nMin<10) nMin = "0"+nMin;
		
		return ""+nHour+":"+nMin+":"+nSec;
	}
	
});

</script>
   
<%@ include file="../include/header.jsp"%>

<div class="container">
	<h3 class="mt-5 font-weight-bold">입사지원 등록</h3>
	<img class="img-fluid d-block" src="/resources/image/grayline.png">

	<div class="col-md-12 border border-secondary mt-3 p-0">
	<table class="table col-md-12 mb-0">
	  <thead>
	    <tr>
	      <th>공고명</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr style="line-height: 0.8em;">
	      <th class="text-center align-middle bg-secondary">접수상태</th>
	      	<td class="text-center align-middle">지원서 저장 전 입니다</td>
	      <th class="text-center align-middle bg-secondary">원서 마감 일시</th>
	      	<td class="text-center align-middle">2018-12-31 23:59</td>
	      	<td class="text-danger text-center align-middle">(D-98일 전)</td>
	      <th class="text-center align-middle bg-secondary">자동 로그아웃</th>
	      	<td class="text-danger text-center align-middle"><span id="counter"></span></td>
	      	<td><button id="timer">연장</button></td>
	    </tr>    
	  </tbody>
	</table>
	</div>

	<h4 class="mt-4 mb-3 font-weight-bold">학력사항</h4>
	<div class="row">
		<a href="/apply/userDetailupdate">
			<img class="img-fluid d-block ml-3" src="/resources/image/G_userDetail.png">
		</a>
		<img class="img-fluid d-block" src="/resources/image/B_academic.png">
		<img class="img-fluid d-block" src="/resources/image/G_military.png">
		<img class="img-fluid d-block" src="/resources/image/G_career.png">
		<img class="img-fluid d-block" src="/resources/image/G_introduce.png">
		<img class="img-fluid d-block" src="/resources/image/G_complete.png">
	</div>
	
	<h6 class="mt-5 font-weight-bold">고등학교
		<button class="btn btn-primary text-white mb-3 btn-sm font-weight-bold" style="float: right;" id="hsResetBtn">초기화</button>
	</h6>
	
	<form action="/apply/academic" method="POST" id="hsForm" name="hsForm">
	<div class="col-md-12 mt-3 p-0">
		<table class="table border border-secondary col-md-12 mb-0 text-center table-sm">
			<tbody>
				<tr style="line-height: 1.5em;">
					<th class="text-center align-middle" style="width: 37% ;">학교명<span style="color : red;">*</span></th>
					<th class="text-center align-middle" style="width: 33% ;">전공<span style="color : red;">*</span></th>
					<th class="text-center align-middle" style="width: 22% ;">졸업년도<span style="color : red;">*</span></th>
					<th class="text-center align-middle" style="width: 8% ;">지역<span style="color : red;">*</span></th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="align-middle">
                  	<input type="hidden" name="jobopenNo" id="hsJobopenNo" value="1" />
                  	<input type="hidden" id="hsCategory" name="category" value="고등학교"/>
					<input type="text" id="hsName" name="name" class="mr-1 hschoolTxt" style="width: 200px" readonly/>
					<input type="button" class="m-1 mr-1" id="hsSearch" value="검색" /><button class="ml-1 mr-1">취소</button>
					<select style="height:24px; width:70px;" class="hsselect" id="hsDay" name="day">
						<option value="0">주/야</option>
						<option value="주간">주간</option>
						<option value="야간">야간</option>
					</select>
                  </td>
                  <td class="align-middle">
                  	<select style="height:24px; width: 110px;" class="hsselect" id="hsMajor" name="major">
                  		<option value="0">전공</option>
                  		<option value="인문계">인문계</option>
                  		<option value="자연계">자연계</option>
                  		<option value="실업계">실업계</option>
                  	</select>
                  </td>
                  <td class="align-middle">
                  	<input class="hschoolTxt" type="date" name="endDate" id="hsEndDate" min="2000-01-01" max="3000-12-31" style="height:24px; width: 120px;" />
                  	<select class="hsselect" style="height:24px; width: 80px;" name="graduate" id="hsGraduate">
                  		<option value="0">졸업구분</option>
                  		<option value="졸업">졸업</option>
                  		<option value="졸업예정">졸업예정</option>
                  		<option value="재학">재학</option>
                  	</select>
                  </td>
                  <td class="align-middle">
                    <select class="hsselect" id="hsSelect" name="region">
                  		<option value="0">지역</option>
                  		<option value="서울">서울</option>
                  		<option value="인천">인천</option>
                  		<option value="대전">대전</option>
                  		<option value="광주">광주</option>
                  		<option value="부산">부산</option>
                  		<option value="울산">울산</option>
                  		<option value="대구">대구</option>
                  		<option value="강원">강원</option>
                  		<option value="경기">경기</option>
                  		<option value="충북">충북</option>
                  		<option value="충남">충남</option>
                  		<option value="전북">전북</option>
                  		<option value="전남">전남</option>
                  		<option value="경북">경북</option>
                  		<option value="경남">경남</option>
                  	</select>
                  </td>
                </tr>
			</tbody>
		</table>
	</div>
	</form>
	
	<h6 class="mt-5 font-weight-bold">전문대학
		<button class="btn btn-primary text-white mb-3 btn-sm font-weight-bold" style="float: right;" id="colResetBtn">초기화</button>
	</h6>
	
	<div class="col-md-12 mt-3 p-0">
		<table class="table border border-secondary col-md-12 mb-0 text-center table-sm">
			<tbody>
				<tr style="line-height: 1.5em;">
					<th class="text-center align-middle" style="width: 37% ;">학교명<span style="color : red;">*</span></th>
					<th class="text-center align-middle" style="width: 33% ;">전공<span style="color : red;">*</span></th>
					<th class="text-center align-middle" style="width: 22% ;">재학기간<span style="color : red;">*</span></th>
					<th class="text-center align-middle" style="width: 8% ;">지역<span style="color : red;">*</span></th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="align-middle">
                  	<input type="hidden" name="jobopenNo" id="colJobopenNo" value="jobopenNo" />
                  	<input type="hidden" id="colCategory" name="category" value="전문대학"/>
					<input type="text" id="colName" name="name" class="mr-1 colTxt" style="width: 110px" readonly/>
					<button class="m-1 mr-1" id="colSearch">검색</button><button class="ml-1 mr-1">취소</button>
					<select style="height:24px; width:85px;" class="colselect" id="colSelect" name="branch">
						<option value="0">본교/분교</option>
						<option value="본교">본교</option>
						<option value="분교">분교</option>
					</select>
					<select style="height:24px; width:70px;" class="colselect" id="colDay" name="day">
						<option value="0">주/야</option>
						<option value="주간">주간</option>
						<option value="야간">야간</option>
					</select>
                  </td>
                  <td class="align-middle">
					<input type="text" class="mr-1 colTxt" style="width: 100px" id="colMajor" name="major" readonly/>
					<button class="m-1 mr-1" id="colSearchM" name="colSearchM">검색</button><button class="ml-1 mr-1">취소</button>					                  
 					<input type="text" name="score" id="colScore" class="mr-1 colTxt" style="width: 30px;" pattern="[0-5]{1}\.[0-9]{1,2}" title="학점은 소수점 둘째자리까지 입력하십시오."/> / <input id="colTotalScore" name="totalScore" type="text" class="mr-1 colTxt" style="width: 30px; " pattern="[0-5]{1}\.[0-9]{1,2}" title="학점은 소수점 둘째자리까지 입력하십시오."/> 만점
                  </td>
                  <td class="align-middle">
                  	<input class="colTxt" type="date" id="colStartDate" name="startDate" min="2000-01-01" max="3000-12-31" style="height:24px; width: 120px;" />
                  	<select style="height:24px; width: 70px;" class="colselect" id="colTransfer" name="transfer">
                  		<option value="0">입학/편입</option>
                  		<option value="입학">입학</option>
                  		<option value="편입">편입</option>
                  	</select>
                  	<input class="colTxt" type="date" id="colEndDate" name="endDate" min="2000-01-01" max="3000-12-31" style="height:24px; width: 120px;" />
                   	<select style="height:24px; width: 70px;" class="colselect" id="colGraduate" name="graduate">
                  		<option value="0">졸업구분</option>
                  		<option value="졸업">졸업</option>
                  		<option value="졸업예정">졸업예정</option>
                  		<option value="재학">재학</option>
                  	</select>                 	
                  </td>
                  <td class="align-middle">
                    <select class="colselect" id="colSelect" name="region">
                  		<option value="0">지역</option>
                  		<option value="서울">서울</option>
                  		<option value="인천">인천</option>
                  		<option value="대전">대전</option>
                  		<option value="광주">광주</option>
                  		<option value="부산">부산</option>
                  		<option value="울산">울산</option>
                  		<option value="대구">대구</option>
                  		<option value="강원">강원</option>
                  		<option value="경기">경기</option>
                  		<option value="충북">충북</option>
                  		<option value="충남">충남</option>
                  		<option value="전북">전북</option>
                  		<option value="전남">전남</option>
                  		<option value="경북">경북</option>
                  		<option value="경남">경남</option>
                  	</select>
                  </td>
                </tr>
			</tbody>
		</table>
	</div>
	
	<h6 class="mt-5 font-weight-bold">대학교
		<button class="btn btn-primary text-white mb-3 btn-sm font-weight-bold" style="float: right;" id="univResetBtn">초기화</button>
	</h6>

	<div class="col-md-12 mt-3 p-0">
		<table class="table border border-secondary col-md-12 mb-0 text-center table-sm">
			<tbody>
				<tr style="line-height: 1.5em;">
					<th class="text-center align-middle" style="width: 37% ;">학교명<span style="color : red;">*</span></th>
					<th class="text-center align-middle" style="width: 33% ;" colspan="2">전공<span style="color : red;">*</span></th>
					<th class="text-center align-middle" style="width: 22% ;">재학기간<span style="color : red;">*</span></th>
					<th class="text-center align-middle" style="width: 8% ;">지역<span style="color : red;">*</span></th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="align-middle">
                  	<input type="hidden" name="jobopenNo" id="univJobopenNo" value="jobopenNo" />
                  	<input type="hidden" id="univCategory" name="category" value="대학교"/>
					<input type="text" id="univName" name="name" class="mr-1 univTxt" style="width: 110px" readonly/>
					<button class="m-1 mr-1" id="univSearch" name="univSearch">검색</button><button class="ml-1 mr-1">취소</button>
					<select style="height:24px; width:85px;" class="univselect" id="univBranch" name="branch">
						<option value="0">본교/분교</option>
						<option value="본교">본교</option>
						<option value="분교">분교</option>
					</select>
					<select style="height:24px; width:70px;" class="univselect" id="univDay" name="day">
						<option value="0">주/야</option>
						<option value="주간">주간</option>
						<option value="야간">야간</option>
					</select>
                  </td>
                  <td class="align-middle">
                  <div>
					<input type="text" id="univMajor" name="major" class="mr-1 univTxt" style="width: 100px" readonly/>
					<button class="m-1 mr-1" id="univMSearch" name="univMSearch">검색</button><button class="ml-1 mr-1">취소</button>
				  </div>
				  <div>		
					<input type="text"  name="minor" class="mr-1 univTxt" style="width: 100px" readonly/>
					<button class="m-1 mr-1">검색</button><button class="ml-1 mr-1">취소</button>					                  
				  </div>
				  </td>
				  <td>						                  
 					<input type="text" id="univScore" name="score" class="mr-1 mt-2 univTxt" style="width: 30px; "/> / <input type="text" id="univTotalScore" name="totalScore" class="mr-1 univTxt" style="width: 30px; "/> 만점
                  </td>
                  <td class="align-middle">
                  	<input class="univTxt" type="date" id="univStartDate" name="startDate" min="2000-01-01" max="3000-12-31" style="height:24px; width: 120px;" />
                  	<select style="height:24px; width: 75px;" class="univselect" id="univTransfer" name="transfer">
                  		<option value="0">입학/편입</option>
                  		<option value="입학">입학</option>
                  		<option value="편입">편입</option>
                  	</select>
                  	<input class="univTxt" type="date" id="univEndDate" name="endDate" min="2000-01-01" max="3000-12-31" style="height:24px; width: 120px;" />
                   	<select style="height:24px; width: 75px;" class="univselect">
                  		<option value="0">졸업구분</option>
                  		<option value="졸업">졸업</option>
                  		<option value="졸업예정">졸업예정</option>
                  		<option value="재학">재학</option>
                  	</select>                 	
                  </td>
                  <td class="align-middle">
                    <select class="univselect" id="univRegion" name="region">
                  		<option value="0">지역</option>
                  		<option value="서울">서울</option>
                  		<option value="인천">인천</option>
                  		<option value="대전">대전</option>
                  		<option value="광주">광주</option>
                  		<option value="부산">부산</option>
                  		<option value="울산">울산</option>
                  		<option value="대구">대구</option>
                  		<option value="강원">강원</option>
                  		<option value="경기">경기</option>
                  		<option value="충북">충북</option>
                  		<option value="충남">충남</option>
                  		<option value="전북">전북</option>
                  		<option value="전남">전남</option>
                  		<option value="경북">경북</option>
                  		<option value="경남">경남</option>
                  	</select>
                  </td>
                </tr>
			</tbody>
		</table>
	</div>

	<h6 class="mt-5 font-weight-bold">대학원
		<button class="btn btn-primary text-white mb-3 btn-sm font-weight-bold" style="float: right;" id="gsResetBtn">초기화</button>
	</h6>
	
	<div class="col-md-12 mt-3 p-0">
		<table class="table border border-secondary col-md-12 mb-0 text-center table-sm">
			<tbody>
				<tr style="line-height: 1.5em;">
					<th class="text-center align-middle" style="width: 37% ;">학교명<span style="color : red;">*</span></th>
					<th class="text-center align-middle" style="width: 33% ;">전공<span style="color : red;">*</span></th>
					<th class="text-center align-middle" style="width: 22% ;">졸업년도<span style="color : red;">*</span></th>
					<th class="text-center align-middle" style="width: 8% ;">지역<span style="color : red;">*</span></th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="align-middle">
                  	<input type="hidden" name="jobopenNo" id="gsJobopenNo" value="jobopenNo" />
                  	<input type="hidden" id="gsCategory" name="category" value="대학원"/>
					<input type="text" id="gsName" name="name" class="mr-1 gschoolTxt" style="width: 200px" />
					<select style="height:24px; width:85px;" class="gsselect" id="gsBranch" name="branch" >
						<option value="0">본교/분교</option>
						<option value="본교">본교</option>
						<option value="분교">분교</option>
					</select>
					<select style="height:24px; width:70px;" class="gsselect" id="gsDay" name="day">
						<option value="0">주/야</option>
						<option value="주간">주간</option>
						<option value="야간">야간</option>
					</select>
                  </td>
                  <td class="align-middle">
					<input type="text" id="gsName" name="name" class="mr-1 gschoolTxt" style="width: 200px" />
 					<input type="text" id="gsScore" name="score" class="mr-1 gschoolTxt" style="width: 30px; "/> / <input type="text" id="gsTotalScore" name="totalScore" class="mr-1 gschoolTxt" style="width: 30px; "/> 만점
                  </td>
                  <td class="align-middle">
                  	<input type="date" name="endDate" id="gsEndDate" min="2000-01-01" max="3000-12-31" style="height:24px; width: 120px;" class="gschoolTxt"/>
                  	<select style="height:24px; width: 80px;" class="gsselect" id="gsGraduate" name="graduate">
                  		<option value="0">졸업구분</option>
                  		<option value="졸업">졸업</option>
                  		<option value="졸업예정">졸업예정</option>
                  		<option value="재학">재학</option>
                  	</select>
                  </td>
                  <td class="align-middle">
                    <select class="gsselect" id="gsRegion" name="region">
                  		<option value="0">지역</option>
                  		<option value="서울">서울</option>
                  		<option value="인천">인천</option>
                  		<option value="대전">대전</option>
                  		<option value="광주">광주</option>
                  		<option value="부산">부산</option>
                  		<option value="울산">울산</option>
                  		<option value="대구">대구</option>
                  		<option value="강원">강원</option>
                  		<option value="경기">경기</option>
                  		<option value="충북">충북</option>
                  		<option value="충남">충남</option>
                  		<option value="전북">전북</option>
                  		<option value="전남">전남</option>
                  		<option value="경북">경북</option>
                  		<option value="경남">경남</option>
                  	</select>
                  </td>
                </tr>
			</tbody>
		</table>
	</div>
	<br><br><br><br><br><br>
	
		
	<div class="col-12 mt-5 p-0">
         <table class="table border">
            <tbody>
               <tr>
                  <th class="text-center table-light align-middle">
                     <i class="fas fa-exclamation-triangle fa-3x"></i>
                  </th>
                  <td class="table-light align-middle"> 
                  <ul class="mb-0">
                     <li style="line-height: 150%;"><strong><span class="text-info">학력사항</span>은 최종학력까지 졸업년월, 학교명, 지역명 등을 빠짐없이 기재하여 주시기 바랍니다.</strong></li>
                     <li style="line-height: 150%;"><strong><span class="text-danger">(전문대학 이상의 성적란에는 본인의 누계평점 및 만점을 기재합니다. 예)3.0/4.5)</span></strong></li>
                  </ul>
                  </td>
               </tr>
            </tbody>
         </table>
	</div>
	
	<div class="col-12 mt-5 p-0 d-flex justify-content-end">
		<input class="btn btn-primary text-white" type="button" id="saveBtn" value="저장하고 계속하기"/>
	</div>

	
</div>	
	
<%@ include file="../include/scriptLoader.jsp"%>
<script>
$("#hsResetBtn").click(function() {
// 	console.log("hs버튼 클릭")
	$(".hschoolTxt").val('');
	$(".hsselect").find('option:first').prop('selected', true);
// 	console.log("hs버튼 클릭2")
});

$("#colResetBtn").click(function() {
	console.log("col 버튼 클릭")
	$(".colTxt").val('');
	$(".colselect").find('option:first').prop('selected', true);


});

$("#univResetBtn").click(function() {
	console.log("univ 버튼 클릭")
	$(".univTxt").val('');
	$(".univselect").find('option:first').prop('selected', true);


});

$("#gsResetBtn").click(function() {
	console.log("버튼 클릭")
	$(".gschoolTxt").val('');
	$(".gsselect").find('option:first').prop('selected', true);

	
});

$("#saveBtn").click(function() {
	console.log("save버튼 클릭");
	$("#hsForm").submit();
});

</script>
<%@ include file="../apply/schoolAPI.jsp"%>		
<%@ include file="../apply/collegeAPI.jsp"%>	
<%@ include file="../apply/colMajorAPI.jsp"%>	
<%@ include file="../apply/universityAPI.jsp"%>	
<%@ include file="../apply/majorAPI.jsp"%>
<%@ include file="../include/footer.jsp"%>	