<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/CSSLoader.jsp"%>

<style>
.box{
	float: left;
	width: 300px;
	height: 134px;
	display :inline-block;
	
}
.red {
	background-color: red;
}
.triangle-right-red {
	float: left;	
      width: 0;
      height: 0;
      border-top: 67px solid transparent;
      border-left: 67px solid red;
      border-bottom: 67px solid transparent;
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
	border-top : 1px solid gray;
	border-right: 1px solid gray;
	width:100px;
	height:100px;
	-moz-transform: scale(1) rotate(46deg) translateX(10px) translateY(10px);
	-webkit-transform: scale(1) rotate(46deg) translateX(10px) translateY(10px);
	-o-transform: scale(1) rotate(46deg) translateX(10px) translateY(10px);
	-ms-transform: scale(1) rotate(46deg) translateX(10px) translateY(10px);
	transform: scale(1) rotate(46deg) translateX(10px) translateY(10px);
}
    
</style>

<%@ include file="include/header.jsp"%>


<div class="container">
	<div class="border clearfix m-5">
		<div  class="box red"></div>
		<div class="triangle-right-red"></div>
		<div class="box"></div>
		<div class="line"></div>
		
	</div>
	
</div>



<%@ include file="include/scriptLoader.jsp"%>

<script>



</script>

<%@ include file="include/footer.jsp"%>