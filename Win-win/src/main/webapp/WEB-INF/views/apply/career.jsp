<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>
<style>
</style>
<%@ include file="../include/header.jsp"%>


<div class="container">
	<h3 class="mt-3">입사지원 등록</h3>
	<img class="img-fluid d-block" src="/resources/image/grayline.png">

	<div class="col-md-12 border border-secondary mt-3">
		<table class="table col-md-12 mb-0">
			<thead>
				<tr>
					<th>공고명</th>
				</tr>
			</thead>
			<tbody>
				<tr style="line-height: 0.8em;">
					<th
						class="text-center align-middle border border-secondary bg-secondary">접수상태</th>
					<td class="text-center align-middle">지원서 저장 전 입니다</td>
					<th
						class="text-center align-middle border border-secondary bg-secondary">원서
						마감 일시</th>
					<td class="text-center align-middle">2018-12-31 23:59</td>
					<td class="text-danger text-center align-middle">(D-98일 전)</td>
					<th
						class="text-center align-middle border border-secondary bg-secondary">자동
						로그아웃</th>
					<td class="text-danger text-center align-middle">0:30:00</td>
					<td><button>연장</button></td>
				</tr>
			</tbody>
		</table>
	</div>

	<h4 class="mt-4 mb-3">경력사항</h4>
	<div class="row">
		<a href="/apply/userDetailUpdate"><img class="img-fluid d-block ml-3" src="/resources/image/G_userDetail.png"></a>
		<a href="/apply/academicUpdate"><img class="img-fluid d-block" src="/resources/image/G_academic.png"></a>
		<a href="/apply/militaryUpdate"><img class="img-fluid d-block" src="/resources/image/G_military.png"></a>
		<img class="img-fluid d-block" src="/resources/image/B_career.png">
		<img class="img-fluid d-block" src="/resources/image/G_introduce.png">
		<img class="img-fluid d-block" src="/resources/image/G_complete.png">
	</div>

	<h5 class="mt-4">어학정보</h5>
	<div class="col-md-12 border border-secondary mt-3">
		<table class="table col-md-12 mb-0">
			<thead>
				<tr>
					<th>공고명</th>
				</tr>
			</thead>
			<tbody>
				<tr style="line-height: 0.8em;">
					<th class="text-center align-middle border border-secondary bg-secondary">접수상태</th>
					<td class="text-center align-middle">지원서 저장 전 입니다</td>
					<th class="text-center align-middle border border-secondary bg-secondary">원서 마감 일시</th>
					<td class="text-center align-middle">2018-12-31 23:59</td>
					<td class="text-danger text-center align-middle">(D-98일 전)</td>
					<th class="text-center align-middle border border-secondary bg-secondary">자동 로그아웃</th>
					<td class="text-danger text-center align-middle">0:30:00</td>
					<td><button>연장</button></td>
				</tr>
			</tbody>
		</table>
	</div>

</div>
</body>
</html>