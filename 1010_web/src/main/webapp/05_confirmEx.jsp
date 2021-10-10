<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05_confirmEx.jsp</title>
<script>
	function imsi(){
		var answer = confirm("아침을 드셨나요?");
		document.getElementById("ans").innerText = answer;
	}
	function imsi2(){
		var answer = confirm("전송하시겠습니까?");
		if(answer==true){
			answer = "네";
		}
		else
			answer = "아니오";
		document.getElementById("ans2").innerText = answer;
	}
</script>
</head>
<body>
<button onClick="imsi()">첫번째 질문!!</button>
당신의 대답은 : <span id="ans"></span>입니다.
<button onClick="imsi2()">두번째 질문!!</button>
당신의 대답은 : <span id="ans2"></span>입니다.
</body>
</html>