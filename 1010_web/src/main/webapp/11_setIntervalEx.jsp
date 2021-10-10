<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11_setIntervalEx.jsp</title>
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
	//var ss;
	function move(){ //setInterval을 이용해서 left가 400이 될때까지 이동
		//ss = setInterval(change,10);
		ss = setInterval(function(){
			lef++;
			document.all.lys.style.left = lef+"px";
			if(lef>400)
				clearInterval(ss);
		},10)
	}
	/*
	function change(){
		lef++;
		document.all.lys.style.left = lef+"px";
		
		if(lef>400)
			clearInterval(ss);
	}
	*/
</script>
</head>
<body>
<input type="button" onclick="move()" value="이동">
<div id="lys"></div>
</body>
</html>