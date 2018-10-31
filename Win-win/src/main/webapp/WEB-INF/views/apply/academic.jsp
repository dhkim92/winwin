<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
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
				logout();

			}
		}, 1000);
	}
	
	function logout() {
		
		var modal = document.getElementById('logoutModal');
		modal.style.display = "block";
		
		var span = document.getElementsByClassName("close")[0];
		var btnClose = document.getElementById("btnLogoutClose");
		
		
		btnClose.onclick = function() {
			modal.style.display = "none";
		}
		
		
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
	
	var Dday = new Date('<fmt:formatDate value="${jobopenBasic.endDate }" pattern="yyyy/MM/dd" />');
	var now = new Date();
	console.log(now);
	console.log(Dday);
	
	var gap = now.getTime() - Dday.getTime();
	var result = Math.floor(gap/ (1000*60*60*24)) * -1;
	
	console.log("남은 날은 " + result + " 일");
	
	$("#dDay").val("(D- " + result + "일)");
	
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
	      <th>${jobopenBasic.title}</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr style="line-height: 0.8em;">
	      <th class="text-center align-middle bg-secondary">접수상태</th>
	      	<td class="text-center align-middle">지원서 저장 전 입니다</td>
	      <th class="text-center align-middle bg-secondary">원서 마감 일시</th>
	      	<td class="text-center align-middle"><fmt:formatDate value="${jobopenBasic.endDate }" pattern="yyyy/MM/dd" /></td>
	      	<td class="text-danger text-center align-middle"><input style="border: none; width: 100px; color: red;" type="text" id="dDay" value="" readonly/></td>
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
	
	<form action="/apply/academic" method="POST" id="acaForm" name="acaForm">
	
	<h6 class="mt-5 font-weight-bold">고등학교
		<button class="btn btn-primary text-white mb-3 btn-sm font-weight-bold" style="float: right;" id="hsResetBtn">초기화</button>
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
                  	<input type="hidden" name="acaArr[0].userId" id="hsuserId" value="${sessionScope.id }" />
                  	<input type="hidden" name="acaArr[0].jobopenNo" id="hsJobopenNo" value="${jobopenBasic.jobopenNo }" />
                  	<input type="hidden" id="hsCategory" name="acaArr[0].category" value="고등학교"/>
					<input type="text" id="hsName" name="acaArr[0].name" class="mr-1 hschoolTxt" style="width: 200px" readonly/>
					<input type="button" class="m-1 mr-1" id="hsSearch" value="검색" /><input type="button" class="ml-1 mr-1 cancelAPIS" value="취소" />
					<select style="height:24px; width:70px;" class="hsselect" id="hsDay" name="acaArr[0].day">
						<option value="0">주/야</option>
						<option value="주간">주간</option>
						<option value="야간">야간</option>
					</select>
                  </td>
                  <td class="align-middle">
                  	<select style="height:24px; width: 110px;" class="hsselect" id="hsMajor" name="acaArr[0].major">
                  		<option value="0">전공</option>
                  		<option value="인문계">인문계</option>
                  		<option value="자연계">자연계</option>
                  		<option value="실업계">실업계</option>
                  	</select>
                  </td>
                  <td class="align-middle">
                  	<input class="hschoolTxt" type="date" name="acaArr[0].endDate" id="hsEndDate" min="2000-01-01" max="3000-12-31" style="height:24px; width: 120px;" />
                  	<select class="hsselect" style="height:24px; width: 80px;" name="acaArr[0].graduate" id="hsGraduate">
                  		<option value="0">졸업구분</option>
                  		<option value="졸업">졸업</option>
                  		<option value="졸업예정">졸업예정</option>
                  		<option value="재학">재학</option>S
                  	</select>
                  </td>
                  <td class="align-middle">
                    <select class="hsselect" id="hsSelect" name="acaArr[0].region">
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
                  	<input type="hidden" name="acaArr[1].userId" id="coluserId" value="${sessionScope.id }" />
                  	<input type="hidden" name="acaArr[1].jobopenNo" id="colJobopenNo" value="${jobopenBasic.jobopenNo }" />
                  	<input type="hidden" id="colCategory" name="acaArr[1].category" value="전문대학"/>
					<input type="text" id="colName" name="acaArr[1].name" class="mr-1 colTxt" style="width: 110px" readonly/>
					<input type="button" class="m-1 mr-1" id="colSearch" value="검색"><input type="button" class="ml-1 mr-1 cancelAPIS" value="취소" />
					<select style="height:24px; width:85px;" class="colselect" id="colSelect" name="acaArr[1].branch">
						<option value="0">본교/분교</option>
						<option value="본교">본교</option>
						<option value="분교">분교</option>
					</select>
					<select style="height:24px; width:70px;" class="colselect" id="colDay" name="acaArr[1].day">
						<option value="0">주/야</option>
						<option value="주간">주간</option>
						<option value="야간">야간</option>
					</select>
                  </td>
                  <td class="align-middle">
					<input type="text" class="mr-1 colTxt" style="width: 100px" id="colMajor" name="acaArr[1].major" readonly/>
					<input type="button" class="m-1 mr-1" id="colSearchM" name="colSearchM" value="검색" /><input type="button" class="ml-1 mr-1 cancelAPI" value="취소" />					                  
 					<input type="text" name="acaArr[1].score" id="colScore" class="mr-1 colTxt" style="width: 30px;" pattern="[0-5]{1}\.[0-9]{1,2}" title="학점은 소수점 둘째자리까지 입력하십시오."/> / <input id="colTotalScore" name="acaArr[1].totalScore" type="text" class="mr-1 colTxt" style="width: 30px; " pattern="[0-5]{1}\.[0-9]{1,2}" title="학점은 소수점 둘째자리까지 입력하십시오."/> 만점
                  </td>
                  <td class="align-middle">
                  	<input class="colTxt" type="date" id="colStartDate" name="acaArr[1].startDate" min="2000-01-01" max="3000-12-31" style="height:24px; width: 120px;" />
                  	<select style="height:24px; width: 70px;" class="colselect" id="colTransfer" name="acaArr[1].transfer">
                  		<option value="0">입학/편입</option>
                  		<option value="입학">입학</option>
                  		<option value="편입">편입</option>
                  	</select>
                  	<input class="colTxt" type="date" id="colEndDate" name="acaArr[1].endDate" min="2000-01-01" max="3000-12-31" style="height:24px; width: 120px;" />
                   	<select style="height:24px; width: 70px;" class="colselect" id="colGraduate" name="acaArr[1].graduate">
                  		<option value="0">졸업구분</option>
                  		<option value="졸업">졸업</option>
                  		<option value="졸업예정">졸업예정</option>
                  		<option value="재학">재학</option>
                  	</select>                 	
                  </td>
                  <td class="align-middle">
                    <select class="colselect" id="colSelect" name="acaArr[1].region">
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
                  	<input type="hidden" name="acaArr[2].userId" id="univuserId" value="${sessionScope.id }" />
                  	<input type="hidden" name="acaArr[2].jobopenNo" id="univJobopenNo" value="${jobopenBasic.jobopenNo }" />
                  	<input type="hidden" id="univCategory" name="acaArr[2].category"value="대학교"/>
					<input type="text" id="univName" name="acaArr[2].name" class="mr-1 univTxt" style="width: 110px" readonly/>
					<input type="button" class="m-1 mr-1" id="univSearch" name="univSearch" value="검색" /><input type="button" class="ml-1 mr-1 cancelAPIS" value="취소" />
					<select style="height:24px; width:85px;" class="univselect" id="univBranch" name="acaArr[2].branch">
						<option value="0">본교/분교</option>
						<option value="본교">본교</option>
						<option value="분교">분교</option>
					</select>
					<select style="height:24px; width:70px;" class="univselect" id="univDay" name="acaArr[2].day">
						<option value="0">주/야</option>
						<option value="주간">주간</option>
						<option value="야간">야간</option>
					</select>
                  </td>
                  <td class="align-middle">
                  <div>
					<input type="text" id="univMajor" name="acaArr[2].major" class="mr-1 univTxt" style="width: 100px" readonly/>
					<input type="button" class="m-1 mr-1" id="univMSearch" value="검색" /><input type="button" class="ml-1 mr-1 cancelAPI" value="취소" />
				  </div>
				  <div>		
					<input type="text"  id="univMinor" name="acaArr[2].minor" class="mr-1 univTxt" style="width: 100px" readonly/>
					<input type="button" class="m-1 mr-1" id="univMiSearch" name="univMiSearch" value="검색" /><input type="button" class="ml-1 mr-1 cancelAPI" value="취소" />					                  
				  </div>
				  </td>
				  <td>						                  
 					<input type="text" id="univScore" name="acaArr[2].score" class="mr-1 mt-2 univTxt" style="width: 30px; "/> / <input type="text" id="univTotalScore" name="acaArr[2].totalScore" class="mr-1 univTxt" style="width: 30px; "/> 만점
                  </td>
                  <td class="align-middle">
                  	<input class="univTxt" type="date" id="univStartDate" name="acaArr[2].startDate" min="2000-01-01" max="3000-12-31" style="height:24px; width: 120px;" />
                  	<select style="height:24px; width: 75px;" class="univselect" id="univTransfer" name="acaArr[2].transfer">
                  		<option value="0">입학/편입</option>
                  		<option value="입학">입학</option>
                  		<option value="편입">편입</option>
                  	</select>
                  	<input class="univTxt" type="date" id="univEndDate" name="acaArr[2].endDate" min="2000-01-01" max="3000-12-31" style="height:24px; width: 120px;" />
                   	<select style="height:24px; width: 75px;" class="univselect" name="acaArr[2].graduate">
                  		<option value="0">졸업구분</option>
                  		<option value="졸업">졸업</option>
                  		<option value="졸업예정">졸업예정</option>
                  		<option value="재학">재학</option>
                  	</select>                 	
                  </td>
                  <td class="align-middle">
                    <select class="univselect" id="univRegion" name="acaArr[2].region">
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
                  	<input type="hidden" name="acaArr[3].userId" id="gsuserId" value="${sessionScope.id }" />
                  	<input type="hidden" name="acaArr[3].jobopenNo" id="gsJobopenNo" value="${jobopenBasic.jobopenNo }" />
                  	<input type="hidden" id="gsCategory" name="acaArr[3].category" value="대학원"/>
					<input type="text" id="gsName" name="acaArr[3].name" class="mr-1 gschoolTxt" style="width: 200px" />
					<select style="height:24px; width:85px;" class="gsselect" id="gsBranch" name="acaArr[3].branch" >
						<option value="0">본교/분교</option>
						<option value="본교">본교</option>
						<option value="분교">분교</option>
					</select>
					<select style="height:24px; width:70px;" class="gsselect" id="gsDay" name="acaArr[3].day">
						<option value="0">주/야</option>
						<option value="주간">주간</option>
						<option value="야간">야간</option>
					</select>
                  </td>
                  <td class="align-middle">
					<input type="text" id="gsName" name="acaArr[3].name" class="mr-1 gschoolTxt" style="width: 200px" />
 					<input type="text" id="gsScore" name="acaArr[3].score" class="mr-1 gschoolTxt" style="width: 30px; "/> / <input type="text" id="gsTotalScore" name="acaArr[3].totalScore" class="mr-1 gschoolTxt" style="width: 30px; "/> 만점
                  </td>
                  <td class="align-middle">
                  	<input type="date" name="acaArr[3].endDate" id="gsEndDate" min="2000-01-01" max="3000-12-31" style="height:24px; width: 120px;" class="gschoolTxt"/>
                  	<select style="height:24px; width: 80px;" class="gsselect" id="gsGraduate" name="acaArr[3].graduate">
                  		<option value="0">졸업구분</option>
                  		<option value="졸업">졸업</option>
                  		<option value="졸업예정">졸업예정</option>
                  		<option value="재학">재학</option>
                  	</select>
                  </td>
                  <td class="align-middle">
                    <select class="gsselect" id="gsRegion" name="acaArr[3].region">
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
</form>
	
</div>


 <div id="logoutModal" class="modal">
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
			        <p class="font-weight-bold text-center" id="logoutModal">시간이 경과되어 자동로그아웃됩니다.</p>
				</div>
			
			<div class="modal-footer d-flex justify-content-center">
				<div class="row">
				<a href="/user/logout"><button type="button" id="btnLogoutClose" class="font-weight-bold btn btn-primary" style="background-color: #376092">확인</button></a>
				</div>
			</div>
	      </div>
	 
	    </div>
    </div>


 <div id="checkModal" class="modal">
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
			        <p class="font-weight-bold text-center" id="checkModal">해당학력에 모든 항목을 입력하지 않으면<br>학력이 저장되지 않습니다.</p>
				</div>
			
				<div class="modal-footer d-flex justify-content-center">
					<div class="row">
						<button id="btnSaveAca" class="mr-2 font-weight-bold text-white btn btn-primary" style="background-color: #376092">확인</button>
						<button id="btnCheckClose" class="ml-2 font-weight-bold text-black btn btn-secondary" style="background-color: #eee;">닫기</button>
					</div>
				</div>
	      </div>
	 
	    </div>
    </div>


	
<%@ include file="../include/scriptLoader.jsp"%>
<script>
$("#saveBtn").click(function() {
	console.log("saveBtn 클릭");
	
	var modal = document.getElementById('checkModal');
	modal.style.display = "block";
	
	var span = document.getElementsByClassName("close")[0];
	var btnClose = document.getElementById("btnCheckClose");
	var btnOk = document.getElementById("btnSaveAca");
	
	btnOk.onclick = function() {
		$("#acaForm").submit();
	}
	
	btnClose.onclick = function() {
		modal.style.display = "none";
	}
	
	
})



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

$(".cancelAPI").click(function() {
	
	var cancelAPI = $(this).parent().children().eq(0);
	cancelAPI.val("");
});

$(".cancelAPIS").click(function() {
	
	var cancelAPIS = $(this).parent().children().eq(2);
	cancelAPIS.val("");
});
</script>
<%@ include file="../apply/schoolAPI.jsp"%>		
<%@ include file="../apply/collegeAPI.jsp"%>	
<%@ include file="../apply/colMajorAPI.jsp"%>	
<%@ include file="../apply/universityAPI.jsp"%>	
<%@ include file="../apply/majorAPI.jsp"%>
<%@ include file="../apply/minorAPI.jsp"%>
<%@ include file="../include/footer.jsp"%>	