<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>15_scroll.jsp</title>
<style>
	#str{
		position:absolute;
		left:300px;
		top:100px;
		background:red;
		width:100px;
		height:22px;
		color:white;
	}
</style>
<script>
	function scroll_move(){
		var lys = document.getElementById("str");
		 lys.style.top = 100+document.documentElement.scrollTop+"px";
		
		document.all.xy.innerText=document.documentElement.scrollTop;
	}
	document.onscroll=scroll_move;
</script>
</head>
<body>
<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a
<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a
<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a
<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a<p>a

<div id="str">안녕!!!<span id="xy"></span></div>
</body>
</html>