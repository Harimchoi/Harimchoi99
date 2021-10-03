<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_keydown.jsp</title>
<script>
	function input(){
		alert()
	}
	function check(){
		alert(event.keyCode); //특수문자 및 모든 문자
	}
	
</script>
</head>
<body>
	<h1>keydown => 키 값이 눌러졌을때<</h1>
	키를 누르면 함수 호출<input type="text" onkeydown="input()"/><p/>
	키를 누르면 함수 호출<input type="text" onkeydown="check()"/><p/>
	
</body>
</html>