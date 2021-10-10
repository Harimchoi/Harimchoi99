<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_location1.jsp</title>
<script>
	function imsi(){
		alert(location.href);
		alert(location.pathname);
		alert(location.protocol);
		alert(location.hostname);
	}
</script>
</head>
<body>
<h1>
location.href<p>
location.pathname<p>
location.protocol<p>
location.hostname<p>
</h1>
<button onClick="imsi()">클릭</button>
</body>
</html>