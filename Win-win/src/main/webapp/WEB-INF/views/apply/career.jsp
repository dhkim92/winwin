<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>
<style>
</style>
<%@ include file="../include/header.jsp"%>


<div class="container">
	<h4 class="mt-3">입사지원 등록</h4>
	<img class="img-fluid d-block" src="/resources/image/grayline.png">

	<div class="col-md-12 border border-info mt-3">
		<h6 class="m-1">지원공고명</h6>
	</div>
	
	<div class="row">
		<div class="col-md-2 border border-info bg-primary">
			<p class="my-2 text-center">접수 상태</p>
		</div>
		<div class="col-md-2 border border-active">
			<p class="my-2">지원서 저장 전 입니다</p>
		</div>
		<div class="col-md-2 border border-info bg-active">
			<p class="my-2 text-center">원서 마감 일시</p>
		</div>
		<div class="col-md-2 border border-active">
			<div class="row">
				<div class="col-md-6">
					<p class="my-2">마감날짜</p>
				</div>
				<div class="col-md-6">
					<p class="my-2 text-danger text-center">(D-98)</p>
				</div>
			</div>
		</div>
		<div class="col-md-2 border border-info bg-info">
			<p class="my-2 text-center">자동 로그아웃</p>
		</div>
		<div class="col-md-2 border border-info">
			<div class="row">
				<div class="col-md-6">
					<p class="my-2 text-center text-danger">0:30:00</p>
				</div>
				<div class="col-md-6">
					<a class="btn m-1 rounded-0 btn-info" href="#">Button </a>
				</div>
			</div>
		</div>
	</div>
	<div class="row"></div>
	<div class="row">
		<div class="col-md-12">
			<h2 class="m-1">경력사항</h2>
		</div>
	</div>
	<div class="row">
		<div class="col-md-1 m-0 p-0">
			<img class="img-fluid d-block" src="/resources/image/G_userDetail.png">
		</div>
		<div class="col-md-1 m-0 p-0">
			<img class="img-fluid d-block" src="/resources/image/G_academic.png">
		</div>
		<div class="col-md-1 m-0 p-0">
			<img class="img-fluid d-block" src="/resources/image/G_military.png">
		</div>
		<div class="col-md-1 m-0 p-0">
			<img class="img-fluid d-block" src="/resources/image/B_career.png">
		</div>
		<div class="col-md-1 m-0 p-0">
			<img class="img-fluid d-block" src="/resources/image/G_introduce.png">
		</div>
		<div class="col-md-1 m-0 p-0">
			<img class="img-fluid d-block" src="/resources/image/G_complete.png">
		</div>
		<div class="col-md-6"></div>
	</div>
	<div class="row"></div>
</div>
</body>
</html>