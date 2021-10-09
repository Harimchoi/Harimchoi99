<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10_Date.jsp</title>
<script>
	function check1(){
		var today = new Date(); //컴퓨터 시스템 시간
		document.getElementById("ymd").innerText=today; //전체 날짜와 시간
		var y = today.getFullYear();
		var m = today.getMonth()+1; //getMonth는 0~11까지
		var d = today.getDate();
		document.getElementById("ymd1").innerText = y+"년"+m+"월"+d+"일";
	
		document.getElementById("yo").innerText = today.getDay();
		switch(today.getDay()){
		case 1 : yo = "월요일";break;
		case 2 : yo = "화요일";break;
		case 3 : yo = "수요일";break;
		case 4 : yo = "목요일";break;
		case 5 : yo = "금요일";break;
		case 6 : yo = "토요일";break;
		case 7 : yo = "일요일";break;
		}
		document.getElementById("yo1").innerText=yo;
		
		var h = today.getHours();
		var m = today.getMinutes();
		var s = today.getSeconds();
		document.getElementById("hms").innerText=h+"시"+m+"분"+s+"초";
		
		document.getElementById("time").innerText = today.getTime();
	}
</script>
</head>
<body>
년월일 : 
<input type="button" value="년월일" onclick="check1()"/><span id="ymd"></span><p/>
년월일 : <span id="ymd1"></span><p/>
요일: <span id="yo"></span><span id="yo1"></span><p/>
시분초 : <span id="hms"></span>
1970-01-01부터 지금까지의 밀리초: <span id="time"></span>
</body>
</html>