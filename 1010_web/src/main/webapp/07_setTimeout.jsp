<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_setTimeout.jsp</title>
<script>
	function start(){
		setTimeout(change,2000); //1000은 1초, 1은 1/1000초
	}
	function change(){
		alert("2초뒤에 실행됩니다.");
		location.href="http://daum.net";
	}
	function start2(){
		alert("start2()함수가 실행되었습니다.");
		setTimeout(start2,2000); //재귀함수 : 자기 자신의 함수를 호출하는 것, 계속 반복적으로 실행시킬 수 있다.
	}
	function start3(){
		setTimeout(function(){
			alert("1초뒤에 실행됩니다.");
		},2000);
	}
</script>
</head>
<body onload="start()">
<h1>setTimeout(함수명, 시간) => 시간(1/1000초)뒤에 함수가 실행된다.(1번만 실행)</h1>

<input type="button" onclick="start()" value="클릭1">
<input type="button" onclick="start2()" value="클릭2">
<input type="button" onclick="start3()" value="클릭3">
</body>
</html>