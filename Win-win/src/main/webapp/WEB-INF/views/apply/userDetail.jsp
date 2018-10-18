<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>
<style>

</style>    
<%@ include file="../include/header.jsp"%>

<div class="container">
	<h4 class="mt-3 font-weight-bold">입사지원 등록</h4>
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
	      	<td class="text-danger text-center align-middle">0:30:00</td>
	      	<td><button>연장</button></td>
	    </tr>    
	  </tbody>
	</table>
	</div>

	<h4 class="mt-4 mb-3 font-weight-bold">개인사항</h4>
	<div class="row">
		<img class="img-fluid d-block ml-3" src="/resources/image/B_userDetail.png">
		<a href="/apply/academicUpdate">
			<img class="img-fluid d-block" src="/resources/image/G_academic.png">
		</a>
		<a href="/apply/militaryUpdate">
			<img class="img-fluid d-block" src="/resources/image/G_military.png">
		</a> 
		<a href="/apply/careerUpdate">
			<img class="img-fluid d-block" src="/resources/image/G_career.png">
		</a>
		<a href="/apply/introduceUpdate">
			<img class="img-fluid d-block" src="/resources/image/G_introduce.png">
		</a>
		<img class="img-fluid d-block" src="/resources/image/G_complete.png">
	</div>
	
	<h6 class="mt-5 mb-3 font-weight-bold">기본정보</h6>
	
	<table class="table table-bordered border-secondary">
	<tbody>
	<tr>
		<th style="width: 15% ;" class="text-center align-middle bg-secondary">성명<span style="color : red;">*</span></th>
		<td style="width: 40%"><span style="font-size: 10px ;">한글 </span>한상근 / <span style="font-size: 10px ;">영어 </span><input type="text" class="ml-1 mr-1" /></td>
		<th class="text-center align-middle bg-secondary">이메일<span style="color : red;">*</span></th>
		<td>youngeun940725@gmail.com</td>
	</tr>
	<tr>
		<th class="text-center align-middle bg-secondary" style="width: 5%" >생년월일<span style="color : red;">*</span></th>
		<td colspan="3"><input type="text" /></td>
	</tr>
	<tr>
		<th class="text-center align-middle bg-secondary">주소<span style="color : red;">*</span></th>
		<td colspan="3">
			<table>
				<tr><input type="text" style="width: 80px; " /><button class="ml-1 mr-1">우편번호 찾기</button><input type="text" style="width: 230px; "></tr>
				<tr><input type="text" style="width: 420px ;" class="mt-1"/></tr>	
			</table>
		
		</td>
	</tr>
	<tr>
		<th class="text-center align-middle bg-secondary">긴급연락처<span style="color : red;">*</span></th>
		<td colspan="3">
      		<div class="dropdown">
  				<button class="btn btn-secondary dropdown-toggle p-0" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">010</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
					<button class="dropdown-item" type="button">031</button>
					<button class="dropdown-item" type="button">02</button>
					<button class="dropdown-item" type="button">063</button>
				</div>
				-<input type="text" class="ml-1 mr-1" style="width: 100px ;">-<input type="text" class="ml-1 mr-1" style="width: 100px ;" />
			</div>
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


</body>
</html>