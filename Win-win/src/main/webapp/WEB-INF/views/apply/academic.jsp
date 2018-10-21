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
		<button class="btn btn-primary text-white mb-3 btn-sm font-weight-bold" style="float: right;">초기화</button>
	</h6>
	
	<div class="col-md-12 border border-secondary mt-3 p-0">
		<table class="table col-md-12 mb-0 text-center table-sm">
			<tbody>
				<tr style="line-height: 1.5em;">
					<th class="text-center align-middle">학교명<span style="color : red;">*</span></th>
					<th class="text-center align-middle">전공<span style="color : red;">*</span></th>
					<th class="text-center align-middle">졸업년도<span style="color : red;">*</span></th>
					<th class="text-center align-middle">지역<span style="color : red;">*</span></th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="align-middle">
					<input type="text" class="mr-1" style="width: 200px" readonly/>
					<button class="m-1 mr-1">검색</button><button class="ml-1 mr-1">취소</button>
					<select style="height:24px; width:70px;">
						<option>주/야</option>
						<option>주간</option>
						<option>야간</option>
					</select>
                  </td>
                  <td class="align-middle">
                  	<select style="height:24px; width: 75px;">
                  		<option>전공</option>
                  		<option>인문계</option>
                  		<option>자연계</option>
                  		<option>실업계</option>
                  	</select>
                  </td>
                  <td>
                  	<input type="date" name="liDate" min="2000-01-01" max="3000-12-31" class="form-control" style="height:24px; width: 100px;">
                  	<select>
                  		<option>졸업구분</option>
                  		<option>졸업</option>
                  		<option>졸업예정</option>
                  		<option>재학</option>
                  	</select>
                  </td>
                  <td>
                    <select>
                  		<option>지역</option>
                  		<option>서울</option>
                  		<option>인천</option>
                  		<option>대전</option>
                  		<option>광주</option>
                  		<option>부산</option>
                  		<option>울산</option>
                  		<option>대구</option>
                  		<option>강원</option>
                  		<option>경기</option>
                  		<option>충북</option>
                  		<option>충남</option>
                  		<option>전북</option>
                  		<option>전남</option>
                  		<option>경북</option>
                  		<option>경남</option>
                  	</select>
                  </td>
                </tr>
			</tbody>
		</table>
	</div>
	
	
</div>	
	
<%@ include file="../include/scriptLoader.jsp"%>
<%@ include file="../include/footer.jsp"%>	