<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14_display-visibilityEx.jsp</title>
<style>
	li{
		list-style-type:none;
		width:70px;
		height:25px;
	}
	.menu{
		 background: darkblue;
		 color:white;
		 border:1px solid white;
	}
	#food{
		visibility:hidden;
	}
	
</style>
<script>
	var ch=-1;
	function view(n){
		for(i=0;i<9;i++){
			food[i].style.visibility="hidden";
		}
		if(ch!=n){
			for(i=n;i<n+3;i++){
				food[i].style.visibility="visible";
			}
		}
		ch=n;
	}
</script>
</head>
<body>
<h1>간단한 메뉴 만들기</h1>

<ul>
<li class="menu" onClick="view(0)">한국음식</li>
	<li id="food">비빔밥1</li>
	<li id="food">비빔밥2</li>
	<li id="food">비빔밥3</li>
<li class="menu" onClick="view(3)">중국음식</li>
	<li id="food">비빔밥1</li>
	<li id="food">비빔밥2</li>
	<li id="food">비빔밥3</li>
<li class="menu" onClick="view(6)">일본음식</li>
	<li id="food">비빔밥1</li>
	<li id="food">비빔밥2</li>
	<li id="food">비빔밥3</li>
</ul>
</body>
</html>