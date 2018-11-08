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

.remove-class {
	display: none;
}

 /* The Modal (background) */
        .modalCheck {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
/*             overflow: auto; /* Enable scroll if needed */ */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-contentCheck {
            background-color: #fefefe;
            margin: 5% auto; /* 15% from the top and centered */
            padding-left: 10px; 
            padding-right: 10px; 
            border: 1px solid #888;
            width: 80%; /* 모달 폭 지정 */
			height: 100%;
			max-height: 600px;
			overflow-y: auto;
        }
        
        .modal-footerCheck {
       	 border-top: none;
        }
        /* The Close Button */
        .closeCheck {
            color: #aaa;
            float: right; 
            font-size: 28px;
            font-weight: bold;
        }
        .closeCheck:hover,
        .closeCheck:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
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
							<th class="text-center">TOEIC</th>
							<th class="text-center">처리상태</th>

						</tr>
					</thead>

					<tbody id="test">
						<tr>
							<td class="text-center" style="width: 12%"><select multiple
								class="form-control searchSelect" id="career" forId="careerbox"
								form="search" name="career">
									<option value="신입">신입</option>
									<option value="경력">경력</option>
							</select></td>
							<td class="text-center" style="width: 16%"><select multiple
								class="form-control searchSelect" id="employment"
								forId="employmentbox" form="search" name="employment">
									<option value="정규직">정규직</option>
									<option value="계약직">계약직</option>
									<option value="인턴">인턴</option>
									<option value="병역특례">병역특례</option>
							</select></td>
							<td class="text-center" style="width: 25%"><select multiple
								class="form-control searchSelect" id="academiccareer"
								forId="academiccareerbox" form="search" name="academiccareer">
									<option value="대학교졸업(4년)">대학교졸업(4년)</option>
									<option value="대학교졸업(2~3년)">대학교졸업(2~3년)</option>
									<option value="석사 이상">석사 이상</option>
									<option value="고등학교 졸업">고등학교 졸업</option>
									<option value="학력 무관">학력 무관</option>
							</select></td>
							<td class="text-center" style="width: 10%"><select multiple
								class="form-control searchSelect" id="credit" forId="creditbox"
								form="search" name="credit">
									<option value="2.0">2.0 이상</option>
									<option value="2.5">2.5 이상</option>
									<option value="3.0">3.0 이상</option>
									<option value="3.5">3.5 이상</option>
									<option value="4.0">4.0 이상</option>
							</select></td>
							<td class="text-center" style="width: 15%"><select multiple
								class="form-control searchSelect" id="language"
								forId="languagebox" form="search" name="language">
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
								class="form-control searchSelect" forId="statusbox" id="status"
								form="search" name="status">
									<option value="처리 전">처리 전</option>
									<option value="처리 후">처리 후</option>
							</select></td>
						</tr>


						<tr>
							<th class="text-center" colspan="1"
								style="background-color: #eee; padding: 0px; line-height: 2.5;">
								공고명</th>
							<td colspan="7"><select class="custom-select"
								style="width: 457px;" id="title" name="title" form="search">
									<option value="0" style="width: 457px">공고명을 선택해 주십시오!</option>
									<c:forEach items="${title }" var="job">
										<option value="${job.title }">${job.title }</option>
									</c:forEach>
							</select></td>
						</tr>
						<tr>
							<td colspan="8" style="height: 90px">
								<div class="row">
									<div class="col-10">
										<div class="box text-center remove-class" id=careerbox
											style="width: 8em;"></div>
										<div class="box text-center remove-class" id=employmentbox
											style="width: 7em;"></div>
										<div class="box text-center remove-class" id=academiccareerbox
											style="width: 14em;"></div>
										<div class="box text-center remove-class" id=creditbox
											style="width: 8em;"></div>
										<div class="box text-center remove-class" id=languagebox
											style="width: 10em;"></div>
										<div class="box text-center remove-class" id=statusbox
											style="width: 6em;"></div>
									</div>
									<div class="col-2 mt-2">
										<button
											class="btn float-right btn-sm btn-primary fas fa-redo	"
											style="margin-right: 15px" id="clear">&nbsp; 초기화</button>
									</div>
								</div>
								<div class="row">
									<div class="col-12 d-flex justify-content-end mt-1">
										<form action="/support/list" method="GET" id="search">
											<button class="btn float-right btn-primary"
												style="margin-right: 15px;">선택된 조건 검색하기</button>
										</form>
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

  <!-- The Modal -->
    <div id="myModal" class="modal">
 
	      <!-- Modal content -->
	      <div class="modal-content">
	      	
	      	<div class="row">
				<div class="col-6">
				<span class="font-weight-bold h2 d-flex justify-content-start mt-3">WIN-WIN</span>
				</div>
				<div class="col-6">
				<span class="d-flex justify-content-end mt-1"><span class="close">&times;</span></span>
				</div>
			</div>
	     	<div class="mb-3" style="height:4px; background-color: #376092" ></div>
	     	
	     	<!-- 모달 내용 입력하는 부분 -->
	     	<div>
	     	<div class="mt-4">
	        <p class="font-weight-bold text-center">모달 내용입력</p> 
	<!--         <select id="license" class="js-example-basic-single" > -->
	<!-- 		</select> -->
			</div>
			
			<div class="modal-footer d-flex justify-content-center">
				<div class="row">
				<button type="button" id="btnOk" class="font-weight-bold btn btn-primary mr-2 " style="background-color: #376092">확인</button>
				<button type="button" id="btnClose" class="font-weight-bold btn btn-secondary">닫기</button>
				</div>
			</div>
	      </div>
	 
	    </div>
    </div>
    
    <div class="modalCheck" id="checkModal">
	<div class="modal-contentCheck">
	
		<h3 class="mt-3 font-weight-bold">지원서 미리보기</h3><hr style="border: solid 2px #376092;"><br>
		
	<div class="container">
		<h4 class="ml-2 font-weight-bold">개인사항</h4><hr class="ml-2 border-dark bg-dark" style="border: solid 1px;">
		<h6 class="ml-4 mt-5 font-weight-bold">기본정보</h6><br>
		
		<table class="ml-4 mr-4 table border-secondary" style="width: 95%;">
		<tbody>
			<tr>
				<th style="width: 15% ;" class="text-center text-center align-middle bg-secondary">성명</th>
				<td style="width: 40%">
					<span style="font-size: 10px ;">한글 </span>${member.username } / <span style="font-size: 10px ;">영어 </span>${userDetail.eName }
				</td>
				<th class="text-center text-center align-middle bg-secondary">이메일</th>
				<td>${sessionScope.id }</td>
			</tr>
			<tr>
				<th class="text-center text-center align-middle bg-secondary" style="width: 5%" >생년월일</th>
				<td colspan="3">${userDetail.birth }</td>
			</tr>
			<tr>
				<th class="text-center text-center align-middle bg-secondary">주소</th>
				<td colspan="3">${userDetail.zipCode }, &nbsp&nbsp ${userDetail.address }, &nbsp&nbsp ${userDetail.addressDetail }</td>
			</tr>
			<tr>
				<th class="text-center text-center align-middle bg-secondary">긴급연락처</th>
				<td colspan="3">${userDetail.phoneNum }</td>
			</tr>
			<tr>
				<th class="text-center text-center align-middle bg-secondary">휴대전화</th>
				<td colspan="3">${member.phone }</td>
			</tr>
		</tbody>
		</table>
		
	</div>
	
	
	<div class="mt-5 container">
		<h4 class="ml-2 font-weight-bold">학력사항</h4><hr class="ml-2 border-dark bg-dark" style="border: solid 1px;">
		<h6 class="ml-4 mt-5 font-weight-bold">고등학교</h6><br>
		
		<table class="ml-4 mr-4 table border-secondary" style="width: 95%;">
		<tbody>
				<tr style="line-height: 1.0em;">
					<th class="text-center text-center align-middle">학교명</th>
					<th class="text-center text-center align-middle">전공</th>
					<th class="text-center text-center align-middle">졸업년도</th>
					<th class="text-center text-center align-middle">지역</th>
				</tr>
				<tr style="line-height: 1.0em; height:15px;">
                  <td class="text-center align-middle">${highSchool.hsName }&nbsp${highSchool.hsDay }</td>
                  <td class="text-center align-middle">${highSchool.hsMajor }</td>
                  <td class="text-center align-middle">${highSchool.hsEndDate }&nbsp${highSchool.hsGraduate }</td>
                  <td class="text-center align-middle">${highSchool.hsRegion }</td>
                </tr>
		</tbody>
		</table>
		
		<h6 class="ml-4 mt-5 font-weight-bold">전문대학</h6><br>
		
		<table class="ml-4 mr-4 table border-secondary" style="width: 95%;">
		<tbody>
				<tr style="line-height: 1.0em;">
					<th class="text-center text-center align-middle">학교명</th>
					<th class="text-center text-center align-middle">전공</th>
					<th class="text-center text-center align-middle">재학기간</th>
					<th class="text-center text-center align-middle">지역</th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="text-center align-middle">${college.colName }&nbsp${college.colBranch }&nbsp${college.colDay }</td>
                  <td class="text-center align-middle">${college.colMajor }&nbsp${college.colScore }/${college.colTotalScore }</td>
                  <td class="text-center align-middle">${college.colStartDate }&nbsp~&nbsp${colEndDate }&nbsp${college.colTransfer }&nbsp${college.colGraduate }</td>
                  <td class="text-center align-middle">${college.colRegion }</td>
                </tr>
		</tbody>
		</table>
		
		<h6 class="ml-4 mt-5 font-weight-bold">대학교</h6><br>
		
		<table class="ml-4 mr-4 table border-secondary" style="width: 95%;">
		<tbody>
				<tr style="line-height: 1.0em;">
					<th class="text-center text-center align-middle">학교명</th>
					<th class="text-center text-center align-middle">전공</th>
					<th class="text-center text-center align-middle">졸업년도</th>
					<th class="text-center text-center align-middle">지역</th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="text-center align-middle">${university.univName }&nbsp${university.univBranch }&nbsp${university.univDay }</td>
                  <td class="text-center align-middle">${university.univMajor }&nbsp${university.univMinor }&nbsp${university.univScore }&nbsp/&nbsp${university.univTotalScore }</td>
                  <td class="text-center align-middle">${university.univStartDate }&nbsp~&nbsp${university.univEndDate }&nbsp${university.univTransfer }&nbsp${university.univGraduate }</td>
                  <td class="text-center align-middle">${university.univRegion }</td>
                </tr>
		</tbody>
		</table>
		
		<h6 class="ml-4 mt-5 font-weight-bold">대학원</h6><br>
		
		<table class="ml-4 mr-4 table border-secondary" style="width: 95%;">
		<tbody>
				<tr style="line-height: 1.0em;">
					<th class="text-center text-center align-middle">학교명</th>
					<th class="text-center text-center align-middle">전공</th>
					<th class="text-center text-center align-middle">졸업년도</th>
					<th class="text-center text-center align-middle">지역</th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="text-center align-middle">${gSchool.gsName }&nbsp${gSchool.gsBranch }&nbsp${gSchool.gsDay }</td>
                  <td class="text-center align-middle">${gSchool.gsMajor }&nbsp${gSchool.gsScore }&nbsp/&nbsp${gSchool.gsTotalScore }</td>
                  <td class="text-center align-middle">${gSchool.gsEndDate }&nbsp${gSchool.gsGraduate }</td>
                  <td class="text-center align-middle">${gSchool.gsRegion }</td>
                </tr>
		</tbody>
		</table>
		
	</div>
	
	<div class="mt-5 container">
		<h4 class="ml-2 font-weight-bold">병역사항</h4><hr class="ml-2 border-dark bg-dark" style="border: solid 1px;">
		<h6 class="ml-4 mt-5 font-weight-bold">병역정보</h6><br>
		
		<table class="ml-4 mr-4 table border-secondary" style="width: 95%;">
		<tbody>
				<tr style="line-height: 1.0em;">
					<th class="text-center text-center align-middle">제대구분</th>
					<th class="text-center text-center align-middle">복무기간</th>
					<th class="text-center text-center align-middle">군별</th>
					<th class="text-center text-center align-middle">계급</th>
				</tr>
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="text-center align-middle">${military.discharge }</td>
                  <td class="text-center align-middle">${military.startDate }&nbsp ~ &nbsp${military.endDate }</td>
                  <td class="text-center align-middle">${military.mCategory }</td>
                  <td class="text-center align-middle">${military.mGrade }</td>
                </tr>
		</tbody>
		</table>
		
	</div>
	
	<div class="mt-5 container">
		<h4 class="ml-2 font-weight-bold">경력사항</h4><hr class="ml-2 border-dark bg-dark" style="border: solid 1px;">
		<h6 class="ml-4 mt-5 font-weight-bold">어학정보</h6><br>
		
		<table class="ml-4 mr-4 table border-secondary" style="width: 95%;">
		<tbody>
				<tr style="line-height: 1.0em;">
					<th class="text-center text-center align-middle">외국어명</th>
					<th class="text-center text-center align-middle">회화수준</th>
					<th class="text-center text-center align-middle">공익시험명</th>
					<th class="text-center text-center align-middle">점수(또는 급)</th>
					<th class="text-center text-center align-middle">취득일</th>
					<th class="text-center text-center align-middle">주관처</th>
				</tr>
				<c:forEach items="${language }" var="language">
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="text-center align-middle">${language.lName }</td>
                  <td class="text-center align-middle">${language.grade }</td>
                  <td class="text-center align-middle">${language.testName }</td>
                  <td class="text-center align-middle">${language.score }</td>
                  <td class="text-center align-middle">${language.lDate }</td>
                  <td class="text-center align-middle">${language.lOrgan }</td>
                </tr>
                </c:forEach>
		</tbody>
		</table>
		<h6 class="ml-4 mt-5 font-weight-bold">자격사항</h6><br>
		
		<table class="ml-4 mr-4 table border-secondary" style="width: 95%;">
		<tbody>
				<tr style="line-height: 1.0em;">
					<th class="text-center text-center align-middle">자격증</th>
					<th class="text-center text-center align-middle">취득일</th>
					<th class="text-center text-center align-middle">주관처</th>
				</tr>
				<c:forEach items="${license }" var="license">
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="text-center align-middle">${license.liName }</td>
                  <td class="text-center align-middle">${license.liDate }</td>
                  <td class="text-center align-middle">${license.liOrgan }</td>
                </tr>
                </c:forEach>
		</tbody>
		</table>
		<h6 class="ml-4 mt-5 font-weight-bold">회사경력</h6><br>
		
		<table class="ml-4 mr-4 table border-secondary" style="width: 95%;">
		<tbody>
				<tr style="line-height: 1.0em;">
					<th class="text-center text-center align-middle">근무기간</th>
					<th class="text-center text-center align-middle">회사명</th>
					<th class="text-center text-center align-middle">직위</th>
					<th class="text-center text-center align-middle">담당업무</th>
					<th class="text-center text-center align-middle">연봉(만원)</th>
					<th class="text-center text-center align-middle">퇴직사유</th>
				</tr>
				<c:forEach items="${career }" var="career">
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="text-center align-middle">${career.cStartDate } &nbsp ~ &nbsp ${career.cEndDate }</td>
                  <td class="text-center align-middle">${career.cName }</td>
                  <td class="text-center align-middle">${career.position }</td>
                  <td class="text-center align-middle">${career.task }</td>
                  <td class="text-center align-middle">${career.salary }</td>
                  <td class="text-center align-middle">${career.cContent }</td>
                </tr>
				</c:forEach>
		</tbody>
		</table>
		<h6 class="ml-4 mt-5 font-weight-bold">사회봉사활동</h6><br>
		
		<table class="ml-4 mr-4 table border-secondary" style="width: 95%;">
		<tbody>
				<tr style="line-height: 1.0em;">
					<th class="text-center text-center align-middle">단체명</th>
					<th class="text-center text-center align-middle">기간</th>
					<th class="text-center text-center align-middle">설명</th>
				</tr>
				<c:forEach items="${activity }" var="activity">
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="text-center align-middle">${activity.aName }</td>
                  <td class="text-center align-middle">${activity.aStartDate } &nbsp ~ &nbsp ${activity.aEndDate }</td>
                  <td class="text-center align-middle">${activity.aContent }</td>
                </tr>
                </c:forEach>
		</tbody>
		</table>
		<h6 class="ml-4 mt-5 font-weight-bold">연수경험</h6><br>
		
		<table class="ml-4 mr-4 table border-secondary" style="width: 95%;">
		<tbody>
				<tr style="line-height: 1.0em;">
					<th class="text-center text-center align-middle">구분</th>
					<th class="text-center text-center align-middle">연수기관</th>
					<th class="text-center text-center align-middle">기간</th>
					<th class="text-center text-center align-middle">설명</th>
				</tr>
				<c:forEach items="${experience }" var="experience">
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="text-center align-middle">${experience.eOption }</td>
                  <td class="text-center align-middle">${experience.eOrgan }</td>
                  <td class="text-center align-middle">${experience.eStartDate } &nbsp ~ &nbsp ${experience.eEndDate }</td>
                  <td class="text-center align-middle">${experience.eContent }</td>
                </tr>
                </c:forEach>
		</tbody>
		</table>
		<h6 class="ml-4 mt-5 font-weight-bold">포트폴리오 첨부파일</h6><br>
		
		<table class="ml-4 mr-4 table border-secondary" style="width: 95%;">
		<tbody>
				<tr style="line-height: 1.0em;">
					<th class="text-center text-center align-middle">종류</th>
					<th class="text-center text-center align-middle">파일명</th>
					<th class="text-center text-center align-middle">등록수정일</th>
					<th class="text-center text-center align-middle">용량</th>
				</tr>
				<c:forEach items="${material }" var="material">
				<tr style="line-height: 0.8em; height:10px;">
                  <td class="text-center align-middle">${material.originName }</td>
                  <td class="text-center align-middle">${material.originName }</td>
                  <td class="text-center align-middle">${material.writedate }</td>
                  <td class="text-center align-middle">${material.filesize }</td>
                </tr>
                </c:forEach>
		</tbody>
		</table>
	
	</div>

	<div class="mt-5 container">
		<h4 class="ml-2 font-weight-bold">자기소개서</h4><hr class="ml-2 border-dark bg-dark" style="border: solid 1px;">
		
		<h6 class="mt-5 font-weight-bold">1. 성장과정 (자신에 대한 소개)</h6><br>		
		<textarea maxlength="500" style="width: 100%;resize: none; height:250px;" readonly>${introduce.content1 }</textarea>
		<h6 class="mt-5 font-weight-bold">2. 지원동기 및 포부</h6><br>		
		<textarea maxlength="500" style="width: 100%;resize: none; height:250px;" readonly>${introduce.content2 }</textarea>
		<h6 class="mt-5 font-weight-bold">3. 성격의 장단점</h6><br>		
		<textarea maxlength="500" style="width: 100%;resize: none; height:250px;" readonly>${introduce.content3 }</textarea>
		<h6 class="mt-5 font-weight-bold">4. 살아오면서 중요했던 일</h6><br>		
		<textarea maxlength="500" style="width: 100%;resize: none; height:250px;" readonly>${introduce.content4 }</textarea>
		<h6 class="mt-5 font-weight-bold">5. 보유기술 및 경험직무 (구체적으로 기술) </h6><br>		
		<textarea maxlength="500" style="width: 100%;resize: none; height:250px;" readonly>${introduce.content5 }</textarea>
		
	</div>	
	
	<div class="container">
	<div class="col-12 mt-5 p-0 d-flex justify-content-center">
   	  <button class="btn btn-primary font-weight-bold mr-4" style="width:80px; background-color: #376092" id="modalPass">합격</button>
   	  <button class="btn btn-danger font-weight-bold" style="width:80px;" id="modalFail">불합격</button>
   	</div>
   	<br><br><br>
	</div>
	
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
					html += '	<td class="text-center align-middle titleBtn" style="cursor:pointer">' + item.title + '</td>';
					html += '	<td class="text-center align-middle">' + item.task + '</td>';
					html += '	<td class="text-center align-middle">' + item.supportDate + '</td>';
					html += '	<td class="text-center align-middle">' + item.username + '</td>';
					html += '	<td class="text-center"><button type="button" class="btn btn-primary btn-sm modalBtn">포트폴리오</button></td>';
					html += '	<td class="text-center"><button type="button" class="btn btn-secondary btn-sm">' + item.status + '</button></td>';
					html += '</tr>';
					
				$('#supportTable tbody').append(html);
			});
			
		}
		portModal();
		titleModal();
	});
	
}

