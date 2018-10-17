<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>

<style>
      .cols {
      width:5%;
      text-align:center;
    }
    .cols2 {
      width:15%;
    }
</style>

<%@ include file="../include/header.jsp"%>

<div class="container">
<div class="row">

<div class="col-12 mt-5">
<h1>로그인</h1>
<hr style="border: solid #376092;">
</div>

<div class="col-12 mt-4">
<p class="h3" style="line-height:200%;">로그인 정보가 필요합니다.</p>
<p class="font-weight-light h5" style="line-height:200%;">회원 가입시 이메일 주소와 비밀번호를 입력해 주시기 바랍니다.</p>
<p class="font-weight-light h5" style="line-height:200%;">회원정보가 없으신 분들은 [회원가입]을 눌러 회원가입을 먼저 해주시기 바랍니다.</p>
</div>

<div class="col-12 mt-4 text-right">
<i class="fas fa-check" style="color:red;"></i> 표시 항목은 필수 입력 항목입니다.
</div>

<div class="col-12 mt-2">
<table class="table table-sm">
  <tbody>
    <tr>
      <th scope="row" class="cols align-middle"> <i class="fas fa-check" style="color:red;"></i> </th>
      <td class="cols2 align-middle">이메일 주소</td>
      <td><input type="text" style="width:300px;" class="form-control form-control-sm mr-sm-2" id="formGroupExampleInput" placeholder="이메일을 입력하시오."></td>
    </tr>
    <tr>
      <th scope="row" class="cols align-middle"><i class="fas fa-check" style="color:red;"></i></th>
      <td class="cols2 align-middle">비밀번호</td>
      <td><input type="password" style="width:300px;" class="form-control form-control-sm mr-sm-2" id="formGroupExampleInput" placeholder="패스워드"></td>
    </tr>
      <tr>
      <th scope="row" class="text-right"><input class="form-check-input" type="checkbox" id="userid"></th>
      <td>아이디저장하기</td>
      <td></td>
     </tr>
  </tbody>
</table>
</div>

<div class="col-12 mt-2 text-center">
<button type="button" class="btn btn-primary btn-sm mx-4">로그인</button>
<button type="button" class="btn btn-primary btn-sm">회원가입</button>
</div>


</div>
</div>

	
<%@ include file="../include/scriptLoader.jsp"%>

<script>



</script>

<%@ include file="../include/footer.jsp"%>