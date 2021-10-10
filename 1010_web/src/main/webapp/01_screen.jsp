<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_screen.jsp</title>
<script>
	function hor1(){
		document.getElementById("hor1").innerText = screen.width;
	}
	function ver1(){
		document.getElementById("ver1").innerText = screen.height;
	}
	function hor2(){
		document.getElementById("hor2").innerText = screen.availWidth;
	}
	function ver2(){
		document.getElementById("ver2").innerText = screen.availHeight;
	}
	function hor3(){
		document.getElementById("hor3").innerText = window.innerWidth;
	}
	function ver3(){
		document.getElementById("ver3").innerText = window.innerHeight;
	}
	function hor4(){
		document.getElementById("hor4").innerText = document.documentElement.clientWidth;
	}
	function ver4(){
		document.getElementById("ver4").innerText = document.documentElement.clientHeight;
	}
	function hor5(){
		document.getElementById("hor5").innerText = document.body.clientWidth;
	}
	function ver5(){
		document.getElementById("ver5").innerText = document.body.clientHeight;
	}
</script>
</head>
<body>
<button onclick="hor1()">모니터 가로</button><span id="hor1"></span><p>
<button onclick="ver1()">모니터 세로</button><span id="ver1"></span><p>
<button onclick="hor2()">사용 가능 가로</button><span id="hor2"></span><p>
<button onclick="ver2()">사용 가능 세로</button><span id="ver2"></span><p>
<button onclick="hor3()">브라우저 가로</button><span id="hor3"></span><p>
<button onclick="ver3()">브라우저 세로</button><span id="ver3"></span><p>
<button onclick="hor4()">브라우저 가로2</button><span id="hor4"></span><p>
<button onclick="ver4()">브라우저 세로2</button><span id="ver4"></span><p>
<button onclick="hor5()">브라우저 내부 가로</button><span id="hor5"></span><p>
<button onclick="ver5()">브라우저 내부 세로</button><span id="ver5"></span><p>
</body>
</html>