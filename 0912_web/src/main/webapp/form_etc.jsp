<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form_etc.jsp</title>
</head>
<body>
<form>
	<input type="number" name="age" value="10" min="1" max="120" step="2"/>
	<input type="range" name="num" value="10" min="1" max="120" step="2"/>
	<input type="date" name="birth" value="2021-09-12" />
	<input type="color" name="bg" value="#ff0000" />
	
	<input type="hidden" name="pwd" value="123456"/>
	<input type="submit"/>
	
</form>
</body>
</html>