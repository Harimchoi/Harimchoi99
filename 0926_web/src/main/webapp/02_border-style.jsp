<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_border-style.jsp</title>
<style>
	div{
		width:400px; 
		height:30px;
		margin-top:5px;
	}
	#dotted{border-style:dotted}
	#dashed{border-style:dashed}
	#solid{border-style:solid}
	#double{border-style:double}
	#groove{border-style:groove}
	#ridge{border-style:ridge}
	#inset{border-style:inset}
	#outset{border-style:outset}
	#none{border-style:none}
	#hidden{border-style:hidden}
	#mix{border-style:dotted dashed solid double;}
</style>
</head>
<body>

<h1>외곽선종류 border-style:값
	<br/>브라우저에 따라 표현이 안될 수도 있음</h1>
	
<div id="dotted">border-style:dotted</div>
<div id="dashed">border-style:dashed</div>
<div id="solid">border-style:solid</div>
<div id="double">border-style:double</div>
<div id="groove">border-style:groove</div>
<div id="ridge">border-style:ridge</div>
<div id="inset">border-style:inset</div>
<div id="outset">border-style:outset</div>
<div id="none">border-style:none</div>
<div id="hidden">border-style:hidden</div>
<div id="mix">border-style:mix</div>
</body>
</html>