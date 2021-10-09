<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08_randomEx02.jsp</title>
<script>
	function lotto1(){
		var lot = new Array(6);
		for(i=0;i<6;i++){
			lot[i] = parseInt(Math.random()*45)+1;
		}
		document.getElementById("lotto1").innerText = lot;
	}
</script>
</head>
<body>
로또 번호 발생 : 중복 발생
<input type ="button" onclick="lotto1()" value="로또 번호"><p>
<span id="lotto1"></span>
</body>
</html>