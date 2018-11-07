<%@page import="java.util.Date"%>
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

.remove-class{display:none;}
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
							<th class="text-center">TOEIC</th>
							<th class="text-center">처리상태</th>

						</tr>
					</thead>

					<tbody id="test">
						<tr>
							<td class="text-center" style="width: 12%"><select multiple
								class="form-control searchSelect" id="career" forId="careerbox" form="search" name="career">
									<option value="신입">신입</option>
									<option value="경력">경력</option>
							</select></td>
							<td class="text-center" style="width: 16%"><select multiple
								class="form-control searchSelect" id="employment" forId="employmentbox" form="search" name="employment">
									<option value="정규직">정규직</option>
									<option value="계약직">계약직</option>
									<option value="인턴">인턴</option>
									<option value="병역특례">병역특례</option>
							</select></td>
							<td class="text-center" style="width: 25%"><select multiple
								class="form-control searchSelect" id="academiccareer" forId="academiccareerbox" form="search" name="academiccareer">
									<option value="대학교졸업(4년)">대학교졸업(4년)</option>
									<option value="대학교졸업(2~3년)">대학교졸업(2~3년)</option>
									<option value="석사 이상">석사 이상</option>
									<option value="고등학교 졸업">고등학교 졸업</option>
									<option value="학력 무관">학력 무관</option>
							</select></td>
							<td class="text-center" style="width: 10%"><select multiple
								class="form-control searchSelect" id="credit" forId="creditbox" form="search" name="credit">
									<option value="2.0">2.0 이상</option>
									<option value="2.5">2.5 이상</option>
									<option value="3.0">3.0 이상</option>
									<option value="3.5">3.5 이상</option>
									<option value="4.0">4.0 이상</option>
							</select></td>
							<td class="text-center" style="width: 15%"><select multiple
								class="form-control searchSelect" id="language" forId="languagebox" form="search" name="language">
									<option value="500~550">500~550</option>
									<option value="550~600">550~600</option>
									<option value="600~650">600~650</option>
									<option value="650~700">650~700</option>
									<option value="750~800">750~800</option>
									<option value="800~850">800~850</option>
									<option value="850~900">850~900</option>
									<option value="900 이상">900 이상</option>
							</select></td>
							<td class="text-center" style="width: 10%">
								<select multiple class="form-control searchSelect" forId="statusbox" id="status" form="search" name="status">
									<option value="처리 전">처리 전</option>
									<option value="처리 후">처리 후</option>
								</select>
							</td>
						</tr>
						
						
						<tr>
							<th class="text-center" colspan="1"
								style="background-color: #eee; padding: 0px; line-height: 2.5;">
								공고명</th>
							<td colspan="7"><select class="custom-select"
								style="width: 457px;" id="title" name="title" form="search">
									<option value="0" style="width: 457px">공고명을 선택해 주십시오!</option>
									<option style="width: 457px;">아파트</option>
									<option style="width: 457px;">빌라</option>
									<option style="width: 457px;">주택</option>
									<option style="width: 457px;">원룸</option>
							</select></td>
						</tr>
						<tr>
							<td colspan="8" style="height: 90px">
							<div class="row">
							<div class="col-10">
							<div class="box text-center remove-class" id=careerbox style="width:8em;"></div>
							<div class="box text-center remove-class" id=employmentbox style="width:7em;"></div>
							<div class="box text-center remove-class" id=academiccareerbox style="width:14em;"></div>
							<div class="box text-center remove-class" id=creditbox style="width:8em;"></div>
							<div class="box text-center remove-class" id=languagebox style="width:10em;"></div>
							<div class="box text-center remove-class" id=statusbox style="width:6em;"></div> 
							</div>
							<div class="col-2 mt-2">
								<button class="btn float-right btn-sm btn-primary fas fa-redo	"
									style="margin-right: 15px" id="clear">&nbsp; 초기화</button>
									</div>
									</div>
									<div class="row">
									<div class="col-12 d-flex justify-content-end mt-1">
									<form action="/support/list" method="GET" id="search">
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
				<table class="table table-hover" id="supportTable">
					<thead style="background-color: #eee;">
						<tr>
							<th class="text-center">번호</th>
							<th class="text-center">공 고 명</th>
							<th class="text-center">직무</th>
							<th class="text-center">지원 일자</th>
							<th class="text-center">지원자</th>
							<th class="text-center">포트폴리오</th>
							<th class="text-center">처리 상태</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>

		<%@ include file="../util/supportpaging.jsp"%>

	</div>
</div>

<%@ include file="../include/scriptLoader.jsp"%>

<script>

$(function () {
	supportList(${curPage});
	
	//이벤트 누적 방지 ( 이전 이벤트를 삭제하고 새 이벤트 주입. unbind)
	$('.searchSelect').unbind('click').click(function () {
		$('#' + $(this).attr('forId')).html($(this).val() + "<i class='fas fa-backspace ml-2' id='careerclose' style='cursor: pointer'></i>").show();
		supportList();
	});
	
	$('.remove-class').unbind('click').click(function () {
		$(this).html('');
		$(this).hide();
	});
	

	$("#career option:selected").val();

	$("#clear").click(function() {

		var clear = $("#clear").val();

					$(".box").hide();
		
		$("#title").val("0").prop("selected", true);
	});
});

function supportList (curPage) {
	
	console.log(curPage)
	
	var param = {
			career 			: $('#career').val(),			//경력
			employment 		: $('#employment').val(),		//고용형태
			academiccareer 	: $('#academiccareer').val(),	//학력
			credit 			: $('#credit').val(),			//학점
			language 		: $('#language').val(),			//토익
			status 			: $('#status').val(),			//처리상태
			curPage			: curPage
	};


	//ajax 호출
	$.getJSON('/support/search', param, function (result) {
		if (result) {
			//목록 초기화
			$('#supportTable tbody').empty();
			//목록 생성
			$.each(result, function (i, item) {
				var html  = '<tr>';
					html += '	<th scope="row" class="text-center align-middle">' + (i + 1) + '</th>';
					html += '	<td class="text-center align-middle">' + item.title + '</td>';
					html += '	<td class="text-center align-middle">' + item.task + '</td>';
					html += '	<td class="text-center align-middle">' + item.supportDate + '</td>';
					html += '	<td class="text-center align-middle">' + item.username + '</td>';
					html += '	<td class="text-center"><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#exampleModal">포트폴리오</button></td>';
					html += '	<td class="text-center"><button type="button" class="btn btn-secondary btn-sm">' + item.status + '</button></td>';
					html += '</tr>';
					
				$('#supportTable tbody').append(html);
			});
			
		}
	});
	
}

//페이징 버튼 클릭 시
$('.container .container').on("click", '.page-link', function() {
	var curPage = $(this).attr('data-curpage');
	supportList(curPage);	
});
</script>



<%@ include file="../include/footer.jsp"%>