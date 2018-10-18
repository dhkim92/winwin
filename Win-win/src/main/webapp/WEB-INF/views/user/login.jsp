<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>

<!-- javascropt lib load -->
		<script src="/resources/jsbn.js"></script>
		<script src="/resources/rsa.js"></script>
		<script src="/resources/prng4.js"></script>
		<script src="/resources/rng.js"></script>	
		<script src="/resources/login.js"></script>

<style>
.cols {
	width: 5%;
	text-align: center;
}

.cols2 {
	width: 15%;
}
</style>

<%@ include file="../include/header.jsp"%>

<div class="container">
	<div class="row">

		<div class="col-12 mt-5">
			<h1 class="font-weight-bold">로그인</h1>
			<hr style="border: solid #376092;">
		</div>

		<div class="col-12 mt-4">
			<p class="font-weight-bold h3" style="line-height: 200%;">로그인 정보가 필요합니다.</p>
			<p class="font-weight-light h5" style="line-height: 200%;">회원 가입시 이메일 주소와 비밀번호를 입력해 주시기 바랍니다.</p>
			<p class="font-weight-light h5" style="line-height: 200%;">회원정보가 없으신 분들은 [회원가입]을 눌러 회원가입을 먼저 해주시기 바랍니다.</p>
		</div>

		<div class="col-12 mt-4 text-right">
			<i class="fas fa-check" style="color: red;"></i> 
			<strong>표시 항목은 필수 입력 항목입니다.</strong>
		</div>

		<div class="col-12 mt-2">
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
								<input class="form-check-input" type="checkbox" id="userid">
							</th>
							<td>
								<strong>아이디저장하기</strong>
							</td>
							<td></td>
						</tr>
					</tbody>
				</table>
				<div class="col-12 mt-2 text-center">
					<button type="submit" class="btn btn-primary btn-sm mr-3"
						style="width: 70px;">로그인</button>
					<button type="button" class="btn btn-primary btn-sm ml-2"
						style="width: 70px;">회원가입</button>
				</div>
			</form>
		</div>
		
		<!-- 실제 서버로 전송되는 form -->
	<form action="/user/login" method="post" id="hiddenForm">
	        <input type="hidden" name="userid" />
	        <input type="hidden" name="password" />
	</form>

		<div class="col-12 mt-4 mb-5 text-center">
			<button type="button" class="btn btn-secondary btn-sm mx-4"
				style="width: 170px;">이메일 / 비밀번호 찾기</button>
		</div>

		<div class="col-12 mt-5 text-center">
			<table class="table border">
				<tbody>
					<tr>
						<th class="table-light">
							<i class="fas fa-question-circle fa-3x"></i>
						</th>
						<td class="table-light align-middle">
							<strong>이메일 주소 혹은 비밀번호에 문제가 있으신 분은 [로그인 도우미] 버튼을 눌러서 해결해 주시기 바랍니다.</strong>
						</td>
						<td class="table-light align-middle">
							<button type="button" class="btn btn-secondary btn-sm ml-5"
							style="width: 170px;">로그인 도우미</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>


	</div>
</div>


<%@ include file="../include/scriptLoader.jsp"%>

<script>
var $userid = $("#hiddenForm input[name='userid']");
var $password = $("#hiddenForm input[name='password']");

// Server로부터 받은 공개키 입력
var rsa = new RSAKey();
rsa.setPublic("${modulus}", "${exponent}");

$("#loginForm").submit(function(e) {
    // 실제 유저 입력 form은 event 취소
    // javascript가 작동되지 않는 환경에서는 유저 입력 form이 submit 됨
    // -> Server 측에서 검증되므로 로그인 불가
    e.preventDefault();

    // 아이디/비밀번호 암호화 후 hidden form으로 submit
    var userid = $(this).find("#userid").val();
    var password = $(this).find("#password").val();
    $userid.val(rsa.encrypt(userid)); // 아이디 암호화
    $password.val(rsa.encrypt(password)); // 비밀번호 암호화
    $("#hiddenForm").submit();
});	


	$(function() {

		var userid = $.cookie('userid');
		if (userid != undefined) {
			$("#userid").val(userid);
			$("#rememberid").prop("checked", true);
		}

		//로그인 버튼 클릭시
		$("#login_button").click(function() {
			//아이디 미입력시
			if ($.trim($("#userid").val()) == "") {
				alert("아이디를 입력하세요");
				return;
				//아이디 입력시
			} else if($.trim($("#password").val()) == ""){
				alert("비밀번호를 입력하세요");
				return;
			} else{
				//아이디저장 체크되어있으면 쿠키저장
				if ($("#rememberid").prop("checked")) {
					$.cookie('userid', $("#userid").val());
					//아이디저장 미체크면 쿠키에 정보가 있던간에 삭제
				} else {
					$.removeCookie("userid");
				}
			}
		})

		$.cookie('쿠키명', '쿠키값', {
			//쿠키보관일
			expires : 5
			//도메인
			,
			domain : 'http://hellogk.tistory.com'
			//https/http 결정
			,
			secure : false
		});

	});


</script>

<%@ include file="../include/footer.jsp"%>