<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11_function03.jsp</title>
<script> //태그에 이벤트 핸들러를 사용하지 않는 방법
	window.onload=function(){
		//1. alert("하하");
		document.getElementById("aa").onclick=func1;
		  
		document.getElementById("bb").onclick=function(){
			alert("2번 버튼을 클릭했을 때 실행됩니다.");
		}
	}
function func1(){
	alert("1번 버튼을 클릭했을 때 실행됩니다.");
}
</script>
</head>
<body>
	<button id ="aa">1번</button>
	<button id ="bb">2번</button>
</body>
</html>