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

<div class="container">
	<div class="mt-4">	
		<p class="font-weight-bold h1"><a href="/main/adminmain" style="color:black; text-decoration: none">WIN-WIN</a></p>
		
		<ul class="nav justify-content-end mb-2" >	
		  <li class="nav-item">
		    <div class="font-weight-bold ml-3" style="cursor: pointer"><a href="/support/list" style="text-decoration: none; color: black;">지원현황</a></div>
		  </li>
		  <li class="nav-item">
		    <div class="font-weight-bold ml-3" style="cursor: pointer"><a href="/admin/chart" style="text-decoration: none; color: black;">통계관리</a></div>
		  </li>
		  <li class="nav-item">
		    <div class="font-weight-bold ml-3" style="cursor: pointer"><a href="/result/list" style="text-decoration: none; color: black;">지원결과관리</a></div>
		  </li>
		  <li class="nav-item">
		    <div class="font-weight-bold ml-3" style="cursor: pointer"><a href="/notice/list" style="text-decoration: none; color: black;">공지사항관리</a></div>
		  </li>
		  <li class="nav-item">
		    <div class="font-weight-bold ml-3" style="cursor: pointer"><a href="#" style="text-decoration: none; color: black;">채용공고관리</a></div>
		  </li>
		  <li class="nav-item">
		    <div class="font-weight-bold ml-3" style="cursor: pointer"><a href="/qna/list" style="text-decoration: none; color: black;">문의사항관리</a></div>
		  </li>
		</ul>
		
		<div style="height:5px; background-color: #376092" ></div>
	</div>
</div>

<div class="container">
<div class="container">
	<div class="row">

		<div class="col-12 mt-5">
			<p class="font-weight-bold h3">임직원 로그인</p>
			<hr style="border: solid #376092;">
		</div>
		
		<div class="col-12 mt-2">
			<form action="/admin/adminLogin" method="post">
				<table class="table table-sm col-md-12 border border-right-0 border-left-0">
					<tbody>
						<tr>
							<th scope="row" class="cols align-middle">
								<i class="fas fa-check" style="color: red;"></i>
							</th>
							<td class="cols2 align-middle">
								<strong>아이디(사번)</strong>
							</td>
							<td>
								<input type="text" style="width: 300px;" class="form-control form-control-sm mr-sm-2"
								id="adminCode" name="adminCode" placeholder="사번을 입력하시오.">
							</td>
						</tr>
					</tbody>
				</table>
				<div class="col-12 mt-2 text-center">
					<button type="submit" class="btn btn-primary btn-sm">로그인</button>
				</div>
			</form>
		</div>

	</div>
</div>
</div>

<%@ include file="../include/scriptLoader.jsp"%>

<script>

</script>

<%@ include file="../include/footer.jsp"%>