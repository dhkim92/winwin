<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/CSSLoader.jsp"%>
<div class="container">
	<h3 class="pull-left" style="margin-top: 80px">입사 지원현황</h3>
	<h6 class="pull-left" style="padding-left: 100px; margin-top: 60px;">
		학력 <label class="radio-inline"
			style="padding-right: 100px; padding-left: 120px;"> <input
			type="radio" name="achievement" id="achievement1" value="option1">
			고등학교 졸업
		</label> <label class="radio-inline" style="padding-right: 100px;"> <input
			type="radio" name="achievement" id="achievement2" value="option2">
			대학 2년제
		</label> <label class="radio-inline" style="padding-right: 100px;"> <input
			type="radio" name="achievement" id="achievement3" value="option3">
			대학 4년제
		</label> <label class="radio-inline" style="padding-right: 100px;"> <input
			type="radio" name="achievement" id="achievement4" value="option4">
			석사 / 박사
		</label>
	</h6>
	<hr>
	<h6 class="pull-left" style="padding-left: 100px; margin-top: 20px;">
		학점 <label class="radio-inline"
			style="padding-right: 135px; padding-left: 120px;"> <input
			type="radio" name="credit" id="credit1" value="option1"> 2.5
			이상
		</label> <label class="radio-inline" style="padding-right: 120px;"> <input
			type="radio" name="credit" id="credit2" value="option2"> 3.0
			이상
		</label> <label class="radio-inline" style="padding-right: 115px;"> <input
			type="radio" name="credit" id="credit3" value="option3"> 3.5
			이상
		</label> <label class="radio-inline" style="padding-right: 130px;"> <input
			type="radio" name="credit" id="credit4" value="option4"> 4.0
			이상
		</label>
	</h6>
	<hr>
	<h6 class="pull-left" style="padding-left: 100px;">
		어학 능력 <label class="form-group" style="padding-left: 80px;"> <select
			class="form-control" id="language">
				<option>토익</option>
				<option>토플</option>
		</select>
		</label> <label class="form-group" style="padding-left: 100px;"> <input
			type="email" class="form-control " id="InputScore"
			placeholder="점수를 입력하세요">
		</label>
	</h6>
	<hr>

	<label class="form-group" style="padding-left: 100px;"> <select
		class="form-control" id="language">
			<option>토익</option>
			<option>토플</option>
	</select>
	</label> <label class="form-group" style="padding-left: 100px;"> <select
		class="form-control" id="language">
			<option>토익</option>
			<option>토플</option>
	</select>
	</label>
	<button type="button" class="btn btn-dark" style="float:right; margin-right:60px;">조 회</button>
<hr>
</div>

<div class="container">
<table class="table">
  <thead>
    <tr>
      <th class="text-center">번호</th>
      <th class="text-center">공 고 명</th>
      <th class="text-center">지원 일자</th>
      <th class="text-center">지원자</th>
      <th class="text-center">포트폴리오</th>
      <th class="text-center">처리 상태</th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" class="text-center">20</th>
      <td class="text-center">경력 사원 입사지원서</td>
      <td class="text-center">18.08.23</td>
      <td class="text-center">문재환</td>
      <td class="text-center"><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" 
      data-target="#exampleModal">포트폴리오</button></td>
      <td class="text-center"><button type="button" class="btn btn-secondary btn-sm">처리 전</button></td>
    </tr>
</tbody>
</table>
</div>

<div class="container" >
<div class= "col-12 justify-content-center">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="#!" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#!">1</a></li>
    <li class="page-item"><a class="page-link" href="#!">2</a></li>
    <li class="page-item"><a class="page-link" href="#!">3</a></li>
    <li class="page-item"><a class="page-link" href="#!">4</a></li>
    <li class="page-item"><a class="page-link" href="#!">5</a></li>
    <li class="page-item">
      <a class="page-link" href="#!" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
  </ul>
</div>
</div>


<style>
</style>
<%@ include file="../include/header.jsp"%>



<%@ include file="../include/scriptLoader.jsp"%>

<script>
	
</script>

<%@ include file="../include/footer.jsp"%>