//페이징 버튼 클릭 시
$('.container .container').on("click", '.page-link', function() {
	var curPage = $(this).attr('data-curpage');
	supportList(curPage);	
});

function portModal() {
	// Get the modal
	var modal = document.getElementById('myModal');
	
	// Get the button that opens the modal
	var btn = document.getElementsByClassName("modalBtn");
	
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];     

	var btnClose = document.getElementById("btnClose");
	
	var btnOk = document.getElementById("btnOk");
	
	// When the user clicks on the button, open the modal 
	for(var i=0; i<btn.length; i++) {
		btn[i].onclick = function() {
		    modal.style.display = "block";
		}
	}
	
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	    modal.style.display = "none";
	}
	
	btnClose.onclick = function() {
	    modal.style.display = "none";
	}
	
	btnOk.onclick = function() {
	    modal.style.display = "none";
	}
	
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
}


function titleModal() {
	//Get the modal
	var modal = document.getElementById('checkModal');

	// Get the button that opens the modal
	var btn = document.getElementsByClassName("titleBtn");

	// Get the <span> element that closes the modal
	// var span = document.getElementsByClassName("closeCheck")[0];                                          

	var modalPass = document.getElementById("modalPass");
	var modalFail = document.getElementById("modalFail");

	// When the user clicks on the button, open the modal 
		for(var i=0; i<btn.length; i++) {
			btn[i].onclick = function() {
   		 modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	// span.onclick = function() {
	//     modal.style.display = "none";
	// }

	modalPass.onclick = function() {
	  modal.style.display = "none";
	}
	
	modalFail.onclick = function() {
  	  modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
    	if (event.target == modal) {
     	   modal.style.display = "none";
   				 }
			}
		}
	}

	
</script>

<%@ include file="../include/footer.jsp"%>