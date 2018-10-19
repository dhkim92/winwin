<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/CSSLoader.jsp"%>

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
<div class="container">
	<div class="row">    
    
    	<div class="col-12 mt-5 mb-4">
			<p class="font-weight-bold h3">비밀번호 변경</p>
			<hr style="border: solid #376092;">
		</div>
		
		<div class="col-12 mt-5">
			<p class="d-flex justify-content-end">
			<i class="fas fa-check" style="color: red;"></i> 
			<strong>표시 항목은 필수 입력 항목입니다.</strong></p>
		</div>
		
		<div class="col-12 mt-1 mb-4">
			<form action="/user/pwchange" method="post">
				<table class="table table-sm border border-right-0 border-left-0">
					<tbody>
						<tr>
							<th scope="row" class="cols align-middle">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td class="cols2 align-middle">
								<strong>임시비밀번호</strong>
							</td>
							<td>
								<input type="password" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="password" name="password" placeholder="임시 패스워드">
							</td>
						</tr>
						<tr>
							<th scope="row" class="cols align-middle">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td class="cols2 align-middle">
								<strong>변경할 비밀번호</strong>
							</td>
							<td><input type="password" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="pw" name="pww" placeholder="변경할 패스워드">
							</td>
						</tr>
						<tr>
							<th scope="row" class="cols align-middle">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td class="cols2 align-middle">
								<strong>변경할 비밀번호(확인)</strong><i class="fas fa-exclamation-circle ml-2" style="color: red;"></i>
							</td>
							<td><input type="password" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="pw" name="pww" placeholder="변경할 패스워드 확인">
							</td>
						</tr>
					</tbody>
				</table>
				
				<div class="col-12 mt-5 text-center">
					<button type="submit" class="btn btn-primary btn-sm mr-3" 
						style="width: 90px;">변경하기</button>
					<button type="button" id="btnLogin" class="btn btn-primary btn-sm ml-2"
						style="width: 90px;">로그인 이동</button>
				</div>
				
			</form>
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