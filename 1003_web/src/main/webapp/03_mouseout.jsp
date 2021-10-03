<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_mouseout.jsp</title>
<script>
	function imsi(){
		alert("mouseout 이벤트에 의하여 함수가 호출")
	}
</script>
</head>
<body>
	<h1> mouseout => mouse 포인터가 특정영역에 올라갔다가 나갔을때</h1>
	<a onmouseout="imsi()">함수호출</a><p/>
	<span onmouseout="imsi()">함수호출</span><p/>
	<input type="button" onmouseout="imsi()" value="함수호출"/><p/>
	<img src="logo.png" width="100" onmouseout="imsi()"/>
	
</body>
</html>