<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>
<%@ include file="../include/header.jsp"%>

<div class="container">

	<div style="height: 100px"></div>
	<h4 class="text-center font-weight-bold">WINWIN은 <span style="color: #008CBA">임직원</span>의 <span style="color: #008CBA">꿈</span>이 실현되는 소중한 공간을 만들어갑니다.</h4>
	
	<div class="mt-5 text-center">
		<img src="/resources/image/linkbar.PNG" width="708"/>
	</div>
	<div class="text-center mt-3">
		<a href="/notice/list" style="text-decoration: none; color: black;"><i class="fas fa-bullhorn fa-2x ml-5 mr-5 pl-4 pr-4"></i></a>
		<a href="#" style="text-decoration: none; color: black;"><i class="far fa-edit fa-2x ml-5 mr-5 pl-4 pr-4"></i></a>		
		<a href="#" style="text-decoration: none; color: black;"><i class="far fa-check-square fa-2x ml-5 mr-5 pl-4 pr-4"></i></a>
		<a href="/qna/list" style="text-decoration: none; color: black;"><i class="far fa-question-circle fa-2x ml-5 mr-5 pl-4 pr-4"></i></a>
	</div>
		<div class="text-center mt-2">
		<span class="ml-5 mr-5 pl-3 pr-2 font-weight-bold" style="font-size: 14px"><a href="/notice/list" style="text-decoration: none; color: black;">공지사항</a></span>
		<span class="ml-5 mr-5 pl-3 pr-2 font-weight-bold" style="font-size: 14px"><a href="#" style="text-decoration: none; color: black;">입사지원</a></span>		
		<span class="ml-5 mr-5 pl-3 pr-2 font-weight-bold" style="font-size: 14px"><a href="#" style="text-decoration: none; color: black;">결과확인</a></span>
		<span class="ml-5 mr-5 pl-3 pr-2 font-weight-bold" style="font-size: 14px"><a href="/qna/list" style="text-decoration: none; color: black;">채용문의</a></span>
	</div>
	
	<hr class="mt-5" style="height:1px; width:750px; background-color: lightgray">
	<span class="ml-5 pl-5"></span><span class="ml-5 pl-5 font-weight-bold" style="font-size: 14px"><a href="/jobOpen/list" style="text-decoration: none; color: black;">채용공고</a></span>
	
	<div class="text-center mt-4">
	<table class="table table-sm col-md-8 " align="center">
  <thead>
    <tr>
      <th>번호</th>
      <th>구분</th>
      <th>제목</th>
      <th>게시기간</th>
      <th>진행상황</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>신입</td>
      <td>신입 IT 개발자 채용</td>
      <td>2018.10.18 - 2018.10.18</td>
      <td><span class="badge badge-pill badge-primary">채용중</span></td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>경력</td>
      <td>경력 FRONT 디자이너 채용</td>
      <td>2018.10.18 - 2018.10.18</td>
      <td><span class="badge badge-pill badge-light">채용완료</span></td>
    </tr>
  </tbody>
</table>
</div>

<div class="d-flex justify-content-center mt-4">
  <ul class="pagination pagination-sm">
    <li class="page-item disabled">
      <a class="page-link" href="#">&laquo;</a>
    </li>
    <li class="page-item active">
      <a class="page-link" href="#">1</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">2</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">3</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">4</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">5</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">&raquo;</a>
    </li>
  </ul>
</div>	
	
</div>


<%@ include file="../include/scriptLoader.jsp"%>
<%@ include file="../include/footer.jsp"%>