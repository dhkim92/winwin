<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>
<style type="text/css">

.info {
  font-size: 14px;
  font-weight: bold;  
  list-style-type: square;
  color: grey;
}

.infolist {
  font-size: 15px;
  font-weight: bold;  
}

</style>

<%@ include file="../include/header.jsp"%>

<div class="container">
<div class="container">

	<div class="col-12 mt-5">
		<p class="font-weight-bold h3">지원 결과확인<span class="ml-3" style="font-size: 12px; font-weight: bold; color: grey;">지원하신 채용공고의 합격 결과를 확인하실 수 있습니다.</span></p>
		<hr style="border: solid #376092;">
	</div>
	
	<div class="row col-12 mt-5">
		<div class="col-5 text-center mt-3">
			<img src="/resources/image/hand.png" style="height: 200px;"/>
		</div>
		<div class="col-7 d-flex flex-wrap align-content-center mt-4">
			<div>
				<p class="infolist">지원 결과 확인 시</p> 
				<ul>
				<li class="info">지원하신 공고를 선택하시고 작성 시 등록한 성명, 이메일, 비밀번호를 다시 한번 입력하신 후 내역을 확인하시기 바랍니다.</li>
				</ul>
				<br>
				<p class="infolist">관련 문의사항</p> 
				<ul><li class="info">결과에 대한 문의사항은 채용문의 게시판으로 문의 해주시기 바랍니다.</li> </ul>
			
			</div>
		</div>
	</div>

	<div class="mt-5">
	<table class="table table-bordered table-sm border-secondary col-8 " align="center">
	<tbody>
		<tr>
			<th class="text-center align-middle bg-secondary pr-3 pl-3">채용분류</th>
			<td colspan="3">
				<div class="d-flex justify-content-start">
				<div class="form-check ml-4">
				  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
				  <label class="form-check-label" for="exampleRadios1">
				    신입사원 채용
				  </label>
				</div>
				<div class="form-check ml-4">
				  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
				  <label class="form-check-label" for="exampleRadios2">
				    경력사원 채용
				  </label>
				</div>
				</div>	
			</td>
		</tr>
		
		<tr>
			<th class="text-center align-middle bg-secondary pr-3 pl-3">채용공고</th>
			<td colspan="3">  		
				<select class="ml-4" style="width: 500px;height: 25px;">
				</select>
			</td>
		</tr>
		
		<tr>
			<th class="text-center align-middle bg-secondary pr-3 pl-3" >한글성명</th>
			<td colspan="3">  		
				<input class="ml-4" type="text" style="width: 250px; height: 25px;"/>
			</td>			
		</tr>
		<tr>
			<th class="text-center align-middle bg-secondary pr-3 pl-3" >이메일</th>
			<td colspan="3">  		
				<input class="ml-4" type="text" style="width: 250px; height: 25px;"/>
			</td>			
		</tr>
		<tr>
			<th class="text-center align-middle bg-secondary pr-3 pl-3" >비밀번호</th>
			<td colspan="3">  		
				<input class="ml-4" type="password" style="width: 250px; height: 25px;"/>
			</td>			
		</tr>
	</tbody>
	</table>
		<div class="d-flex justify-content-end" style="margin-right: 132px;">
		<button type="button" class="btn btn-primary btn-sm ml-3 mr-5" >결과확인</button>
		</div>
	</div>

</div>
</div>

<%@ include file="../include/scriptLoader.jsp"%>
<%@ include file="../include/footer.jsp"%>