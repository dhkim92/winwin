<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>

<style>

</style>

<%@ include file="../include/header.jsp"%>

<div class="container">
	<div class="row">

		<div class="col-12 mt-5">
			<h1 class="font-weight-bold">회원가입</h1>
			<hr style="border: solid #376092;">
		</div>
		
		<div class="col-12 mt-4">
			<p class="font-weight-bold h3" style="line-height: 200%;">신규회원가입</p>
			<p class="font-weight-light h6" style="line-height: 200%;">본 사이트는 개인정보보호법 계정에 때라 회원가입에 
				필요한 다음의 최소 항목만을 수집합니다.</p>
			<p class="font-weight-light h6" style="line-height: 200%;">이메일 주소는 본인의 회원 ID로 등록되며, 전화번호는 아이디를 분실하셨을 
				경우에 꼭 필요하니, 반드시 입력하시기 바랍니다.(필수항목)</p>
				<hr style="background-color:#333">
		</div>
		
		<div class="col-12 mt-1 mb-5 text-right">
			<i class="fas fa-check" style="color: red;"></i> 
			<strong>표시 항목은 필수 입력 항목입니다.</strong>
		</div>
		
		
		<div class="col-12 mt-3">
		<p class="font-weight-bold h5" style="line-height: 200%;">회원 가입 정보</p>
			<form action="/user/login" method="post" id="loginForm">
				<table class="table table-sm">
					<tbody>
						<tr>
							<th scope="row" class="cols align-middle">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td class="cols2 align-middle">
								<strong>이메일 주소</strong>
							</td>
							<td>
								<input type="text" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="userid" name="userid" placeholder="이메일을 입력하시오.">
							</td>
						</tr>
						<tr>
							<th scope="row" class="cols align-middle">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td class="cols2 align-middle">
								<strong>비밀번호</strong>
							</td>
							<td><input type="password" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="password" name="password" placeholder="패스워드">
							</td>
						</tr>
						<tr>
							<th scope="row" class="text-right">
								<input class="form-check-input" type="checkbox" id="rememberid">
							</th>
							<td>
								<strong>아이디저장하기</strong>
							</td>
							<td></td>
						</tr>
					</tbody>
				</table>
				<div class="col-12 mt-2 text-center">
					<button type="submit" id="login_button" class="btn btn-primary btn-sm mr-3"
						style="width: 70px;">로그인</button>
					<button type="button" id="btnJoin" class="btn btn-primary btn-sm ml-2"
						style="width: 70px;">회원가입</button>
				</div>
			</form>
		</div>
		
		
	</div>
</div>


<%@ include file="../include/scriptLoader.jsp"%>

<script>

</script>

<%@ include file="../include/footer.jsp"%>