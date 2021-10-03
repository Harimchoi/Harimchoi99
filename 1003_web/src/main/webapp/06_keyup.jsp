<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_keyup.jsp</title>
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
	<h1>keyup => 키를 눌렀다가 뗄때<</h1>
	키를 누르면 함수 호출<input type="text" onkeyup="input()"/><p/>
	키를 누르면 함수 호출<input type="text" onkeyup="check()"/><p/>
	
</body>
</html>