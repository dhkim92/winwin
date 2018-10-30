<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

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


</head>
<body>

<div class="modalCheck" id="checkModal">
<div class="modal-contentCheck">
	<h3 class="mt-3 font-weight-bold">지원서 미리보기</h3><hr style="border: solid 2px #376092;">
	<br>
	<h4 class="ml-2 font-weight-bold">개인사항</h4>
	<hr class="ml-2 border-dark bg-dark" style="border: solid 1px;">
	<h6 class="ml-4 mt-3 font-weight-bold">기본정보</h6>
	<br>
	<table class="ml-4 table table-bordered border-secondary">
	<tbody>
	<tr>
		<th style="width: 15% ;" class="text-center align-middle bg-secondary">성명<span style="color : red;">*</span></th>
		<td style="width: 40%">
		<span style="font-size: 10px ;">한글 </span><input style="border: none; width: 50px;" type="text" id="username" name="username" value="${member.username }" readonly/> / <span style="font-size: 10px ;">영어 </span>
			<input type="text" class="ml-1 mr-1" id="eName" name="eName"  value="Kim Young Eun" readonly/>
			<span style="font-size: 10px ;"> 예)Hong Gil Dong</span>
		</td>
		<th class="text-center align-middle bg-secondary">이메일<span style="color : red;">*</span></th>
		<td><input style="border: none; width: 300px; " id="userid" name="userId" type="text" value="${sessionScope.id }" readonly/></td>
	</tr>
	<tr>
		<th class="text-center align-middle bg-secondary" style="width: 5%" >생년월일<span style="color : red;">*</span></th>
		<td colspan="3">
			<input type="text" name="birth" id="birth"/>
			<span style="font-size: 10px ;">예)19900101</span>
		</td>
	</tr>
	<tr>
		<th class="text-center align-middle bg-secondary">주소<span style="color : red;">*</span></th>
		<td colspan="3">
			<table>
				<tr>
					<input type="text" style="width: 80px;" id="zipCode" name="zipCode" placeholder="우편번호" readonly onclick="Search()"/>
					<input type="button" class="ml-1 mr-1" onclick="Search()" value="우편번호 찾기" />
					<input type="text" style="width: 364px; " name="address" id="address" placeholder="주소는 자동입력됩니다" readonly>
				</tr>
				<tr>
					<input type="text" style="width: 550px ;" class="mt-1" name="addressDetail" id="addressDetail" placeholder="상세주소를 입력하세요"/>
				</tr>	
			</table>
		
		</td>
	</tr>
	<tr>
		<th class="text-center align-middle bg-secondary">긴급연락처<span style="color : red;">*</span></th>
		<td colspan="3">  		
			<select style="width: 100px; height: 27px" id="phoneNum1" name="phoneNum1">
				<option value="010">010</option>
				<option value="02">02</option>
				<option value="051">051</option>
				<option value="053">053</option>
				<option value="032">032</option>
				<option value="062">062</option>
				<option value="042">042</option>
				<option value="052">052</option>
				<option value="044">044</option>
				<option value="031">031</option>
				<option value="033">033</option>
				<option value="043">043</option>
				<option value="041">041</option>
				<option value="063">063</option>
				<option value="061">061</option>
				<option value="054">054</option>
				<option value="055">055</option>
				<option value="064">064</option>
			</select>
				-<input type="text" id="phoneNum2" name="phoneNum2" class="ml-1 mr-1 numberOnly" style="width: 100px ;" />-<input type="text" id="phoneNum3" name="phoneNum3" class="ml-1 mr-1 numberOnly" />
			<input type="hidden" id="phoneNum" name="phoneNum" />	
		</td>
	</tr>
	
	<tr>
		<th class="text-center align-middle bg-secondary">휴대전화<span style="color : red;">*</span></th>
		<td colspan="3"><input style="border: none; width: 200px; " type="text" id="phone" name="phone" value="${member.phone }" /></td>
	</tr>
	
	</tbody>
	</table>
</div>

</body>

<script type="text/javascript">

// Get the modal
var modal = document.getElementById('checkModal');

// Get the button that opens the modal
var btn = document.getElementById("Btn");

// Get the <span> element that closes the modal
// var span = document.getElementsByClassName("closeCheck")[0];                                          

// var btnUnivMClose = document.getElementById("btnUnivMClose");

// When the user clicks on the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
// span.onclick = function() {
//     modal.style.display = "none";
// }

// btnUnivMClose.onclick = function() {
//     modal.style.display = "none";
// }

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</html>