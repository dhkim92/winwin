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

	<h4 class="mt-4 mb-3 font-weight-bold">개인사항</h4>
	<div class="row">
		<img class="img-fluid d-block ml-3" src="/resources/image/B_userDetail.png">
		<img class="img-fluid d-block" src="/resources/image/G_academic.png">
		<img class="img-fluid d-block" src="/resources/image/G_military.png">
		<img class="img-fluid d-block" src="/resources/image/G_career.png">
		<img class="img-fluid d-block" src="/resources/image/G_introduce.png">
		<img class="img-fluid d-block" src="/resources/image/G_complete.png">
	</div>
	
	<h6 class="mt-5 mb-3 font-weight-bold">기본정보</h6>
	
	<table class="table table-bordered border-secondary">
	<tbody>
	<tr>
		<th style="width: 15% ;" class="text-center align-middle bg-secondary">성명<span style="color : red;">*</span></th>
		<td style="width: 40%"><span style="font-size: 10px ;">
			한글 </span>한상근 / <span style="font-size: 10px ;">영어 </span>
			<input type="text" class="ml-1 mr-1" id="eName" name="eName" onkeyup="english(this)"/>
			<span style="font-size: 10px ;"> 예)Hong Gil Dong</span>
		</td>
		<th class="text-center align-middle bg-secondary">이메일<span style="color : red;">*</span></th>
		<td>youngeun940725@gmail.com</td>
	</tr>
	<tr>
		<th class="text-center align-middle bg-secondary" style="width: 5%" >생년월일<span style="color : red;">*</span></th>
		<td colspan="3">
			<input type="text" class="numberOnly"/>
			<span style="font-size: 10px ;">예)19900101</span>
		</td>
	</tr>
	<tr>
		<th class="text-center align-middle bg-secondary">주소<span style="color : red;">*</span></th>
		<td colspan="3">
			<table>
				<tr>
					<input type="text" style="width: 80px;" name="postcode" placeholder="우편번호" id="postcode" readonly onclick="Search()"/>
					<button class="ml-1 mr-1" onclick="Search()">우편번호 찾기</button>
					<input type="text" style="width: 364px; " name="address" id="address" placeholder="주소는 자동입력됩니다" readonly>
				</tr>
				<tr>
					<input type="text" style="width: 550px ;" class="mt-1" name="address2" id="address2" placeholder="상세주소를 입력하세요"/>
				</tr>	
			</table>
		
		</td>
	</tr>
	<tr>
		<th class="text-center align-middle bg-secondary">긴급연락처<span style="color : red;">*</span></th>
		<td colspan="3">  		
			<select style="width: 100px; height: 27px" id="living" name="living">
				<option>010</option>
				<option>02</option>
				<option>051</option>
				<option>053</option>
				<option>032</option>
				<option>062</option>
				<option>042</option>
				<option>052</option>
				<option>044</option>
				<option>031</option>
				<option>033</option>
				<option>043</option>
				<option>041</option>
				<option>063</option>
				<option>061</option>
				<option>054</option>
				<option>055</option>
				<option>064</option>
			</select>
				-<input type="text" class="ml-1 mr-1 numberOnly" style="width: 100px ;" onkeypress="return fn_press(event, 'numbers');" onkeydown="fn_press_han(this);" >-<input type="text" class="ml-1 mr-1 numberOnly" style="width: 100px ;" />
		</td>
	</tr>
	
	<tr>
		<th class="text-center align-middle bg-secondary">휴대전화<span style="color : red;">*</span></th>
		<td colspan="3">010 - 1234 - 5678</td>
	</tr>
	
	</tbody>
	</table>
	
	<h6 class="mt-5 mb-3 font-weight-bold">부가신상정보</h6>
	
	<table class="table table-bordered border-secondary">
	<tbody>
	<tr>
		<th style="width: 15% ;" class="text-center align-middle bg-secondary">보훈여부<span style="color : red;">*</span></th>
		<td colspan="2">
			<div style="width: 50%;" class="input-group">
     			<input class="m-1 align-middle" type="radio" aria-label="Radio button for following text input" />
  				<label class="mr-5 mb-0" style="width: 100px ;">보훈</label>
     			<input class="m-1 align-middle" type="radio" aria-label="Radio button for following text input" />
				<label class="mr-5 mb-0" style="width: 100px ;">비보훈</label>	
			</div>
		</td>

	</tr>	
	<tr>	
		<th style="width: 15% ;" class="text-center align-middle bg-secondary">장애여부<span style="color : red;">*</span></th>
		<td colspan="2">
			<div style="width: 50%;" class="input-group">
     			<input class="m-1 align-middle" type="radio" aria-label="Radio button for following text input" />
  				<label class="mr-5 mb-0" style="width: 100px ;">장애</label>
     			<input class="m-1 align-middle" type="radio" aria-label="Radio button for following text input" />
				<label class="mr-5 mb-0" style="width: 100px ;">비장애</label>	
			</div>
		</td>		
	</tr>
	<tr>
		<th style="width: 15% ;" class="text-center align-middle bg-secondary">취미/특기</th>
		<td colspan="2"><input type="text"></td>
	</tr>
	</tbody>
	</table>
	
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
                     <li style="line-height: 150%;"><strong><span class="text-info">지원서 작성 전</span>에 채용공고의 직무안내 및 모집인원을 확인하신 후, 작성시 유의사항을 숙지하신 후에 지원서를 작성하시기 바랍니다.</strong></li>
                     <li style="line-height: 150%;"><strong><span class="text-info">긴급연락처</span>는 지원자 본인 부재 시 연락이 가능한 배우자나 가족의 연락처를 기재합니다.</strong></li>
                     <li><strong><span class="text-info">장애정보 및 보훈정보 관련 서류</span>는 면접대상자 한에서 추후 제출합니다.</strong></li>
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
<script>
function Search() {
	new daum.Postcode({
		oncomplete: function(data) {
			//팝업에서 검색결과 항목을 클릭했을 때 실행할 코드 작성하는 부분
			
			var fullAddr = ''; //최종 주소 변수
			var extraAddr= ''; //조합형 주소 변수
			
			if(data.userSeletedType === 'R') { //사용자가 도로명 주소를 선택했을 경우
				fullAddr = data.roadAddress;
			} else { //사용자가 지번 주소를 선택했을 경우
				fullAddr = data.jibunAddress;
			}
			
			
			//사용자가 선택한 주소가 도로명 타입일때 조합한다
			if(data.userSelectedType === 'R') {
				//법정동명이 있을 경우 추가한다.
				if(data.bname !== '') {
					extraAddr += data.bname;
				}
				
				//건물명이 있을 경우 추가한다.
				if(data.buildingName !== '') {
					extraAddr += (extraAddr !== '' ?','+data.buildingName : data.buildingName);
				}
				
				//조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종주소를 만든다
				fullAddr += (extraAddr !== ''?'('+extraAddr+')':'');
			}
			
			//우편번호와 주소 정보를 해당필드에 넣는다.
			document.getElementById('postcode').value = data.zonecode;
			document.getElementById('address').value = fullAddr;
			
			//커서를 상세주소 필드로 이동한다.
			document.getElementById('address2').focus();
		}
	}).open();
}

function english(obj) {
	var pattern = /[^(a-zA-Z)]/; //영문만 허용
	if (pattern.test(obj.value)) {
		alert("성명을 영어로 기재하십시오.");
		obj.value = '';
		obj.focus();
		return false;
	}
}

// 숫자만 입력받기
function fn_press(event, type) {
	if(type == "numbers") {
		if(event.keyCode < 48 || event.keyCode > 57) return false;
	}
}

// 한글입력 방지
function fn_press_han(obj) {
	if(event.keyCode == 8 || event.keyCode ==9 || event.keyCode == 37 || event.keyCode == 39 || event.keyCode == 46) return;
	
	obj.value=obj.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
}


</script>
<%@ include file="../include/footer.jsp"%>