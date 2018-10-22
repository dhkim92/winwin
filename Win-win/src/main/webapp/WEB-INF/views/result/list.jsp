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
						class="form-check-label" for="inlineCheckbox1">합격</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="disqualification" value="option2"
						style="width: 20px; height: 20px;"> <label
						class="form-check-label" for="inlineCheckbox2">불합격</label>
				</div>
				<div class="mt-3">
					<select class="custom-select" style="width: 457px; height: 40px;"
						id="living" name="living">
						<option value="0" style="width: 457px;">공고명을 선택해 주십시오!</option>
						<option style="width: 457px;">아파트</option>
						<option style="width: 457px;">빌라</option>
						<option style="width: 457px;">주택</option>
						<option style="width: 457px;">원룸</option>
					</select>
					<button class="btn float-right btn-primary	"
						style="margin-right: 15px; margin-top: 3px;">이메일 보내기</button>
				</div>


			</div>
		</div>


		<div class="row">
			<div class="col-12 mt-5">
				<table class="table table-hover">
					<thead class="thead-light">
						<tr>
							<th class="text-center align-middle"><input type="checkbox"
								aria-label="Checkbox for following text input"
								style="width: 18px; height: 18px;" class="align-middle"></th>
							<th class="text-center">번호</th>
							<th class="text-center">공 고 명</th>
							<th class="text-center">지원 일자</th>
							<th class="text-center">지원자</th>
							<th class="text-center">처리 상태</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<td scope="row" class="text-center align-middle"><input
								type="checkbox" aria-label="Checkbox for following text input"
								style="width: 18px; height: 18px;" class="align-middle"></td>
							<th scope="row" class="text-center align-middle">20</th>
							<td class="text-center align-middle">경력 사원 입사지원서</td>
							<td class="text-center align-middle">18.08.23</td>
							<td class="text-center align-middle">문재환</td>
							<td class="text-center"><button type="button"
									class="btn btn-secondary btn-sm">합격</button></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<div class="row">
			<div class="col-12 d-flex justify-content-center">
				<ul class="pagination">
					<li class="page-item disabled"><a class="page-link" href="#">&laquo;</a>
					</li>
					<li class="page-item active"><a class="page-link" href="#">1</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item"><a class="page-link" href="#">&raquo;</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>


<style>
</style>



<%@ include file="../include/scriptLoader.jsp"%>

<script>
	
</script>

<%@ include file="../include/footer.jsp"%>