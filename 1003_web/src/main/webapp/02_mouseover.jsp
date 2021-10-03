<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_mouseover.jsp</title>
<script>
	function imsi(){
		alert("mouseover 이벤트에 의하여 함수가 호출")
	}
</script>
</head>
<body>
	<h1> mouseover => mouse 포인터가 특정영역에 올라갔을때</h1>
	<a onmouseover="imsi()">함수호출</a><p/>
	<span onmouseover="imsi()">함수호출</span><p/>
	<input type="button" onmouseover="imsi()" value="함수호출"/><p/>
	<img src="logo.png" width="100" onmouseover="imsi()"/>
	
</body>
</html>