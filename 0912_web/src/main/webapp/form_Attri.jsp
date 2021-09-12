<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form_Attri.jsp</title>
</head>
<body>
<form action="test_ok.jsp" method="post">
	<p>쓰기 가능 : <input type="text" name="name" size="20" placeholder="이름을 입력하세요" autofocus></p>
	<p>읽기 전용 : <input type="text" name="name" size="20" readonly></p>
	<p>사용 안함 : <input type="text" name="name" size="20" disabled></p>
	<p>자동 완성 : <input type="text" name="name" size="20" autocomplete="on"></p>
	<input type="submit"/>
</form>
</body>
</html>