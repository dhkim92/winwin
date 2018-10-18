<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/CSSLoader.jsp"%>
<%@ include file="../include/header.jsp"%>
<div class="container">
	<div class="row">
	<div class="col-12">
	<h3 class="pull-left" style="margin-top: 80px">입사 지원현황</h3>
	</div>
	</div>
<div class="row">
<div class="col-12 mt-5">

<table class="table table-bordered">
  <thead class="thead-light">
    <tr>
      <th class="text-center">경력</th>
      <th class="text-center">고용형태</th>
      <th class="text-center">학력</th>
      <th class="text-center">학점</th>
      <th class="text-center">어학</th>
      <th class="text-center">점수</th>
      <th class="text-center">처리상태</th>
      
    </tr>
  </thead>
  <style>
  	#test tr td {padding:0px;}
  </style>
  <tbody id="test">
    <tr>
      <td class="text-center" style="width:12%">
      <select multiple class="form-control" id="career">
        <option>신입</option>
        <option>1~3년</option>
        <option>4~6년</option>
        <option>7~9년</option>
        <option>10년~15년</option>
      </select></td>
      <td class="text-center" style="width:16%">
      <select multiple class="form-control" id="employment">
        <option>정규직</option>
        <option>계약직</option>
        <option>인턴</option>
        <option>파견직</option>
        <option>프리랜서</option>
      </select></td>
      <td class="text-center" style="width:25%">
      <select multiple class="form-control" id="academiccareer">
        <option>대학교졸업(4년)</option>
        <option>대학교졸업(2~3년)</option>
        <option>대학원 석사졸업</option>
        <option>대학원 박사졸업</option>
        <option>고등학교 졸업</option>
        <option>학력 무관</option>
      </select></td>
      <td class="text-center" style="width:15%">
      <select multiple class="form-control" id="credit">
        <option>2.0 이상</option>
        <option>2.5 이상</option>
        <option>3.0 이상</option>
        <option>3.5 이상</option>
        <option>4.0 이상</option>
      </select></td>
      <td class="text-center" style="width:10%">
      <select multiple class="form-control" id="language">
        <option>토익</option>
        <option>토플</option>
        <option>탭스</option>
        <option>토스</option>
        <option>오픽</option>
      </select></td>
      <td style="width:12%">
      <select multiple class="form-control" id="score">
        <option>500~550</option>
        <option>550~600</option>
        <option>600~650</option>
        <option>650~700</option>
        <option>750~800</option>
        <option>800~850</option>
        <option>850~900</option>
        <option>900 이상</option>
      </select></td>
      <td class="text-center" style="width:10%">
      <select multiple class="form-control" id="status">
        <option>처리 전</option>
        <option>처리 후</option>
      </select></td>
    </tr>
    <tr>
    <th class="text-center" colspan="1" style="background-color:#eee; padding:0px;"> 공고명  </th>
    <td class="dropdown" colspan="6"><button class="btn btn-secondary dropdown-toggle"
          type="button" id="dropdowntitle" data-toggle="dropdown"
          aria-haspopup="true" aria-expanded="false" style=" width:456px; background-color:#fff;">
     공고명을 선택해 주십시오!
  </button>
  <div class="dropdown-menu" aria-labelledby="titledrop">
    <a class="dropdown-item" href="#!">Action</a>
    <a class="dropdown-item" href="#!">Another action</a>
  </div></td>
    
    </tr>
</tbody>
</table>


</div>
</div>


<div class="row">
<div class="col-12 mt-5">
<table class="table table-hover">
  <thead class="thead-light">
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
</div>

<div class="row" >
<div class= "col-12 d-flex justify-content-center">
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
</div>


<style>
</style>



<%@ include file="../include/scriptLoader.jsp"%>

<script>
	
</script>

<%@ include file="../include/footer.jsp"%>