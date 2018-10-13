<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript"
src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$("#btnLogin").click(function() {
		location.href="/user/login";
	});
	
	$("#btnLogout").click(function() {
		location.href="/user/logout";
	});
	
	$("#btnJoin").click(function() {
		location.href="/user/join";
	});
	
	$("#timer").click(function() {
		counter_init();
	});
	
});
</script>

<script>
var tid;
var cnt = parseInt(50);
function counter_init() {
	tid = setInterval("counter_run()", 1000);
}

function counter_run() {
	document.all.counter.innerText = time_format(cnt);
	cnt--;
	if(cnt < 0) {
		clearInterval(tid);
		self.location = "/user/logout";
	}
}

function time_format(s) {
	var nHour=0;
	var nMin=0;
	var nSec=0;
	if(s>0) {
		nMin = parseInt(s/60);
		nSec = s%60;
		
		if(nMin>60) {
			nHour = parseInt(nMin/60);
			nMin = nMin%60;
		}
	}
	
	if(nSec<10) nSec = "0"+nSec;
	if(nMin<10) nMin = "0"+nMin;
	
	return ""+nHour+":"+nMin+":"+nSec;
}
</script>
<script>
counter_init();
</script>
</head>
<body>
<h1>메인페이지</h1>
<hr>

<c:if test="${empty login }">
<button id="btnLogin">로그인</button>
<button id="btnJoin">회원가입</button>
<br>
</c:if>

<c:if test="${login }">
<h4>${id } 님 로그인하셨습니다.</h4>
<span id="counter"> </span> 후 자동로그아웃
<br>
<button id="timer">연장</button>
<button id="btnLogout">로그아웃</button>

</c:if>

</body>
</html>


