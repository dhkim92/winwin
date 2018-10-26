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
				logout();
				
			}
		}, 1000);
	}
	
	function logout() {
		
		var modal = document.getElementById('myModal');
		modal.style.display = "block";
		
		var span = document.getElementsByClassName("close")[0];
		var btnClose = document.getElementById("btnClose");
		
		
		btnClose.onclick = function() {
			modal.style.display = "none";
		}
		
		$("#logoutModal").html("시간이 경과되어 자동 로그아웃됩니다.")
		
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
	
	
	$("#saveBtn").click(function() {
		
		console.log("저장하고 계속하기 버튼 클릭")
		var phoneNum;
		
		var phoneNum1 = $("#phoneNum1 option:selected").val();
		var phoneNum2 = $("#phoneNum2").val();
		var phoneNum3 = $("#phoneNum3").val();
		
		phoneNum = phoneNum1+"-"+phoneNum2+"-"+phoneNum3;
		
// 		console.log(phoneNum);
		
		$("#phoneNum").val(phoneNum);
		
		$("#userDetailForm").submit();		
	});
	
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

	<form action="/apply/userDetail" method="POST" id="userDetailForm">
	<h4 class="mt-4 mb-3 font-weight-bold">개인사항<input type="hidden" value="jobopenNo" /></h4>
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
		<td style="width: 40%">
		<span style="font-size: 10px ;">한글 </span><input style="border: none; width: 50px;" type="text" id="username" name="username" value="${member.username }" readonly/> / <span style="font-size: 10px ;">영어 </span>
			<input type="text" class="ml-1 mr-1" id="eName" name="eName" onkeyup="english(this)"/>
			<span style="font-size: 10px ;"> 예)Hong Gil Dong</span>
		</td>
		<th class="text-center align-middle bg-secondary">이메일<span style="color : red;">*</span></th>
		<td><input style="border: none; width: 300px; " id="userid" name="userid" type="text" value="${sessionScope.id }" readonly/></td>
	</tr>
	<tr>
		<th class="text-center align-middle bg-secondary" style="width: 5%" >생년월일<span style="color : red;">*</span></th>
		<td colspan="3">
			<input type="text" name="birth" id="birth" pattern="[0-9]{8}" title="생년월일을  YYYYMMDD 형식으로 입력하십시오." class="numberOnly"/>
			<span style="font-size: 10px ;">예)19900101</span>
		</td>
	</tr>
	<tr>
		<th class="text-center align-middle bg-secondary">주소<span style="color : red;">*</span></th>
		<td colspan="3">
			<table>
				<tr>
					<input type="text" style="width: 80px;" id="zipCode" name="zipCode" placeholder="우편번호" readonly onclick="Search()"/>
					<input type="button" class="ml-1 mr-1" onclick="Search()" value="우편번호 찾기" />
					<input type="text" style="width: 364px; " name="address" id="address" placeholder="주소는 자동입력됩니다" readonly>
				</tr>
				<tr>
					<input type="text" style="width: 550px ;" class="mt-1" name="addressDetail" id="addressDetail" placeholder="상세주소를 입력하세요"/>
				</tr>	
			</table>
		
		</td>
	</tr>
	<tr>
		<th class="text-center align-middle bg-secondary">긴급연락처<span style="color : red;">*</span></th>
		<td colspan="3">  		
			<select style="width: 100px; height: 27px" id="phoneNum1" name="phoneNum1">
				<option value="010">010</option>
				<option value="02">02</option>
				<option value="051">051</option>
				<option value="053">053</option>
				<option value="032">032</option>
				<option value="062">062</option>
				<option value="042">042</option>
				<option value="052">052</option>
				<option value="044">044</option>
				<option value="031">031</option>
				<option value="033">033</option>
				<option value="043">043</option>
				<option value="041">041</option>
				<option value="063">063</option>
				<option value="061">061</option>
				<option value="054">054</option>
				<option value="055">055</option>
				<option value="064">064</option>
			</select>
				-<input type="text" id="phoneNum2" name="phoneNum2" class="ml-1 mr-1 numberOnly" style="width: 100px ;" pattern="[0-9]{3,4}" title="" onkeypress="return fn_press(event, 'numbers');" onkeydown="fn_press_han(this);" >-<input type="text" id="phoneNum3" name="phoneNum3" class="ml-1 mr-1 numberOnly" pattern="[0-9]{3,4}" title="" style="width: 100px ;" onkeypress="return fn_press(event, 'numbers');" onkeydown="fn_press_han(this);" />
			<input type="hidden" id="phoneNum" name="phoneNum" />	
		</td>
	</tr>
	
	<tr>
		<th class="text-center align-middle bg-secondary">휴대전화<span style="color : red;">*</span></th>
		<td colspan="3"><input style="border: none; width: 200px; " type="text" id="phone" name="phone" value="${member.phone }" /></td>
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
     			<input name="veteran" id="veteran" class="m-1 align-middle" type="radio" value="보훈" aria-label="Radio button for following text input" />
  				<label for="veteran" class="mr-5 mb-0" style="width: 100px ;">보훈</label>
     			<input name="veteran" id="notVeteran" class="m-1 align-middle" type="radio" value="비보훈" aria-label="Radio button for following text input" />
				<label for="notVeteran" class="mr-5 mb-0" style="width: 100px ;">비보훈</label>	
			</div>
		</td>

	</tr>	
	<tr>	
		<th style="width: 15% ;" class="text-center align-middle bg-secondary">장애여부<span style="color : red;">*</span></th>
		<td colspan="2">
			<div style="width: 50%;" class="input-group">
     			<input name="disable" id="disable" class="m-1 align-middle" type="radio" value="장애" aria-label="Radio button for following text input" />
  				<label for="disable" class="mr-5 mb-0" style="width: 100px ;">장애</label>
     			<input name="disable" id="notDisable" class="m-1 align-middle" type="radio" value="비장애" aria-label="Radio button for following text input" />
				<label for="notDisable" class="mr-5 mb-0" style="width: 100px ;">비장애</label>	
			</div>
		</td>		
	</tr>
	<tr>
		<th style="width: 15% ;" class="text-center align-middle bg-secondary">취미/특기</th>
		<td colspan="2"><input type="text" name="interest" id="interest"></td>
	</tr>
	</tbody>
	</table>
	</form>
	
	<br><br><br>
	
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
		<input class="btn btn-primary text-white" type="button" id="saveBtn" name="save" value="저장하고 계속하기"/>
	</div>
      
</div>

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
			        <p class="font-weight-bold text-center" id="logoutModal"></p>
				</div>
			
			<div class="modal-footer d-flex justify-content-center">
				<div class="row">
				<a href="/user/logout"><button type="button"  id="btnClose" class="font-weight-bold btn btn-primary" style="background-color: #376092">확인</button></a>
				</div>
			</div>
	      </div>
	 
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
			document.getElementById('zipCode').value = data.zonecode;
			document.getElementById('address').value = fullAddr;
			
			//커서를 상세주소 필드로 이동한다.
			document.getElementById('addressDetail').focus();
		}
	}).open();
}

function english(obj) {
	
	var pattern = /^[a-zA-Z\s]+$/ //영문, 띄어쓰기만 허용
	
	if (!pattern.test(obj.value)) {
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