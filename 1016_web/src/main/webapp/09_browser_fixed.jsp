<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>09_browser_fixed.jsp</title>
<style>
	body{
		margin:0px;
		padding:0px;
	}
	div{
		width:1000px;
		margin:auto; //브라우저의 가운데 정렬
	}
	#aa1, #aa2, #aa9{
		background: #abcdef;
		height:100px;
	}
	#aa2, #aa8, #aa10{
		background: pink;
		height:300px;
	}
	#aa4, #aa6{
		background: darkgreen;
		height:400px;
	}
	#aa5, #aa7{
		background: silver;
		height:500px;
	}
	#fix{
		position:fixed;
		left:1000px;
		top:400px;
		width:70px;
		height:200px;
		background:blue;
		margin:auto;
	}
</style>
<script>
	function move(){
		var w = innerWidth; //브라우저 가로 크기
		alert(w);
		if(w>1000){
			w=w-1000;
			w=w/2;
			document.getElementById("fix").style.left=(1000+w)+"px";
		}
	}
	window.onresize=move;
</script>
</head>
<body onload="move()">
<div id="aa1"></div>
<div id="aa2"></div>
<div id="aa3"></div>
<div id="aa4"></div>
<div id="aa5"></div>
<div id="aa6"></div>
<div id="aa7"></div>
<div id="aa8"></div>
<div id="aa9"></div>
<div id="aa10"></div>

<div id="fix">고정된레이어</div>
</body>
</html>