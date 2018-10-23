<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp" %>

<style>
.box{
	float: left;
	width: 190px;
	height: 100px;
	display :inline-block;
    line-height: 6.4em;
}

.boxm{
	float:left;
	width:160px;
	height:100px;
	display:inline-block;
	line-height:6.4em;
}

.noticeBox{
	width:800px;
	height:200px;
 	display : inline-block;
	border : 1px solid blue;
	text-align : center;
	line-height: 200px;
	font-family: inherit;
	color: blue;
}

.size{
	display:inline-block;
	margin:1em;
	border:1px solid black;
}

.enter{
	white-space:pre;
}

.red {
	background-color: red;
}
.triangle-right-primary {
	float: left;	
      width: 0;
      height: 0;
      border-top: 50px solid transparent;
      border-left: 50px solid #376092;
      border-bottom: 50px solid transparent;
}
.triangle-right-white {
	float: left;
      width: 0;
      height: 0;
      border-top: 50px solid red;
      border-left: 100px solid transparent;
      border-bottom: 50px solid red;
}

.line {
	float : left;
	border-top : 1px solid #376092;
	border-right: 1px solid #376092;
	width:4.7em;
	height:4.75em;
	transform: scale(1) rotate(45deg) translateX(10px) translateY(10px);
}
    

</style>

<%@ include file="../include/adminHeader.jsp"%>

<div class="container">
	<div class="row m-3 justify-content-center">
		<div style="width: 680px; height: 101px; border:1px solid #376092;">
			<div class="box text-light text-center" style="background-color: #376092"><strong>기본정보</strong></div>
			<div class="triangle-right-primary"></div>
			<div class="boxm text-primary text-center pl-5"><strong>세부정보</strong></div>
			<div class="line"></div>
			<div class="box text-primary text-center"><strong>등록하기</strong></div>
		</div>		
	</div>
	<div class="row clearfix m-2">
		<div class="col-10"></div>
		<div class="col-2">
			<i class="fas fa-key"></i><small>&nbsp;사원 코드 : 123456789</small><br>
			<i class="far fa-id-card"></i><small>&nbsp;사원 이름 : 김동현</small>
		</div>
	</div>
</div>








<%@ include file="../include/scriptLoader.jsp"%>

<script>

</script>

<%@ include file="../include/footer.jsp"%>