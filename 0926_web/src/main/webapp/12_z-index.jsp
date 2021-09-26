<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12_z-index.jsp</title>
<style>
	div{
		width:300px;
		height:300px;
		background:lightgray;
		border:1px solid green;
		font-size:50px;
	}
	
	#aa1{
		position:absolute;
		left:100px;
		top:100px;
		background:fuchsia;
		z-index:1;
	}
	#aa2{
		position:absolute;
		left:130px;
		top:130px;
		background:maroon;
		z-index:2;
	}
	#aa3{
		position:absolute;
		left:190px;
		top:190px;
		background:aqua;
		z-index:3;
	}
	#aa4{
		position:relative;
		left:190px;
		top:190px;
		background:lime;
		z-index:4;
	}
</style>
</head>
<body>
<h1>z-index, position</h1>
<h2 style="color:red">z-index는 레이어가 3개 이상 겹치는 상황에서 필요<br/>
	z-index값이 높이로 위로 나타난다.</h2>
	
	<div id="aa1">aa1</div>
	<div id="aa2">aa2</div>
	<div id="aa3">aa3</div>
	<div id="aa4">aa4</div>
	<div id="aa5">aa5</div>
</body>
</html>