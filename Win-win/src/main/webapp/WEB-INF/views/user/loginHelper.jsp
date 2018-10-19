<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>

<style>

</style>

<%@ include file="../include/header.jsp"%>
    
<div class="container">
<div class="container">
	<div class="row">

		<div class="col-12 mt-5">
			<p class="font-weight-bold h3">로그인 도우미</p>
			<hr style="border: solid #376092;">
		</div>
		
		<div class="col-12 mt-4 mb-4">
			<p class="font-weight-bold h5" style="line-height: 200%;">로그인 관련 문제가 있으신가요?</p>
			<p class="font-weight-light h6" style="line-height: 200%;">내가 설정한 로그인용 이메일 주소 혹은 비밀번호를 잊어버리신 분들은 아래 메뉴를 이용해 주세요.</p>
		</div>
		
		<div class="col-12 mt-5">
			<p class="font-weight-bold h5">이메일 주소 찾기</p>
			<p class="d-flex justify-content-end">
			<i class="fas fa-check" style="color: red;"></i> 
			<strong>표시 항목은 필수 입력 항목입니다.</strong></p>
		</div>
		
		
		<div class="col-12 mt-1 mb-4">
			<form action="/user/login" method="post" id="loginForm">
				<table class="table table-sm border border-right-0 border-left-0">
					<tbody>
						<tr>
							<th scope="row" class="cols align-middle">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td class="cols2 align-middle">
								<strong>이름</strong>
							</td>
							<td>
								<input type="email" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="username" name="username" placeholder="이름을 입력하시오.">
							</td>
						</tr>
						<tr>
							<th scope="row" class="cols align-middle">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td class="cols2 align-middle">
								<strong>전화번호</strong>
							</td>
							<td><input type="text" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="phone" name="phone" placeholder="전화번호를 입력하시오">
							</td>
						</tr>
					</tbody>
				</table>
				<div class="col-12 mt-2 text-right">
					<button type="submit" class="btn btn-primary btn-sm">이메일 찾기</button>
				</div>
			</form>
		</div>
		
		
		<div class="col-12 mt-5">
			<p class="font-weight-bold h5">비밀번호 찾기</p>
			<ul>
				<li class="mt-3" style="line-height: 200%;">등록하신 [이름], [이메일 주소]를 입력하시면 대상자 확인 후
									 임의의 비밀번호로 변경하여 등록하신 메일로 알려드립니다.</li>
				<li style="line-height: 200%;">임의의 비밀번호를 이메일에서 확인하신 뒤 WIN-WIN채용 홈페이지에서 로그인하실 수 있습니다.</li>
				<li style="line-height: 200%;">임의로 설정된 비밀번호는 다시 원하는 비밀번호로 변경하실 수 있습니다.</li>
			</ul>
			<p class="d-flex justify-content-end">
			<i class="fas fa-check" style="color: red;"></i> 
			<strong>표시 항목은 필수 입력 항목입니다.</strong></p>
		</div>
		
		<div class="col-12 mt-1">
			<form action="/user/login" method="post" id="loginForm">
				<table class="table table-sm border border-right-0 border-left-0">
					<tbody>
						<tr>
							<th scope="row" class="cols align-middle">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td class="cols2 align-middle">
								<strong>이름</strong>
							</td>
							<td>
								<input type="email" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="username" name="username" placeholder="이름을 입력하시오.">
							</td>
						</tr>
						<tr>
							<th scope="row" class="cols align-middle">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td class="cols2 align-middle">
								<strong>이메일 주소</strong>
							</td>
							<td><input type="email" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="userid" name="userid" placeholder="이메일을 입력하시오">
							</td>
						</tr>
					</tbody>
				</table>
				<div class="col-12 mt-2 text-right">
					<button type="submit" class="btn btn-primary btn-sm">비밀번호 찾기</button>
				</div>
			</form>
		</div>

		
		<div class="col-12 mt-5 text-center">
			<table class="table border">
				<tbody>
					<tr>
						<th class="table-light">
							<i class="fas fa-question-circle fa-3x"></i>
						</th>
						<td class="table-light align-middle">
							<strong>위 방법으로도 로그인을 할 수 없을 경우에 [Q&A 게시판]을 이용해 주시기 바랍니다.</strong>
						</td>
						<td class="table-light align-middle">
							<button type="button" id="btnQna" class="btn btn-secondary btn-sm ml-5"
							style="width: 170px;">Q&A게시판으로 이동</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class="col-12 mt-3 text-center">
			<button type="button" id="btnLogin" class="btn btn-secondary btn-sm ml-5">로그인 이동</button>
		</div>

	</div>
</div>
</div>    
    
<%@ include file="../include/scriptLoader.jsp"%>

<script>
$(document).ready(function() {
	
	$("#btnLogin").click(function() {
		location.href="/user/login";
	});
	
	$("#btnQna").click(function() {
		location.href="/qna/list";
	});
	
});
</script>

<%@ include file="../include/footer.jsp"%>