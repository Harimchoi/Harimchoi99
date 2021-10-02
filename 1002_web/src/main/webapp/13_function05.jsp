<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13_function05.jsp</title>
<script> //리턴값 : 함수를 실행한 후 발생되는 값 전달
	function r_num(){
		var lot = parseInt(Math.random()*45)+1;
		
		return lot;
	}
	
	function lotto(){
		document.getElementById("lys").innerText=r_num();
	}
	
</script>
</head>
<body>
	<button onClick="lotto()">임의의 수 발생</button>
	1~45까지의 임의의 수 : <span id="lys"></span>
</body>
</html>