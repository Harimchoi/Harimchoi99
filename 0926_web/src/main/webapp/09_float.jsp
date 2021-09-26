<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>09_float.jsp</title>
<style>
	div{
		width:60px;
		height:20px;
		background:lightblue;
		font-size:14px;
		border:1px solid red
	}
	#bb,#dd1{
		float:left;
	}
	#cc,#dd2{
		float:right;
	}
	
</style>
</head>
<body>
<h1>float</h1>
<h2>속성없음</h2>
<div id="aa">한국음식</div>
<div id="aa">중국음식</div>
<div id="aa">일본음식</div>
<hr/>

<h2>float:left</h2>
<div id="bb">한국음식</div>
<div id="bb">중국음식</div>
<div id="bb">일본음식</div>
<div style ="clear:both">태국음식</div>
<div>태국음식</div>
<div>태국음식</div>
<div>태국음식</div>
<div>태국음식</div>
<div>태국음식</div>
<hr/>

<h2>float:right</h2>
<div id="cc">한국음식</div>
<div id="cc">중국음식</div>
<div id="cc">일본음식</div>
<hr/>

<h2>float:right, left</h2>
<div id="dd1">한국음식</div>
<div id="dd1">중국음식</div>
<div id="dd2">일본음식</div>
<div id="dd2">태국음식</div>
<div>태국음식</div>
<div>태국음식</div>
<div>태국음식</div>
<div>태국음식</div>
<div>태국음식</div>
<hr/>
</body>
</html>
