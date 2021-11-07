<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sung_write.jsp</title>
<style>
	table{
		width:300px;
		text-align: center;
	}
</style>
</head>
<body>
<form action = "sung_write_ok.jsp" method="get">
<table>
	<tr>
		<th>학번</th>
		<td><input type="text" name="hakbun" value="2018261066"></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="name" value="최하림"></td>
	</tr>
	<tr>
		<th>국어</th>
		<td><input type="text" name="kor" value="100"></td>
	</tr>
	<tr>
		<th>영어</th>
		<td><input type="text" name="eng" value="97"></td>
	</tr>
	<tr>
		<th>수학</th>
		<td><input type="text" name="mat" value="100"></td>
	</tr>
	<tr>
		<th colspan="2"><input type="submit" value ="입력하기"></th>
	</tr>
</table>

</form>
</body>
</html>