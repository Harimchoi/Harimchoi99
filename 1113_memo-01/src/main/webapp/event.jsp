<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event.jsp</title>
<style>
	#lys{
		width:150px;
		height:30px;
		border:1px solid red;
		position:absolute;
		left:-150px;
	}
	
</style>
<script>
	function view(){
		var x = event.clientX;
		var y = event.clientY;
		document.getElementById("lys").style.left = x+"px";
		document.getElementById("lys").style.top = y+"px";
	}
	document.onclick = view;
</script>
</head>
<body>
<div id ="lys"><input type="password" size="5"><input type="submit"></div>
</body>
</html>