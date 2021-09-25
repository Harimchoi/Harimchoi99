<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08_test-align.jsp</title>

<style>
	div{
		width:400px;
		background-color:yellow;
		border:1px solid black;
	}
	#aa1{
		text-align:center;
	}
	#aa2{
		text-align:left;
	}
	#aa3{
		text-align:right;
	}
	#aa4{
		text-align:justify;
	}
</style>

</head>
<body>
<h1>글자정렬 text-align</h1>
<h2 style="color:red">center,left,right,justify</h2>

<h3>text-align:center</h3>
<div id="aa1">우리가 자주 걸었던 이 길거리에 만약 우리 마주치면 그냥 모른척해줘요</div>

<h3>text-align:left</h3>
<div id="aa2">우리가 자주 걸었던 이 길거리에 만약 우리 마주치면 그냥 모른척해줘요</div>

<h3>text-align:right</h3>
<div id="aa3">우리가 자주 걸었던 이 길거리에 만약 우리 마주치면 그냥 모른척해줘요</div>

<h3>text-align:justify</h3>
<div id="aa4">우리가 자주 걸었던 이 길거리에 만약 우리 마주치면 그냥 모른척해줘요</div>

<h3>text-align:주지 않았을 때는 왼쪽정렬</h3>
<div id="aa5">우리가 자주 걸었던 이 길거리에 만약 우리 마주치면 그냥 모른척해줘요</div>
</body>
</html>