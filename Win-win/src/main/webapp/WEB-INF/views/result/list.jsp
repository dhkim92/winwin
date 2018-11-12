<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/CSSLoader.jsp"%>


<%@ include file="../include/adminHeader.jsp"%>
<div class="container">
	<div class="container">
		<div class="row">
			<div class="col-12 mt-5">
				<p class="font-weight-bold h3">지원 결과 확인</p>
				<hr style="border: solid #376092;">
			</div>
		</div>
		<div class="row">
			<div class="col-12 mt-5">
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="pass"
						value="option1" style="width: 20px; height: 20px;"> <label
						class="form-check-label font-weight-bold" for="pass"
						style="font-size: 15px">합격</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="disqualification" value="option2"
						style="width: 20px; height: 20px;"> <label
						class="form-check-label font-weight-bold" for="disqualification"
						style="font-size: 15px">불합격</label>
				</div>
				<div class="mt-3">
					<select class="custom-select" style="width: 457px; height: 40px;"
						id="living" name="living">
						<option value="0" style="width: 457px;">공고명을 선택해 주십시오!</option>
						<c:forEach items="${title }" var="job">
							<option value="${job.title }">${job.title }</option>
						</c:forEach>
					</select>
					<button class="btn float-right btn-primary	"
						style="margin-right: 15px; margin-top: 3px;">이메일 보내기</button>
				</div>


			</div>
		</div>


		<div class="row">
			<div class="col-12 mt-5">
				<table class="table table-hover" id=resultTable>
					<thead style="background-color: #eee;">
						<tr>
							<th class="text-center align-middle"><input type="checkbox"
								name="checkAll" aria-label="Checkbox for following text input"
								style="width: 18px; height: 18px;" class="align-middle"></th>
							<th class="text-center">번호</th>
							<th class="text-center">공 고 명</th>
							<th class="text-center">직무</th>
							<th class="text-center">지원 일자</th>
							<th class="text-center">지원자</th>
							<th class="text-center">처리 상태</th>
							<th class="text-center">이메일 발송</th>

						</tr>
					</thead>
					<tbody>
						<!-- 						<tr> -->
						<!-- 							<td scope="row" class="text-center align-middle"><input -->
						<!-- 								type="checkbox" aria-label="Checkbox for following text input" -->
						<!-- 								style="width: 18px; height: 18px;" class="align-middle"></td> -->
						<!-- 							<th scope="row" class="text-center align-middle">20</th> -->
						<!-- 							<td class="text-center align-middle">경력 사원 입사지원서</td> -->
						<!-- 							<td class="text-center align-middle">직무</td> -->
						<!-- 							<td class="text-center align-middle">18.08.23</td> -->
						<!-- 							<td class="text-center align-middle">문재환</td> -->
						<!-- 							<td class="text-center"><button type="button" -->
						<!-- 									class="btn btn-secondary btn-sm">합격</button></td> -->
						<!-- 							<td class="text-center"><button type="button" -->
						<!-- 									class="btn btn-secondary btn-sm">발송</button></td> -->
						<!-- 						</tr> -->
					</tbody>
				</table>
			</div>
		</div>

		<div class="row">
			<div class="col-12 d-flex justify-content-center">
				<ul class="pagination" id="resultPagination">
				</ul>
			</div>
		</div>
<%-- 		<%@ include file="../util/supportpaging.jsp"%> --%>

	</div>
</div>



<%@ include file="../include/scriptLoader.jsp"%>

<script>
	var page = 1; //현재 페이지
	var limit = 20; //목록 갯수
	var pageCount = 5; //페이지 수

	$(function() {
		resultList(page);
	});
	
