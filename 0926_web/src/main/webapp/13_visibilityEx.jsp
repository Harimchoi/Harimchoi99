<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13_visibilityEx.jsp</title>
<style>
	#gongi1{
		position:absolute;
		left:200px;
		top:100px;
		width:300px;
		height:250px;
		background:pink;
	}
</style>
<script>
	function hide(n){
		if(n==0)
			gongi1.style.visibility="hidden";
	}
</script>
</head>
<body>

<h1>광고 레이어 만들기</h1>

<div id="gongi1">
	<h2>광고내용</h2>
	<p align="center">1월특가</p>
	<p align="center">1월특가</p>
	<p align="center">1월특가</p>
	<p align="right"><button onClick="hide(0)">X닫기</button></p>
</div>

</body>
</html>