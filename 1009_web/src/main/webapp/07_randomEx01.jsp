<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_randomEx01.jsp</title>
<script>
	function check1(){
		var num = document.getElementById("num").value;
		
		var rnum = Math.random();
		//alert(rnum);
		document.getElementById("rnum1").innerText=rnum;
		rnum=(rnum*num);
		document.getElementById("rnum2").innerText=rnum;
		rnum+=1; //1에서부터 입력값까지
		document.getElementById("rnum4").innerText=rnum; 
		rnum = parseInt(rnum);
		document.getElementById("rnum3").innerText=rnum;
		
		//document.폼이름.양식이름.value
	}
</script>
</head>
<body>
숫자 입력
<input type="text" id="num" size="6"><p>
<input type="button" onclick="check1()" value="랜덤값"><p>

임의의 값 : <span id="rnum1"></span><p>
1~입력값까지의 임의의 값 : <span id="rnum2"></span><p>
1~입력값까지의 임의의 값 +1: <span id="rnum4"></span><p>
입력값에서 소수점 버림 : <span id="rnum3"></span><p>
</body>
</html>