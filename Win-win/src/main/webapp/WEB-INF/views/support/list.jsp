<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>
<style>
#test tr td {
	padding: 0px;
}

.box {
	border: 1px solid #5bc0de;
/* 	background-color: ; */
	line-height: 40px;
	float: left;
	margin-left: 15px;
	margin-top: 10px;
}
</style>

<%@ include file="../include/adminHeader.jsp"%>
<div class="container">
	<div class="container">
		<div class="row">
			<div class="col-12 mt-5">
				<p class="font-weight-bold h3">입사지원 현황</p>
				<hr style="border: solid #376092;">
			</div>
		</div>
		<div class="row">
			<div class="col-12 mt-5">

				<table class="table table-bordered">
					<thead style="background-color: #eee;">
						<tr>
							<th class="text-center">경력</th>
							<th class="text-center">고용형태</th>
							<th class="text-center">학력</th>
							<th class="text-center">학점</th>
							<th class="text-center">어학</th>
							<th class="text-center">점수</th>
							<th class="text-center">처리상태</th>

						</tr>
					</thead>

					<tbody id="test">
						<tr>
							<td class="text-center" style="width: 12%"><select multiple
								class="form-control" id="career" form="search" name="career">
									<option value="신입">신입</option>
									<option value="1~3년">1~3년</option>
									<option value="4~6년">4~6년</option>
									<option value="7~9년">7~9년</option>
									<option value="10~15년">10년~15년</option>
							</select></td>
							<td class="text-center" style="width: 16%"><select multiple
								class="form-control" id="employment" form="search" name="employment">
									<option value="정규직">정규직</option>
									<option value="계약직">계약직</option>
									<option value="인턴">인턴</option>
									<option value="파견직">파견직</option>
									<option value="프리랜서">프리랜서</option>
							</select></td>
							<td class="text-center" style="width: 25%"><select multiple
								class="form-control" id="academiccareer" form="search" name="academiccareer">
									<option value="대학교졸업(4년)">대학교졸업(4년)</option>
									<option value="대학교졸업(2~3년)">대학교졸업(2~3년)</option>
									<option value="대학원 석사졸업">대학원 석사졸업</option>
									<option value="대학원 박사졸업">대학원 박사졸업</option>
									<option value="고등학교 졸업">고등학교 졸업</option>
									<option value="학력 무관">학력 무관</option>
							</select></td>
							<td class="text-center" style="width: 10%"><select multiple
								class="form-control" id="credit" form="search" name="credit">
									<option value="2.0 이상">2.0 이상</option>
									<option value="2.5 이상">2.5 이상</option>
									<option value="3.0 이상">3.0 이상</option>
									<option value="3.5 이상">3.5 이상</option>
									<option value="4.0 이상">4.0 이상</option>
							</select></td>
							<td class="text-center" style="width: 15%"><select multiple
								class="form-control" id="language" form="search" name="language">
									<option value="TOEIC">TOEIC</option>
									<option value="TOEFL">TOEFL</option>
									<option value="TEPS">TEPS</option>
									<option value="TOEIC Speaking">TOEIC Speaking</option>
									<option value="OPIC">OPIC</option>
							</select></td>
							<td style="width: 12%"><select multiple class="form-control"
								id="score" form="search" name="score">
									<option value="500~550">500~550</option>
									<option value="550~600">550~600</option>
									<option value="600~650">600~650</option>
									<option value="650~700">650~700</option>
									<option value="750~800">750~800</option>
									<option value="800~850">800~850</option>
									<option value="850~900">850~900</option>
									<option value="900 이상">900 이상</option>
							</select></td>
							<td class="text-center" style="width: 10%"><select multiple
								class="form-control" id="status" form="search" name="status">
									<option value="처리 전">처리 전</option>
									<option value="처리 후">처리 후</option>
							</select></td>
						</tr>
						<tr>
							<th class="text-center" colspan="1"
								style="background-color: #eee; padding: 0px; line-height: 2.5;">
								공고명</th>
							<td colspan="6"><select class="custom-select"
								style="width: 457px;" id="title" name="title" form="search">
									<option value="0" style="width: 457px">공고명을 선택해 주십시오!</option>
									<option style="width: 457px;">아파트</option>
									<option style="width: 457px;">빌라</option>
									<option style="width: 457px;">주택</option>
									<option style="width: 457px;">원룸</option>
							</select></td>
						</tr>
						<tr>
							<td colspan="7" style="height: 90px">
							<div class="row">
							<div class="col-10">
							<div class="box text-center" id=careerbox style="width:8em;"></div>
							<div class="box text-center" id=employmentbox style="width:7em;"></div>
							<div class="box text-center" id=academiccareerbox style="width:11em;"></div>
							<div class="box text-center" id=creditbox style="width:6em;"></div>
							<div class="box text-center" id=languagebox style="width:10em;"></div>
							<div class="box text-center" id=scorebox style="width:7em;"></div>
							<div class="box text-center" id=statusbox style="width:6em;"></div> 
							</div>
							<div class="col-2 mt-2">
								<button class="btn float-right btn-sm btn-primary fas fa-redo	"
									style="margin-right: 15px" id="clear">&nbsp; 초기화</button>
									</div>
									</div>
									<div class="row">
									<div class="col-12 d-flex justify-content-end mt-1">
									<form action="/support/list" method="post" id="search">
									<button class="btn float-right btn-primary"
										style="margin-right: 15px;">선택된 조건 검색하기</button></form>
										</div>
										</div>
										
							</td>
						</tr>
					</tbody>
				</table>

			</div>
		</div>


		<div class="row">
			<div class="col-12 mt-5">
				<table class="table table-hover">
					<thead style="background-color: #eee;">
						<tr>
							<th class="text-center">번호</th>
							<th class="text-center">공 고 명</th>
							<th class="text-center">지원 일자</th>
							<th class="text-center">지원자</th>
							<th class="text-center">포트폴리오</th>
							<th class="text-center">처리 상태</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list }" var="SupportBoard">
							<tr>
								<th scope="row" class="text-center align-middle">${SupportBoard.passNo }</th>
								<td class="text-center align-middle">${SupportBoard.title }</td>
								<td class="text-center align-middle"><fmt:formatDate
										value="${SupportBoard.applyDate}" pattern="yy.MM.dd" /></td>
								<td class="text-center align-middle">${SupportBoard.userId }</td>
								<td class="text-center"><button type="button"
										class="btn btn-primary btn-sm" data-toggle="modal"
										data-target="#exampleModal">포트폴리오</button></td>
								<td class="text-center"><button type="button"
										class="btn btn-secondary btn-sm">${SupportBoard.status }</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<%@ include file="../util/supportpaging.jsp"%>

	</div>
