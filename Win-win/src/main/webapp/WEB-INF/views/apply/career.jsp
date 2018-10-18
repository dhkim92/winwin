<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>
<style>
</style>
<%@ include file="../include/header.jsp"%>


<div class="container">
	<h3 class="mt-3 font-weight-bold">입사지원 등록</h3>
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

	<h4 class="mt-4 mb-3 font-weight-bold">경력사항</h4>
	<div class="row">
		<a href="/apply/userDetailUpdate"><img class="img-fluid d-block ml-3" src="/resources/image/G_userDetail.png"></a>
		<a href="/apply/academicUpdate"><img class="img-fluid d-block" src="/resources/image/G_academic.png"></a>
		<a href="/apply/militaryUpdate"><img class="img-fluid d-block" src="/resources/image/G_military.png"></a>
		<img class="img-fluid d-block" src="/resources/image/B_career.png">
		<img class="img-fluid d-block" src="/resources/image/G_introduce.png">
		<img class="img-fluid d-block" src="/resources/image/G_complete.png">
	</div>

	<h6 class="mt-5 font-weight-bold">어학정보</h6>
	<div class="col-md-12 border border-secondary mt-3 p-0">
		<table class="table col-md-12 mb-0 text-center table-sm">
			
			<tbody>
				<tr style="line-height: 1.5em;">
					<th class="text-center align-middle">외국어명</th>
					<th class="text-center align-middle">회화수준</th>
					<th class="text-center align-middle">공익시험명</th>
					<th class="text-center align-middle">점수(또는 급)</th>
					<th class="text-center align-middle">취득일</th>
					<th class="text-center align-middle">주관처</th>
					<th class="text-center align-middle">삭제</th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="align-middle">
                                             영어
                  </td>
                  <td class="align-middle">
					<div class="btn-group">
  					<button type="button" name="level" class="btn btn dropdown-toggle btn-sm" style="width:60px; height:25px;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">선택 </button>
  						<div class="dropdown-menu" style="width:30px">
    						<a class="dropdown-item" href="#">상</a>
   							<a class="dropdown-item" href="#">중</a>
    						<a class="dropdown-item" href="#">하</a>
  						</div>
					</div>	 			
                  </td>
                  <td class="align-middle">
                    <div class="btn-group">
  					<button type="button" name="testName" class="btn btn dropdown-toggle btn-sm" style="width:60px; height:25px;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">선택 </button>
  						<div class="dropdown-menu">
    						<a class="dropdown-item" href="#">TOEIC</a>
   							<a class="dropdown-item" href="#">TOEFL</a>
    						<a class="dropdown-item" href="#">TEPS</a>
    						<a class="dropdown-item" href="#">TOEIC Speaking</a>
    						<a class="dropdown-item" href="#">OPIc</a>
  						</div>
					</div>
                  </td>
                  <td class="align-middle"><input type="text" name="Score" /></td>
                  <td class="align-middle"><input type="date" name="lDate" min="2000-01-01" max="3000-12-31" class="form-control" style="height:25px;"></td>
                  <td class="align-middle"><input type="text" name="lOrgan" /></td>
                  <td class="align-middle"><button>삭제</button></td>
                </tr>
                <tr>
                	<td colspan="7" class="text-center align-middle">항목 추가 시 버튼을 눌러주시기 바랍니다. 
                	<span style="color:blue;">(최대 4개까지 가능)</span>
                	<button class="ml-1">+ 추가</button>
                	</td>
                </tr>
			</tbody>
		</table>
	</div>
	
	<h6 class="mt-5 font-weight-bold">자격사항</h6>
	<div class="col-md-12 border border-secondary mt-3 p-0">
		<table class="table col-md-12 mb-0 text-center table-sm">
			
			<tbody>
				<tr style="line-height: 1.5em;">
					<th class="text-center align-middle">자격증</th>
					<th class="text-center align-middle">취득일</th>
					<th class="text-center align-middle">주관처</th>
					<th class="text-center align-middle">삭제</th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="align-middle"><input type="text" name="liName" class="mr-1" style="width:200px" /><button class="ml-1 mr-1">검색</button><button class="ml-1">취소</button></td>
                  <td class="align-middle"><input type="date" name="liDate" min="2000-01-01" max="3000-12-31" class="form-control" style="height:25px;"></td>
                  <td class="align-middle"><input type="text" name="liOrgan" /></td>
                  <td class="align-middle"><button>삭제</button></td>
                </tr>
                <tr>
                	<td colspan="7" class="text-center align-middle">항목 추가 시 버튼을 눌러주시기 바랍니다. 
                	<span style="color:blue;">(최대 4개까지 가능)</span>
                	<button class="ml-1">+ 추가</button>
                	</td>
                </tr>
			</tbody>
		</table>
	</div>
	
	<h6 class="mt-5 font-weight-bold">회사경력</h6>
	<div class="col-md-12 border border-secondary mt-3 p-0">
		<table class="table col-md-12 mb-0 text-center table-sm">
			
			<tbody>
				<tr style="line-height: 1.5em;">
					<th colspan="2" class="text-center align-middle">근무기간</th>
					<th class="text-center align-middle">회사명</th>
					<th class="text-center align-middle">직위</th>
					<th class="text-center align-middle">담당업무</th>
					<th class="text-center align-middle">연봉(만원)</th>
					<th class="text-center align-middle">퇴직사유</th>
					<th class="text-center align-middle">삭제</th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="align-middle"><input type="date" name="cStartDate" max="3000-12-31" min="1900-01-01" class="form-control" style="height:25px; width:120px;"></td>
                  <td class="align-middle"><input type="date" name="cEndDate" max="3000-12-31" min="1900-01-01" class="form-control" style="height:25px; width:120px;"></td>
                  <td class="align-middle"><input type="text" name="cName" class="mr-1" style="width:100px" /></td>
                  <td class="align-middle"><input type="text" name="position" class="mr-1" style="width:50px" /></td>
                  <td class="align-middle"><input type="text" name="task" class="mr-1" style="width:100px" /></td>
                  <td class="align-middle"><input type="text" name="salary" class="mr-1" style="width:100px" /></td>
                  <td class="align-middle"><input type="text" name="cContent" class="mr-1" style="width:300px" /></td>
                  <td class="align-middle"><button>삭제</button></td>
                </tr>
                <tr>
                	<td colspan="8" class="text-center align-middle">항목 추가 시 버튼을 눌러주시기 바랍니다. 
                	<span style="color:blue;">(최대 4개까지 가능)</span>
                	<button class="ml-1">+ 추가</button>
                	</td>
                </tr>
			</tbody>
		</table>
	</div>
	
	<h6 class="mt-5 font-weight-bold">사회봉사활동</h6>
	<div class="col-md-12 border border-secondary mt-3 p-0">
		<table class="table col-md-12 mb-0 text-center table-sm">
			
			<tbody>
				<tr style="line-height: 1.5em;">
					<th class="text-center align-middle">단체명</th>
					<th colspan="2" class="text-center align-middle">기간</th>
					<th class="text-center align-middle">설명</th>
					<th class="text-center align-middle">삭제</th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="align-middle"><input type="text" name="aName" class="mr-1" style="width:250px" /></td>
                  <td class="align-middle"><input type="date" name="aStartDate" max="3000-12-31" min="1900-01-01" class="form-control" style="height:25px; width:120px;"></td>
                  <td class="align-middle"><input type="date" name="aEndDate" max="3000-12-31" min="1900-01-01" class="form-control" style="height:25px; width:120px;"></td>
                  <td class="align-middle"><input type="text" name="aContent" class="mr-1" style="width:350px" /></td>
                  <td class="align-middle"><button>삭제</button></td>
                </tr>
                <tr>
                	<td colspan="8" class="text-center align-middle">항목 추가 시 버튼을 눌러주시기 바랍니다. 
                	<span style="color:blue;">(최대 4개까지 가능)</span>
                	<button class="ml-1">+ 추가</button>
                	</td>
                </tr>
			</tbody>
		</table>
	</div>
	
	<h6 class="mt-5 font-weight-bold">연수경험</h6>
	<div class="col-md-12 border border-secondary mt-3 p-0">
		<table class="table col-md-12 mb-0 text-center table-sm">
			
			<tbody>
				<tr style="line-height: 1.5em;">
					<th class="text-center align-middle">연수기관</th>
					<th class="text-center align-middle">구분</th>
					<th colspan="2" class="text-center align-middle">기간</th>
					<th class="text-center align-middle">설명</th>
					<th class="text-center align-middle">삭제</th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="align-middle"><input type="text" name="eOrgan" class="mr-1" style="width:250px" /></td>
                  <td class="align-middle">
                  <div class="btn-group">
  					<button type="button" name="testName" class="btn btn dropdown-toggle btn-sm mr-2" style="width:60px; height:25px;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">선택 </button>
  						<div class="dropdown-menu">
    						<a class="dropdown-item" href="#">어학연수</a>
   							<a class="dropdown-item" href="#">봉사</a>
    						<a class="dropdown-item" href="#">인턴</a>
    						<a class="dropdown-item" href="#">수상경력</a>
    						<a class="dropdown-item" href="#">기타</a>
  						</div>
					</div>
                  </td>
                  <td class="align-middle"><input type="date" name="eStartDate" max="3000-12-31" min="1900-01-01" class="form-control ml-3" style="height:25px; width:120px;"></td>
                  <td class="align-middle"><input type="date" name="eEndDate" max="3000-12-31" min="1900-01-01" class="form-control" style="height:25px; width:120px;"></td>
                  <td class="align-middle"><input type="text" name="eContent" class="mr-1" style="width:350px" /></td>
                  <td class="align-middle"><button>삭제</button></td>
                </tr>
                <tr>
                	<td colspan="8" class="text-center align-middle">항목 추가 시 버튼을 눌러주시기 바랍니다. 
                	<span style="color:blue;">(최대 4개까지 가능)</span>
                	<button class="ml-1">+ 추가</button>
                	</td>
                </tr>
			</tbody>
		</table>
	</div>
	
	<h6 class="mt-5 font-weight-bold">포트폴리오 첨부파일</h6>
	<div class="col-md-12 border border-secondary mt-3 p-0">
		<table class="table col-md-12 mb-0 text-center table-sm">
			
			<tbody>
				<tr style="line-height: 1.5em;">
					<th class="text-center align-middle">종류</th>
					<th class="text-center align-middle">파일명</th>
					<th class="text-center align-middle">등록수정일</th>
					<th class="text-center align-middle">용량</th>
					<th class="text-center align-middle">삭제</th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="align-middle"><input type="text" name="originName" class="mr-1" style="width:150px;" /></td>
                  <td class="align-middle"><input type="text" name="originName" class="mr-1" style="width:350px;" ><button>수정</button></td>
                  <td class="align-middle"><input type="text" name="date" class="mr-1" style="width:200px;" ></td>
                  <td class="align-middle"><input type="text" name="size" class="mr-1" style="width:200px" /></td>
                  <td class="align-middle"><button>삭제</button></td>
                </tr>
                <tr>
                	<td colspan="8" class="text-center align-middle">파일 첨부시 파일첨부 버튼을 눌러주시기 바랍니다. 
                	<span style="color:blue;">(최대 4개까지 가능)</span>
                	<button class="ml-1">+ 파일첨부</button>
                	</td>
                </tr>
			</tbody>
		</table>
	</div>
	
	   <div class="col-12 mt-5 p-0">
         <table class="table border">
            <tbody>
               <tr>
                  <th class="text-center table-light align-middle">
                     <i class="fas fa-exclamation-triangle fa-3x"></i>
                  </th>
                  <td class="table-light align-middle"> 
                  <ul class="mb-0">
                     <li style="line-height: 150%;"><strong>경력사항은 <span class="text-info">가장 최근의 경력부터 과거경력의 순서</span>로 작성합니다.</strong></li>
                     <li style="line-height: 150%;"><strong>학교 졸업 후 <span class="text-info">경력사항을 빠짐없이 모두 </span>기재합니다.</strong></li>
                     <li style="line-height: 150%;"><strong><span class="text-danger">[퇴직사유 예 : 이직, 육아, 출산, 병가, 구조조정, 회사폐업 등]</span></strong></li>
                     <li><strong>연봉은 "( 월급여 X 12개월 ) + 상여"를 기준으로 작성하시기 바랍니다. (계약연봉기준)</strong></li>
                     <li><strong>해외연수의 경우 <span class="text-info">확인서 제출이 가능한 경우</span>에 한해서 기재하여 주시기 바랍니다.</strong></li>
                     <li><strong>포트폴리오 파일 첨부는 최대 4개까지 가능하며 <span class="text-danger">등록 가능한 최대 용량은 총 10MB</span>입니다.</strong></li>
                  </ul>
                  </td>
               </tr>
            </tbody>
         </table>
   </div>
   
   <div class="col-12 mt-5 p-0 d-flex justify-content-end">
      <input class="btn btn-primary text-white" type="submit" value="저장하고 계속하기"/>
   </div>
	
</div>
<br><br><br><br>
</body>
</html>