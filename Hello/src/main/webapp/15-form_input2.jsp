<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>15-form_input2.jsp</title>
</head>
<body>
<form action="input_ok.jsp" method = "post">
<h2>좋아하는 과일</h2>
	<input type = "checkbox" name="fruit" value="apple">Apple
	<input type = "checkbox" name="fruit" value="apple">banana
	<input type = "checkbox" name="fruit" value="apple">orange
<br/>
<h2>지역</h2>
	<input type = "radio" name="juso" value="1" checked>서울
	<input type = "radio" name="juso" value="2" >인천
	<input type = "radio" name="juso" value="3" >부산
	<input type = "radio" name="juso" value="4" >대구
		<input type = "radio" name="juso2" value="5" >안산
	<input type = "radio" name="juso2" value="6" >성남
	<p/>
	<input type ="submit"/>
	
</form>

</body>
</html>