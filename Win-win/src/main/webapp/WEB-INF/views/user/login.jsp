<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="/resources/jquery.cookie.js"></script>
		
		<!-- javascropt lib load -->
		<script src="/resources/jsbn.js"></script>
		<script src="/resources/rsa.js"></script>
		<script src="/resources/prng4.js"></script>
		<script src="/resources/rng.js"></script>	
		<script src="/resources/login.js"></script>

</head>
<body>
<h1>로그인페이지</h1>
<hr>
	<form action="/user/login" method="post" id="loginForm">
		아이디 : <input type="text"  id="userid" name="userid"><br>
		 패스워드 : <input type="password" id="password" name="password" /><br>
		 <input type="checkbox" id="rememberid" />아이디 저장
		<input type="submit" id="login_button" value="로그인" /> 
	</form>
	
	<!-- 실제 서버로 전송되는 form -->
	<form action="/user/login" method="post" id="hiddenForm">
	        <input type="hidden" name="userid" />
	        <input type="hidden" name="password" />
	</form>
	
	<br>
	<a href="/user/main" role="button" aria-pressed="true">메인으로</a>
	
	
	<script type="text/javascript">
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
</body>
</html>