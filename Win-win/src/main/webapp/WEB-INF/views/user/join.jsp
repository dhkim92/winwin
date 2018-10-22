<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>

<style>

 /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding-left: 10px; 
            padding-right: 10px; 
            border: 1px solid #888;
            width: 38%; /* 모달 폭 지정 */ 
        }
        
        .modal-footer {
       	 border-top: none;
        }
        /* The Close Button */
        .close {
            color: #aaa;
            float: right; 
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

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
			<p class="font-weight-light h6" style="line-height: 200%;">본 사이트는 개인정보보호법 계정에 따라 회원가입에 
				필요한 다음의 최소 항목만 수집합니다.</p>
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
								id="username" name="username" placeholder="한글 성명을 입력하시오." onkeyup="han(this)" required>
							</td>
						</tr>
						<tr>
							<th scope="row" class="cols align-middle">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td class="cols2 align-middle">
								<strong>이메일 주소(로그인 아이디)</strong>
							</td>
							<td class=form-inline>
								<input type="email" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="userid" name="userid" placeholder="이메일을 입력하시오." required>
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
								id="phone" name="phone" placeholder="전화번호를입력하시오." 
								pattern="\d{2,4}-\d{3,4}-\d{4}" title="'0~9', '-'를 포함하여  전화번호 형식에 맞게 입력하십시오." required>
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
								id="pwd" name="pwd" placeholder="패스워드" 
								pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,16}"
								title="비밀번호는 8~16자의 영문 대/소문자, 숫자, 특수문자(!@#$%^&*)를 혼합해서 사용하셔야합니다." required>
								<ul>
								<li class="mt-3" style="color:#008CBA; line-height: 200%;">비밀번호는 8~16자의 영문 대/소문자, 숫자,
									 특수문자(!@#$%^&*)를 혼합해서 사용하셔야합니다.</li>
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
							<td class="align-middle form-inline">
								<input type="password" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="pwConfirm" name="pwConfirm" placeholder="패스워드 확인" required>
								<span id="pwdFail" style="color:red;"><strong>비밀번호가 일치하지 않습니다.</strong></span>
								<span id="pwdSuccess" style="color:blue;"><strong>비밀번호 일치</strong></span>
							</td>
						</tr>
					</tbody>
				</table>
				
				<div class="col-12 mt-5 mb-5 text-center">
					<button type="submit" id="submit" class="btn btn-primary btn-sm mr-3"
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

  <!-- The Modal -->
    <div id="myModal" class="modal">
 
	      <!-- Modal content -->
	      <div class="modal-content">
	      	
	      	<div class="row">
				<div class="col-6">
				<span class="font-weight-bold h2 d-flex justify-content-start mt-3">WIN-WIN</span>
				</div>
				<div class="col-6">
				<span class="d-flex justify-content-end mt-1"><span class="close">&times;</span></span>
				</div>
			</div>
	     	<div class="mb-3" style="height:4px; background-color: #376092" ></div>
	     	
	     	<!-- 모달 내용 입력하는 부분 -->
	     	<div>
	     	<div class="mt-4">
	        <p class="font-weight-bold text-center">모달 내용입력</p> 
	<!--         <select id="license" class="js-example-basic-single" > -->
	<!-- 		</select> -->
			</div>
			
			<div class="modal-footer d-flex justify-content-center">
				<div class="row">
				<button type="button" id="btnOk" class="font-weight-bold btn btn-primary mr-2 " style="background-color: #376092">확인</button>
				<button type="button" id="btnClose" class="font-weight-bold btn btn-secondary">닫기</button>
				</div>
			</div>
	      </div>
	 
	    </div>
    </div>

<%@ include file="../include/scriptLoader.jsp"%>

<script>

$(function(){
    $("#pwdSuccess").hide();
    $("#pwdFail").hide();
    $("#pwConfirm").keyup(function(){
        var pwd1=$("#pwd").val();
        var pwd2=$("#pwConfirm").val();
        if(pwd2 == "") {
        	$("#pwdSuccess").hide();
            $("#pwdFail").hide();
        } else if(pwd1 != "" || pwd2 != ""){
            if(pwd1 == pwd2){
                $("#pwdSuccess").show();
                $("#pwdFail").hide();
                $("#submit").removeAttr("disabled");
            }else{
                $("#pwdSuccess").hide();
                $("#pwdFail").show();
                $("#submit").attr("disabled", "disabled");
            }    
        }
    });
});

$(document).ready(function() {
	
	$("#btnLogin").click(function() {
		location.href="/user/login";
	});
	
	$("#btnOk").click(function() {
		location.href="/user/login";
	});
	
	
	// Get the modal
	var modal = document.getElementById('myModal');
	
	// Get the button that opens the modal
	var btn = document.getElementById("idConfirm");
	
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];     
	
	var btnClose = document.getElementById("btnClose");
	
	// When the user clicks on the button, open the modal 
	btn.onclick = function() {
	    modal.style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	    modal.style.display = "none";
	}
	
	btnClose.onclick = function() {
	    modal.style.display = "none";
	}
	
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
	
});

function han(obj) {
	var pattern = /[^(ㄱ-힣)]/; //한글만 허용 할때
	if (pattern.test(obj.value)) {
		alert("한글성명은 한글만 허용합니다.");
		obj.value = '';
		obj.focus();
		return false;
	}
}


</script>

<%@ include file="../include/footer.jsp"%>