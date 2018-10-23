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

	<h4 class="mt-4 mb-3 font-weight-bold">병역사항</h4>
	<div class="row">
		<a href="/apply/userDetailupdate">
			<img class="img-fluid d-block ml-3" src="/resources/image/G_userDetail.png">
		</a>
		<a href="/apply/academicUpdate">
			<img class="img-fluid d-block" src="/resources/image/G_academic.png">		
		</a>
		<img class="img-fluid d-block" src="/resources/image/B_military.png">
		<img class="img-fluid d-block" src="/resources/image/G_career.png">
		<img class="img-fluid d-block" src="/resources/image/G_introduce.png">
		<img class="img-fluid d-block" src="/resources/image/G_complete.png">
	</div>

	<h6 class="mt-5 font-weight-bold">병역정보</h6>
	
	<div class="col-md-12 mt-3 p-0">
		<table class="table border border-secondary col-md-12 mb-0 text-center table-sm">
			<tbody>
				<tr style="line-height: 1.5em;">
					<th class="text-center align-middle" style="width: 20% ;">병역구분<span style="color : red;">*</span></th>
					<th class="text-center align-middle" style="width: 55% ;">복무기간<span style="color : red;">*</span></th>
					<th class="text-center align-middle" style="width: 15% ;">군별<span style="color : red;">*</span></th>
					<th class="text-center align-middle" style="width: 10% ;">계급<span style="color : red;">*</span></th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="align-middle">
					<select style="height:24px; width:100px;">
						<option>병역구분</option>
						<option>비대상</option>
						<option>군필</option>
						<option>미필</option>
						<option>면제</option>
						<option>복무중</option>
					</select>
                  </td>
                  <td class="align-middle">
                  	<input type="date" name="liDate" min="2000-01-01" max="3000-12-31" style="height:24px; width: 160px;" /> ~
                  	<input type="date" name="liDate" min="2000-01-01" max="3000-12-31" style="height:24px; width: 160px;" />                 
                  </td>
                  <td class="align-middle">
                  	<select style="height:24px; width: 100px;">
                  		<option>군별</option>
                  		<option>육군</option>
                  		<option>해군</option>
                  		<option>공군</option>
                  		<option>해병</option>
                  		<option>전경</option>
                  		<option>의경</option>
                  		<option>공익</option>
                  		<option>병특</option>
                  		<option>카투사</option>
                  		<option>기타</option>
                  	</select>
                  </td>
                  <td class="align-middle">
                    <select style="height:24px; width: 100px;">
                  		<option>계급</option>
                  		<option>일병</option>
                  		<option>이병</option>
                  		<option>상병</option>
                  		<option>병장</option>
                  		<option>하사</option>
                  		<option>중사</option>
                  		<option>상사</option>
                  		<option>원사</option>
                  		<option>준위</option>
                  		<option>소위</option>
                  		<option>중위</option>
                  		<option>대위</option>
                  		<option>소령</option>
                  		<option>중령</option>
                  		<option>대령</option>
                  		<option>준장</option>
                  		<option>소장</option>
                  		<option>중장</option>
                  		<option>대장</option>
                  		<option>원수</option>
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
                     <li style="line-height: 150%;"><strong><span class="text-info">여성지원자</span>는 제대구분을 병역비대상으로 선택하시고 다음단계로 넘어갑니다.</strong></li>
                     <li style="line-height: 150%;"><strong><span class="text-danger">(단, 군복무를 마친 여성은 해당 제대구분을 선택합니다.)</span></strong></li>
                  </ul>
                  </td>
               </tr>
            </tbody>
         </table>
	</div>
	
	<div class="col-12 mt-5 p-0 d-flex justify-content-end">
		<input class="btn btn-primary text-white" type="submit" value="저장하고 계속하기"/>
	</div>	
	
</div>	
	
<%@ include file="../include/scriptLoader.jsp"%>
<%@ include file="../include/footer.jsp"%>		
	