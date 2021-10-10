<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10_setTimeoutEx.jsp</title>
<style>
	#lys{
		background:red;
		width:50px;
		height:50px;
		position : absolute;
		left:100px;
		top:100px;
	}
</style>
<script>
	var lef = 100;
	function move(){
		lef++;
		document.all.lys.style.left = lef+"px";
		
		if(lef<400) //left가 400이 될때까지
			setTimeout(move,10); //재귀함수
	}
</script>
</head>
<body>
<input type="button" onclick="move()" value="이동">
<div id="lys"></div>
</body>
</html>