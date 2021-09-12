<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select.jsp</title>
</head>
<body>
<form action="test_ok.jsp" method="get">
	<select name="fruit">
		<option value="apple">사과</option>
		<option value="banana" selected>바나나</option>
		<option value="orange">오렌지</option>
		<option>포도</option>
	</select>
	<input type="submit">
	
	취미<br/>
	<input type="checkbox" name="hobby" value="야구">야구 
	<input type="checkbox" name="hobby" value="축구" checked>축구 
	<input type="checkbox" name="hobby" value="농구">농구 
	
	<input type="submit"/>
	<input type="reset"/>
	
	<input type="image" src="flower.jpg" width="50"/>
	<input type="button" value="버튼"/>
	
	
	
	
	
	
</form>
</body>
</html>