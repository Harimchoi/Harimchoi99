<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05_form-01.jsp</title>
</head>
<body>
	<form name="lys" method="post" action="aa.jsp">
	 이름<input type="text" name="name" required><p>
	 비번<input type="password" name="pwd" required="required"><p>
	 소개<textarea rows="5" cols="40"></textarea><p>
	 성별<input type="radio"	name="sung">남자
	    <input type="radio"	name="sung">여자<p>
	 취미<input type="checkbox" name="hobby">여행
	    <input type="checkbox" name="hobby">음악<p>
	 전화<select name=phone>
	 		<option>선택</option>
	 		<option>010</option>
	 		<option>011</option>
	 		<option>012</option>
	 	</select>
	 <input type="submit" value="전송">
	</form>
</body>
</html>