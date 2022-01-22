<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="sung_write_ok.jsp" method="get">
<table width="500" align="center">
	<tr>
	 	<td>학번</td>
	 	<td><input type="text" name="hakbun" value="12345678"></td>
	</tr>
	<tr>
	 	<td>이름</td>
	 	<td><input type="text" name="name" value="이영선"></td>
	</tr>
	<tr>
	 	<td>국어</td>
	 	<td><input type="text" name="kor" value="98"></td>
	</tr>
	<tr>
	 	<td>영어</td>
	 	<td><input type="text" name="eng" value="97"></td>
	</tr>
	<tr>
	 	<td>수학</td>
	 	<td><input type="text" name="mat" value="96"></td>
	</tr>
	<tr>
	 	<td colspan="2" align="center">
	 		<input type="submit" value="입력하기">
	 	</td>
	</tr>
</table>
</form>
</body>
</html>