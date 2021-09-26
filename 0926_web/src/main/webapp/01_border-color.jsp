<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_border-color.jsp</title>
<style>
	div{
		width:400px;
		height:30px;
		border-style:solid;
		margin-top:20px;
	}
	#borderColorRed{
		border-color:red;
	}
	#borderColorBlue{
		border-color:blue;
	}
	#borderColorMix{
		border-color:red yellow green;/*top(red) /left, right(yellow)/ bottom(green)*/
		/*border-color:red yellow;*/ /*top bottom (red) /left, right(yellow)*/
		/*border-color:red yellow green purple;  top에서부터 시계방향으로 1개의 매치*/
	}
	#borderColorGreen{
		border-color:green;
	}
</style>

</head>
<body>
<h1>외곽선 색상 : border-color:색상값</h1>

<div id="borderColorRed">border-color:red;</div>
<div id="borderColorBlue">border-color:blue;</div>
<div id="borderColorMix">border-color:red yellow green purple;</div>
<div id="borderColorGreen">border-color:green;</div>

</body>
</html>