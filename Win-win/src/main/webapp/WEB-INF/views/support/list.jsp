<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>
<style>
#test tr td {
	padding: 0px;
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
								class="form-control" id="career">
									<option>신입</option>
									<option>1~3년</option>
									<option>4~6년</option>
									<option>7~9년</option>
									<option>10년~15년</option>
							</select></td>
							<td class="text-center" style="width: 16%"><select multiple
								class="form-control" id="employment">
									<option>정규직</option>
									<option>계약직</option>
									<option>인턴</option>
									<option>파견직</option>
									<option>프리랜서</option>
							</select></td>
							<td class="text-center" style="width: 25%"><select multiple
								class="form-control" id="academiccareer">
									<option>대학교졸업(4년)</option>
									<option>대학교졸업(2~3년)</option>
									<option>대학원 석사졸업</option>
									<option>대학원 박사졸업</option>
									<option>고등학교 졸업</option>
									<option>학력 무관</option>
							</select></td>
							<td class="text-center" style="width: 10%"><select multiple
								class="form-control" id="credit">
									<option>2.0 이상</option>
									<option>2.5 이상</option>
									<option>3.0 이상</option>
									<option>3.5 이상</option>
									<option>4.0 이상</option>
							</select></td>
							<td class="text-center" style="width: 15%"><select multiple
								class="form-control" id="language">
									<option>TOEIC</option>
									<option>TOEFL</option>
									<option>TEPS</option>
									<option>TOEIC Speaking</option>
									<option>OPIC</option>
							</select></td>
							<td style="width: 12%"><select multiple class="form-control"
								id="score">
									<option>500~550</option>
									<option>550~600</option>
									<option>600~650</option>
									<option>650~700</option>
									<option>750~800</option>
									<option>800~850</option>
									<option>850~900</option>
									<option>900 이상</option>
							</select></td>
							<td class="text-center" style="width: 10%"><select multiple
								class="form-control" id="status">
									<option>처리 전</option>
									<option>처리 후</option>
							</select></td>
						</tr>
						<tr>
							<th class="text-center" colspan="1"
								style="background-color: #eee; padding: 0px; line-height: 2.5;">
								공고명</th>
							<td colspan="6"><select class="custom-select"
								style="width: 457px;" id="living" name="living">
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
							<span id="career1"></span> <span id="employment1"></span> <span
								id="academiccareer1"></span> <span id="credit1"></span> <span
								id="language1"></span> <span id="score1"></span> <span
								id="status1"></span>
							</div>
							<div class="col-2 mt-2">
								<button class="btn float-right btn-sm btn-primary	"
									style="margin-right: 15px">초기화</button>
									</div>
									</div>
									<div class="row">
									<div class="col-12 d-flex justify-content-end mt-2">
									<button class="btn float-right btn-primary"
										style="margin-right: 15px; magrin-top: 35px;">선택된 조건 검색하기</button>
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

// var start_temp = "<button>sdf"
// var end_temp = "sdf</button>"

	$(function() {
		$("#career1").hide();
		$("#career").click(function() {

			var career = $("#career option:selected").val();

			$.ajax({
				type : 'POST',
				url : "/support/list",
				dataType : "json",
				data : {
					career : career
				},

				success : function(data) {
					if (data.success == true) {
						$("#career1").html(data.career)
						$("#career1").show();
					}
				}
			});
		});

		$("#employment1").hide();
		$("#employment").click(function() {

			var employment = $("#employment option:selected").val();

			$.ajax({
				type : 'POST',
				url : "/support/list",
				dataType : "json",
				data : {
					employment : employment
				},

				success : function(data) {
					if (data.success == true) {
						$("#employment1").html(data.employment)
						$("#employment1").show();
					}
				}
			});
		});

		$("#academiccareer1").hide();
		$("#academiccareer").click(function() {

			var academiccareer = $("#academiccareer option:selected").val();

			$.ajax({
				type : 'POST',
				url : "/support/list",
				dataType : "json",
				data : {
					academiccareer : academiccareer
				},

				success : function(data) {
					if (data.success == true) {
						$("#academiccareer1").html(data.academiccareer)
						$("#academiccareer1").show();
					}
				}
			});
		});

		$("#credit1").hide();
		$("#credit").click(function() {

			var credit = $("#credit option:selected").val();

			$.ajax({
				type : 'POST',
				url : "/support/list",
				dataType : "json",
				data : {
					credit : credit
				},

				success : function(data) {
					if (data.success == true) {
						$("#credit1").html(data.credit)
						$("#credit1").show();
					}
				}
			});
		});

		$("#language1").hide();
		$("#language").click(function() {

			var language = $("#language option:selected").val();

			$.ajax({
				type : 'POST',
				url : "/support/list",
				dataType : "json",
				data : {
					language : language
				},

				success : function(data) {
					if (data.success == true) {
						$("#language1").html(data.language)
						$("#language1").show();
					}
				}
			});
		});

		$("#score1").hide();
		$("#score").click(function() {

			var score = $("#score option:selected").val();

			$.ajax({
				type : 'POST',
				url : "/support/list",
				dataType : "json",
				data : {
					score : score
				},

				success : function(data) {
					if (data.success == true) {
						$("#score1").html(data.score)
						$("#score1").show();
					}
				}
			});
		});

		$("#status1").hide();
		$("#status").click(function() {

			var status = $("#status option:selected").val();

			$.ajax({
				type : 'POST',
				url : "/support/list",
				dataType : "json",
				data : {
					status : status
				},

				success : function(data) {
					if (data.success == true) {
						$("#status1").html(data.status)
						$("#status1").show();
					}
				}
			});
		});

	});
</script>

<%@ include file="../include/footer.jsp"%>