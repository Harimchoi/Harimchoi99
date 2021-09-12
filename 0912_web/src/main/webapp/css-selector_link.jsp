<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css-selector_link.jsp</title>
<style>
	a:link{ /*a태그로 링크된곳*/
		color:blue;
		text-decoration:underline;}
	a:visited{/*방문했던 링크*/
		color:red;}
	a:hover{/*마우스를 오버하는 순간*/
		text-decoration:none;}
	a:active{/*링크된곳에 마우스를 누르는 순간*/
		background-color:yellow;}
	div.d1{
		border:1px dashed red;
		width:400px;
		padding:5px;
	}
	div.d1:hover{
		background-color:yellow;
	}
	div.d2{
		border:1px dashed green;
		width:400px;
		padding:5px;
	}
	div.d2:hover{
		background-color:green;
	}
</style>
</head>
<body>
	<h2>가상 선택자</h2>
	<p><a href="http://www.w3.org" target="_blank">W3C방문</a>
	 : 마우스 이벤트에 따라 링크의 변화를 잘 보세요></p>
	 <div class="d1">
	 	<h3>가상클래스 1영역</h3>
	 	마우스 위치에 따른 박스의 스타일 변화를 보세요
	 </div>
	 <div class="d2">
	 	<h3>가상클래스 2영역</h3>
	 	마우스 위치에 따른 박스의 스타일 변화를 보세요
	 </div>
</body>
</html>