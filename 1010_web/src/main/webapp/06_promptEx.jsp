<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_promptEx.jsp</title>
<script>
	function imsi(){
		var name = prompt("이름을 입력하세요", "최하림");
		document.getElementById("name").innerText = name;
		alert(name);
	}
</script>
</head>
<body>
<button onclick="imsi()">이름</button>
당신의 이름은 <span id="name"></span> 입니다.
</body>
</html>