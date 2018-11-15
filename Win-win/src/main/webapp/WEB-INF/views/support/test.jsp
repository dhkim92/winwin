<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>










































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
			<tr style="line-height: 0.8em; height: 10px;">
					<td class="text-center align-middle" id = "lName"></td>
					<td class="text-center align-middle" id = "grade"></td>
					<td class="text-center align-middle" id = "testName"></td>
					<td class="text-center align-middle" id = "score"></td>
					<td class="text-center align-middle" id = "lDate"></td>
					<td class="text-center align-middle" id = "lOrgan"></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

<script>

</script>


















</body>
</html>