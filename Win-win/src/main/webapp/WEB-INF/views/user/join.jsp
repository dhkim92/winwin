<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>

<style>
.cols {
	width: 5%;
	text-align: center;
}

.cols2 {
	width: 18%;
}
</style>

<%@ include file="../include/header.jsp"%>

<div class="container">
<div class="container">
	<div class="row">

		<div class="col-12 mt-5">
			<p class="font-weight-bold h3">회원가입</p>
			<hr style="border: solid #376092;">
		</div>
		
		<div class="col-12 mt-4">
			<p class="font-weight-bold h4" style="line-height: 200%;">신규회원가입</p>
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
			<form action="/user/join" method="post">
				<table class="table table-sm">
					<tbody>
						<tr>
							<th scope="row" class="cols align-middle">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td class="cols2 align-middle">
								<strong>한글 성명</strong>
							</td>
							<td>
								<input type="text" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="username" name="username" placeholder="한글 성명을 입력하시오.">
							</td>
						</tr>
						<tr>
							<th scope="row" class="cols align-middle">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td class="cols2 align-middle">
								<strong>이메일 주소(로그인 아이디)</strong>
							</td>
							<td class=form-inline><input type="email" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="userid" name="userid" placeholder="이메일을 입력하시오.">
								<button type="button" id="idConfirm" class="btn btn-primary btn-sm mr-3"
									style="width: 70px;">중복확인</button>
								<span style="color:#008CBA;">로그인 시 사용되는 이메일 주소입니다.</span>
							</td>
						</tr>
						<tr>
							<th scope="row" class="cols align-middle">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td class="align-middle">
								<strong>전화번호</strong>
							</td>
							<td class="align-middle">
								<input type="text" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="phone" name="phone" placeholder="전화번호를입력하시오.">
							</td>
						</tr>
						<tr>
							<th scope="row" class="cols">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td>
								<strong>비밀번호</strong>
							</td>
							<td class="align-middle">
								<input type="password" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="password" name="password" placeholder="패스워드">
								<ul>
								<li class="mt-3" style="color:#008CBA; line-height: 200%;">비밀번호는 8~16자의 영문 대/소문자, 숫자,
									 특수문자(!@#$%^&*)를 혼합해서 사용하실 수 있습니다.</li>
								<li style="color:#008CBA; line-height: 200%;">쉬운 비밀번호나 자주 쓰는 사이트의 비밀번호가 같을 경우,
									 도용되기 쉬우므로 주기적으로 변경하셔서 사용하는것이 좋습니다.</li>
								<li style="color:#008CBA; line-height: 200%;">아이디와 생일, 전화번호 등 개인정보와 관련된 숫자, 
									연속된 숫자, 반복된 문자 등 다른 사람이 쉽게 알아 낼 수 있는 비밀번호는 개인정보의 유출의 위험이 높으므로 사용을 자제해 주기시 바랍니다. </li>
									</ul>
							</td>
						</tr>
						<tr>
							<th scope="row" class="cols align-middle">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td class="align-middle">
								<strong>비밀번호(확인)</strong><i class="fas fa-exclamation-circle ml-2" style="color: red;"></i>
							</td>
							<td class="align-middle">
								<input type="text" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="phone" name="userid" placeholder="패스워드 확인">
							</td>
						</tr>
					</tbody>
				</table>
				<div class="col-12 mt-5 mb-5 text-center">
					<button type="submit" class="btn btn-primary btn-sm mr-3"
						style="width: 90px;">회원가입</button>
					<button type="button" id="btnLogin" class="btn btn-primary btn-sm ml-2"
						style="width: 90px;">로그인 이동</button>
				</div>
			</form>
		</div>
		
		<div class="col-12 mt-5">
			<table class="table border">
				<tbody>
					<tr>
						<th class="text-center table-light align-middle">
							<i class="fas fa-exclamation-triangle fa-3x"></i>
						</th>
						<td class="table-light align-middle"> 
						<ul>
							<li style="line-height: 150%;"><strong>상기 내용은 향후 전형을 진행하는데 있어 필수적인 항목이므로 잘 확인하시기 바랍니다.</strong></li>
							<li style="line-height: 150%;"><strong>특히 이메일 주소 및 비밀번호는 로그인 및 결과확인을 위하여 꼭 필요한므로 정확히 입력하신 후 메모 또는 인쇄하여 잘 보관해 주시기 바랍니다.</strong></li>
							<li><strong>일부 메일에서 당사 발신 메일이 스팸처리 되는 경우가 발생하오니 메일 미회신 시 스팸편지함을 확인하시거나 다른 메일 계정으로 가입하시기 바랍니다.</strong></li>
						</ul>
						</td>
					</tr>
				</tbody>
			</table>
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
	
});

</script>

<%@ include file="../include/footer.jsp"%>