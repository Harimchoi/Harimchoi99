<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>09_setInterval.jsp</title>
<script>
	var wid=50;
	function start(){
		ss = setInterval(change, 50); //반복해서 0.05초마다 change함수를 호출 : 무한반복
	}
	function change(){
		wid++;
		document.getElementById("aa").style.width = wid+"px";
	}
	function stop(){
		clearInterval(ss); //실행을 중복해서 시켜도 clearInterval은 한번만 된다.
	}
</script>
</head>
<body>
<h1>setInterval(함수명, 시간) => 시간뒤에 함수를 실행(무한반복)</h1>
<input type="button" onClick="start()" value="클릭"><p>
<input type="button" onClick="stop()" value="중지"><p>
<img src="dp.jpg" width="50" id="aa"/>
</body>
</html>