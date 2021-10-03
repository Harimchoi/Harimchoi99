<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14_mousemove.jsp</title>
<style>
	body{
		padding:0;
		margin:0;
	}
	#aa{
		position:absolute;
		left:200px;
		width:200px;
		height:200px;
		background:lightgray;
	}
	
</style>
<script>
	function move(){
		var x = event.clientX;
		var y = event.clientY;
		
		document.getElementById("xy").innerText="X: "+x+"|| Y : "+y;
		
		document.getElementbtById("aa").style.left=x+15+"px";
		document.getElementById("aa").style.top=y+15+"px";
	}
	document.onmousemove=move;
</script>
</head>
<body>
<div id="aa">하하</div>
<div id="xy"></div>
</body>
</html>