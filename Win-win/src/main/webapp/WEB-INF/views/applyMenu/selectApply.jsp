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
		<p class="font-weight-bold h3">입사지원<span class="ml-3" style="font-size: 12px; font-weight: bold; color: grey;">정확한 정보를 바탕으로 성실하게 작성해 주시기 바랍니다.</span></p>
		<hr style="border: solid #376092;">
	</div>
	
	<div class="row col-12 mt-5">
		<div class="col-5 text-center mt-3">
			<p class="font-weight-bold h4">지원하기 전에 <span style="color: red;">꼭 알아두세요!</span></p>
			<img src="/resources/image/resume.png" style="height: 200px;"/>
		</div>
		<div class="col-7">
			<div class="mt-3">
				<p class="infolist">지원 시에 입력하신 정보</p> 
				<ul>
				<li class="info">지원자의 입사지원서 기재 내용이 허위임이 판정될 때에는 그 내용의 중요성과 관계없이 합격(입사)을 취소합니다.</li>
				<li class="info">최종 제출 전 각 단계별 지원 내용은 수정하실 수 있습니다.</li>
				</ul>
				<p  class="infolist">관련 문의사항</p> 
				<ul><li class="info">채용에 대한 문의사항은 채용문의 게시판으로 문의 해주시기 바랍니다.</li> </ul>
			
				<p  class="infolist">로그인 필요</p> 
				<ul><li class="info">로그인 한 사용자만 채용공고를 선택하여 입사지원 하실 수 있습니다.</li></ul>
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
				<select class="ml-4" style="width: 500px;">
				</select>
				<button type="button" class="btn btn-primary btn-sm ml-3">지원하기</button>
			</td>
		</tr>
	</tbody>
	</table>
	</div>

</div>
</div>

<%@ include file="../include/scriptLoader.jsp"%>
<%@ include file="../include/footer.jsp"%>