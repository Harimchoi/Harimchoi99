<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05_keypress.jsp</title>
<script>
	function input(){
		alert()
	}
	function check(){
		alert(event.keyCode); //아스키 코드값 확인 가능
	}
	
</script>
</head>
<body>
	<h1>keypress => 키 값이 눌러졌을때<</h1>
	키를 누르면 함수 호출<input type="text" onkeypress="input()"/><p/>
	키를 누르면 함수 호출<input type="text" onkeypress="check()"/><p/>
	
</body>
</html>