</div>



<%@ include file="../include/scriptLoader.jsp"%>

<script>
$("#career option:selected").val();

	$(function() {
		$("#careerbox").hide();
		$("#career").click(function() {

			var career = $("#career option:selected").val();

			$.ajax({
				type : 'POST',
				url : "/support/search",
				dataType : "json",
				data : {
					career : career
				},

				success : function(data) {
					if (data.success == true) {
						$("#careerbox").html(data.career+"<i class='fas fa-backspace ml-2' id='careerclose' style='cursor: pointer'></i>")
						$("#careerbox").show();
					}
				}
			});
			$("#careerbox").on("click", "#careerclose", function(){
				$("#careerbox").html("");
				$("#careerbox").hide();
			});
		});

		$("#employmentbox").hide();
		$("#employment").click(function() {

			var employment = $("#employment option:selected").val();

			$.ajax({
				type : 'POST',
				url : "/support/search",
				dataType : "json",
				data : {
					employment : employment
				},

				success : function(data) {
					if (data.success == true) {
						$("#employmentbox").html(data.employment+"<i class='fas fa-backspace ml-2' id='employmentclose' style='cursor: pointer'></i>")
						$("#employmentbox").show();
					}
				}
			});
			$("#employmentbox").on("click", "#employmentclose", function(){
				$("employmentbox").html("");
				$("#employmentbox").hide();
			});
		});

		$("#academiccareerbox").hide();
		$("#academiccareer").click(function() {

			var academiccareer = $("#academiccareer option:selected").val();

			$.ajax({
				type : 'POST',
				url : "/support/search",
				dataType : "json",
				data : {
					academiccareer : academiccareer
				},

				success : function(data) {
					if (data.success == true) {
						$("#academiccareerbox").html(data.academiccareer+"<i class='fas fa-backspace ml-2' id='academiccareerclose' style='cursor: pointer'></i>")
						$("#academiccareerbox").show();
					}
				}
			});
			$("#academiccareerbox").on("click", "#academiccareerclose", function(){
				$("academiccareerbox").html("");
				$("#academiccareerbox").hide();
			});
		});

		$("#creditbox").hide();
		$("#credit").click(function() {

			var credit = $("#credit option:selected").val();

			$.ajax({
				type : 'POST',
				url : "/support/search",
				dataType : "json",
				data : {
					credit : credit
				},

				success : function(data) {
					if (data.success == true) {
						$("#creditbox").html(data.credit+"<i class='fas fa-backspace ml-2' id='creditclose' style='cursor: pointer'></i>")
						$("#creditbox").show();
					}
					
					
				}
			});
			$("#creditbox").on("click", "#creditclose", function(){
				$("creditbox").html("");
				$("#creditbox").hide();
			});
		});

		$("#languagebox").hide();
		$("#language").click(function() {

			var language = $("#language option:selected").val();

			$.ajax({
				type : 'POST',
				url : "/support/search",
				dataType : "json",
				data : {
					language : language
				},

				success : function(data) {
					if (data.success == true) {
						$("#languagebox").html(data.language+"<i class='fas fa-backspace ml-2 ' id='languageclose' style='cursor: pointer'></i>")
						$("#languagebox").show();
					}
				}
			});
			$("#languagebox").on("click", "#languageclose", function(){
				$("languagebox").html("");
				$("#languagebox").hide();
			});
		});

		$("#scorebox").hide();
		$("#score").click(function() {

			var score = $("#score option:selected").val();

			$.ajax({
				type : 'POST',
				url : "/support/search",
				dataType : "json",
				data : {
					score : score
				},

				success : function(data) {
					if (data.success == true) {
						$("#scorebox").html(data.score+"<i class='fas fa-backspace ml-2' id='scoreclose' style='cursor: pointer'></i>")
						$("#scorebox").show();
					}
				}
			});
			$("#scorebox").on("click", "#scoreclose", function(){
				$("scorebox").html("");
				$("#scorebox").hide();
			});
		});

		$("#statusbox").hide();
		$("#status").click(function() {

			var status = $("#status option:selected").val();

			$.ajax({
				type : 'POST',
				url : "/support/search",
				dataType : "json",
				data : {
					status : status
				},

				success : function(data) {
					if (data.success == true) {
						$("#statusbox").html(data.status+"<i class='fas fa-backspace ml-2' id='statusclose' style='cursor: pointer'></i>")
						$("#statusbox").show();
					}
				}
			});
			$("#statusbox").on("click", "#statusclose", function(){
				$("#statusbox").html("");
				$("#statusbox").hide();
			});
		});
		$("#clear").click(function() {

			var clear = $("#clear").val();

			$.ajax({
				type : 'POST',
				url : "/support/search",
				dataType : "json",
				data : {
					clear : clear
				},

				success : function(data) {
					if (data.success == true) {
						$(".box").hide();
					}
				}
			});
		});

	});
</script>

<%@ include file="../include/footer.jsp"%>