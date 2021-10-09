<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_random01.jsp</title>
<script>
	function check(){
		alert(Math.random()); //0~1.0 사이의 랜덤 값 발생(0,1값은 발생x)
		
	}
</script>
</head>
<body>
<h1>Math.random() => 0~1.0 사이의 랜덤 값 발생(0,1값은 발생x) </h1>
<input type="button" onClick="check()" value="클릭"/>
</body>
</html>