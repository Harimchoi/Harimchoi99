<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메가 IT 글쓰기 : write.jsp</title>
</head>
<body>
<form method = "get" action="write_ok.jsp">
<table>
	<tr>
		<td>작성자</td> 
		<td><input type="text" name="name" maxlength="10" value="최하림"></td>
	<tr>
	<tr>
		<td>제목</td> 
		<td><input type="text" name="title" size="40" maxlength="200" value="제목입니다."><td>
	</tr>
	<tr>
		<td>내용</td> 
		<td><textarea rows="4" cols="40" name="content">내용입니다.</textarea><td>
	</tr>
	<tr>
		<td>비번</td> 
		<td><input type="password" name="pwd" maxlength="15" value="1111"><td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="submit" value="작성하기">
		<input type="reset" value="취소하기">
		</td>
	</tr>
	
</table>
</form>
</body>
</html>