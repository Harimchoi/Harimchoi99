<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10_txt_scroll.jsp</title>
<style>
	#main{
		width:250px;
		height:35px;
		font-size:32px;
		/*overflow:hidden;*/
		position:relative;
		background:black;
		color:yellow;
	}
	#sub{
		position: absolute;
		top:0px;
		width:250px;
		height:300px;
	}
</style>
<script>
	h=0;
	function move(){
		h--;
		document.getElementById("sub").style.marginTop=h+"px";
		
		if(h<=-400){
			document.getElementById("sub").style.marginTop=0+"px";
			h=0;
		}
		
		setTimeout(move,30);
	}
</script>
</head>
<body>
<body onload = "move()">
<div id="main">
	<div id="sub">
		<div>&nbsp;</div>
		<div>짜장면 : 4,000원</div>
		<div>짬뽕 : 4,000원</div>
		<div>탕수육 : 4,000원</div>
		<div>라조기 : 4,000원</div>
		<div>팔보채 : 4,000원</div>
		<div>유린기 : 4,000원</div>
		<div>전가복 : 4,000원</div>
		<div>돈까스 : 4,000원</div>
	</div>
</div>
</body>
</html>