function resultList(page) {
	if (!page) {
		page = 1;
	}
		
	var param = {
			pass				: $('#pass').val(),
			disqualification	: $('disqualification').val(),
			page 				: page,
			limit 				: limit,
			pageCount 			: pageCount,
	};
	
	//ajax 호출
	$.getJSON('/result/search', param, function (result) {
		
		if (result) {
			//목록 초기화
			$('#resultTable tbody').empty();
			//목록 생성
			$.each(result.list, function (i, item) {
				var html  = '<tr>';
					html += '<td scope="row" class="text-center align-middle"><input type="checkbox" name="checkOne" aria-label="Checkbox for following text input"style="width: 18px; height: 18px;" class="align-middle"></td>';
					html += '	<th scope="row" class="text-center align-middle">' + (i+1) + '</th>';
					html += '	<td class="text-center align-middle">' + item.title + '</td>';
					html += '	<td class="text-center align-middle">' + item.task + '</td>';
					html += '	<td class="text-center align-middle">' + item.supportDate + '</td>';
					html += '	<td class="text-center align-middle">' + item.username + '</td>';
					html += '	<td class="text-center"><button type="button" class="btn btn-secondary btn-sm">' + item.pass + '</button></td>';
					html += '	<td class="text-center"><button type="button" class="btn btn-secondary btn-sm">' + item.emailSend + '</button></td>';
					html += '</tr>';
					
				$('#resultTable tbody').append(html);
			});
			
			if (result.list.length == 0) {
				$('#resultTable tbody').append('<tr><td colspan="7" class="text-center">정보가 없습니다.</td></tr>');
			}
		}
		
		//paging
		paging(page, limit, result.totalCount, pageCount, resultList);
			
		});
	}
//ajax 페이징 처리 함수
function paging (page, limit, totalCount, pageCount, callback) {
	var firstPage 	= 1;
	var lastPage 	= Math.ceil(totalCount / limit);
	var endPage 	= Math.ceil(Number(page / pageCount)) * pageCount;
		endPage 	= endPage > lastPage ? lastPage : endPage;
	var startPage 	= (endPage - pageCount) + 1;
		startPage	= startPage < firstPage ? firstPage : startPage;
	
	$('#resultPagination').empty();
	
	var html = '';
	//Prev 있을 때
	if (firstPage < startPage) {
		html += '<li id="prevBtn">';
		html += '	<button class="page-link" data-curPage="" aria-label="Next">';
		html += '		<span aria-hidden="true">&laquo;</span>';
		html += '	</button>';
		html += '</li>';	
	}
	
	for (var i = startPage; i <= endPage; i++) {
		//현재 페이지
		if (i == page) {
			html += '<li class="page-item active page_btn">';
			html += '	<button class="page-link" data-curPage="' + page + '">' + page + '</button>';
			html += '</li>';
		} else {
			html += '<li class="page-item page_btn">';
			html += '	<button class="page-link" data-curPage="' + i + '">' + i + '</button>';
			html += '</li>';
		}
	}
	
	//Next 있을 때
	if (endPage < lastPage) {
		html += '<li id="nextBtn">';
		html += '	<button class="page-link" data-curPage="" aria-label="Next">';
		html += '		<span aria-hidden="true">&raquo;</span>';
		html += '	</button>';
		html += '</li>';		
	}
	
	$('#resultPagination').append(html);
	
	$('.page_btn').unbind('click').click(function () {
		page = $(this).find('button').attr('data-curPage');
		callback(page);
	});
	
	//Prev Event
	$('#prevBtn').unbind('click').click(function () {
		page = startPage == 1 ? 1 : startPage - 1;
		callback(page);
	});
	
	//Next Event
	$('#nextBtn').unbind('click').click(function () {
		page = endPage + 1;
		callback(page);
	});
}

//체크박스 전체 선택하기, 해제하기
$("#resultTable").on("click", "[name=checkAll]", function(){
	$("[name=checkOne]").prop("checked", $(this).prop("checked") );
});

// 개별 체크박스 선택 시
$("#resultTable").on("click", "[name=checkOne]", function() {
	
	if( $(this).prop("checked") ) {
		checkBoxLength = $("[name=checkOne]").length;
		checkedLength = $("[name=checkOne]:checked").length;
	
		if( checkBoxLength == checkedLength ) {
			$("[name=checkAll]").prop("checked", true);
		} else {
			$("[name=checkAll]").prop("checked", false);
		}
	} else {
		// 하나라도 해제가 되면 전체 버튼은 해제
		$("[name=checkAll]").prop("checked", false);
	}
});
	
</script>

<%@ include file="../include/footer.jsp"%>