<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/CSSLoader.jsp"%>
<div class="container">
<h3 class="pull-left" style="margin-top: 80px">입사 지원현황</h3>
<h6 class="pull-left" style="padding-left: 100px; margin-top: 60px;">학력
	<label class="radio-inline" style="padding-right:100px; padding-left: 120px;">
	  <input type="radio" name="achievement" id="achievement1" value="option1"> 고등학교 졸업
	</label>
	<label class="radio-inline" style="padding-right:100px;">
	  <input type="radio" name="achievement" id="achievement2" value="option2"> 대학 2년제
	</label>
	<label class="radio-inline" style="padding-right:100px;">
	  <input type="radio" name="achievement" id="achievement3" value="option3"> 대학 4년제
	</label>
	<label class="radio-inline" style="padding-right:100px;">
	  <input type="radio" name="achievement" id="achievement4" value="option4"> 석사 / 박사
	</label>
	</h6>
<hr>
<h6 class="pull-left" style="padding-left: 100px; margin-top: 20px;">학점
	<label class="radio-inline" style="padding-right:145px; padding-left: 120px;">
	  <input type="radio" name="credit" id="credit1" value="option1"> 2.5 이상
	</label>
	<label class="radio-inline" style="padding-right:115px;">
	  <input type="radio" name="credit" id="credit2" value="option2"> 3.0 이상
	</label>
	<label class="radio-inline" style="padding-right:125px;">
	  <input type="radio" name="credit" id="credit3" value="option3"> 3.5 이상
	</label>
	<label class="radio-inline" style="padding-right:130px;">
	  <input type="radio" name="credit" id="credit4" value="option4"> 4.0 이상
	</label>
	</h6>
<hr>
<h6 class="pull-left" style="padding-left: 100px;">어학 능력
<label class="dropdown" style="padding-left:80px;">
  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" 
  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    어학 능력
  </button>
  <label class="dropdown-menu">
    <a class="dropdown-item" href="#">토익</a>
    <a class="dropdown-item" href="#">토플</a>
    <a class="dropdown-item" href="#">Something else here</a>
  </label>
</label>
<label class="form-group" style=padding-left:100px;>
    <input type="email" class="form-control form-control-sm" id="InputScore" placeholder="점수를 입력하세요">
  </label>

</h6>
<hr>



</div>



<style>
</style>
<%@ include file="../include/header.jsp"%>


	
<%@ include file="../include/scriptLoader.jsp"%>

<script>


</script>

<%@ include file="../include/footer.jsp"%>