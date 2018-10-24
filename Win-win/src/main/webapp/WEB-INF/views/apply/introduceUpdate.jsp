<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>
<style>
</style>

<script type="text/javascript">
$(document).ready(function() {
	   
	   var tid;
	   var cnt = 1800;
	   
	   counter_init();
	   
	   function counter_init() {
	      tid = setInterval(function counter_run() {
	         document.all.counter.innerText = time_format(cnt);
	         cnt--;
//	          console.log(cnt);
	         
	         if(cnt < 0) {
	            clearInterval(tid);
//	             self.location = "logout.php";
	         }
	      }, 1000);
	   }
	   
	   $("#timer").click(function() {
	      clearInterval(tid);
	      cnt = parseInt(1800);
	      counter_init();
	   });
	   
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
	   
	});
	
</script>
<%@ include file="../include/header.jsp"%>


<div class="container">
	<h3 class="mt-5 font-weight-bold">입사지원 등록</h3>
	<img class="img-fluid d-block" src="/resources/image/grayline.png">

	 <div class="col-md-12 border border-secondary mt-3 p-0">
   		<table class="table col-md-12 mb-0">
     		<thead>
       			<tr>
       				<th>공고명</th>
       			</tr>
     		</thead>
     		<tbody>
       			<tr style="line-height: 0.8em;">
         			<th class="text-center align-middle bg-secondary">접수상태</th>
            		<td class="text-center align-middle">지원서 저장 전 입니다</td>
         			<th class="text-center align-middle bg-secondary">원서 마감 일시</th>
            		<td class="text-center align-middle">2018-12-31 23:59</td>
            		<td class="text-danger text-center align-middle">(D-98일 전)</td>
         			<th class="text-center align-middle bg-secondary">자동 로그아웃</th>
            		<td class="text-danger text-center align-middle"><span id="counter"></span></td>
            		<td><button id="timer">연장</button></td>
      			</tr>    
     		</tbody>
   		</table>
   	</div>

	<h4 class="mt-4 mb-3 font-weight-bold">자기소개</h4><input type="hidden" value="jopopenNo" />
	<div class="row">
		<a href="/apply/userDetailUpdate"><img class="img-fluid d-block ml-3" src="/resources/image/G_userDetail.png"></a>
		<a href="/apply/academicUpdate"><img class="img-fluid d-block" src="/resources/image/G_academic.png"></a>
		<a href="/apply/militaryUpdate"><img class="img-fluid d-block" src="/resources/image/G_military.png"></a>
		<a href="/apply/careerUpdate"><img class="img-fluid d-block" src="/resources/image/G_career.png"></a>
		<img class="img-fluid d-block" src="/resources/image/B_introduce.png">
		<img class="img-fluid d-block" src="/resources/image/G_complete.png">
	</div>

	<form>
	<h6 class="mt-5 font-weight-bold">
		1. 성장과정 (자신에 대한 소개)
		<span style="color:red;"> *</span>
		<span id="count1" style="float:right;">###</span>
	</h6>
	<hr>
	<textarea id="content1" name="content1" maxlength="500" style="width: 100%;resize: none; height:250px;"></textarea>

   <h6 class="mt-5 font-weight-bold">
		2. 지원동기 및 포부
		<span style="color:red;"> *</span>
		<span id="count2" style="float:right;">###</span>
	</h6>
	<hr>
	<textarea id="content2" name="content2" maxlength="500" style="width: 100%;resize: none; height:250px;"></textarea>
	
	<h6 class="mt-5 font-weight-bold">
		3. 성격의 장단점
		<span style="color:red;"> *</span>
		<span id="count3" style="float:right;">###</span>
	</h6>
	<hr>
	<textarea id="content3" name="content3" maxlength="500" style="width: 100%;resize: none; height:250px;"></textarea>
	
	<h6 class="mt-5 font-weight-bold">
		4. 살아오면서 중요했던 일
		<span style="color:red;"> *</span>
		<span id="count4" style="float:right;">###</span>
	</h6>
	<hr>
	<textarea id="content4" name="content4" maxlength="500" style="width: 100%;resize: none; height:250px;"></textarea>
	
	<h6 class="mt-5 font-weight-bold">
		5. 보유기술 및 경험직무 (구체적으로 기술)
		<span style="color:red;"> *</span>
		<span id="count5" style="float:right;">###</span>
	</h6>
	<hr>
	<textarea id="content5" name="content5" maxlength="500" style="width: 100%;resize: none; height:250px;"></textarea>
   </form>
   
      <div class="col-12 mt-5 p-0">
         <table class="table border">
            <tbody>
               <tr>
                  <th class="text-center table-light align-middle">
                     <i class="fas fa-exclamation-triangle fa-3x"></i>
                  </th>
                  <td class="table-light align-middle"> 
                  <ul class="mb-0">
                     <li style="line-height: 150%;"><strong>자기소개란 작성시<span class="text-info">잦은 줄바꿈(Enter Key)은 출력시 하단의 내용이 안보이는 현상</span>이 발생할 수 있으므로 한번에 2칸이상 줄바꿈을 자제하시기 바랍니다.</strong></li>
                     <li style="line-height: 150%;"><strong>자기소개란 내용은<span class="text-info">서류전형 및 변접시 평가에 영향을 미칠 수 </span>있으므로, 성실하고 자세하게 작성 바랍니다.</strong></li>
                     <strong>(최소 3 ~ 5줄 작성 요망)</strong>
                  </ul>
                  </td>
               </tr>
            </tbody>
         </table>
   </div>
   
   <div class="col-12 mt-5 p-0 d-flex justify-content-end">
      <button class="btn btn-primary text-white">저장완료</button>
   </div>
   
</div>

<%@ include file="../include/scriptLoader.jsp"%>

<script type="text/javascript">
$(function() {
    $('#content1').keyup(function (e){
        var content = $(this).val();
        $('#count1').html(content.length + '/500');
    });
    $('#content1').keyup();
});
$(function() {
    $('#content2').keyup(function (e){
        var content = $(this).val();
        $('#count2').html(content.length + '/500');
    });
    $('#content2').keyup();
});
$(function() {
    $('#content3').keyup(function (e){
        var content = $(this).val();
        $('#count3').html(content.length + '/500');
    });
    $('#content3').keyup();
});
$(function() {
    $('#content4').keyup(function (e){
        var content = $(this).val();
        $('#count4').html(content.length + '/500');
    });
    $('#content4').keyup();
});
$(function() {
    $('#content5').keyup(function (e){
        var content = $(this).val();
        $('#count5').html(content.length + '/500');
    });
    $('#content5').keyup();
});
</script>

<%@ include file="../include/footer.jsp"%>