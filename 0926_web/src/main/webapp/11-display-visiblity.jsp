<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11-display-visiblity.jsp</title>
<style>
	li{border:1px solid darkred}
	.aa{display:none;}
	.bb{visibility:hidden;}

</style>
</head>
<body>
<h1>visibility와 display의 차이점</h1>

<h2>display:none으로 처리했을경우 영역자체가 없어짐</h2>

<ul>
	<li>홍길동</li>
	<li>슈퍼맨</li>
	<li>베트맨</li>
	<li class="aa">런닝맨</li>
	<li>슈가맨</li>
</ul>

<h2>visiblity:hidden으로 처리했을경우 영역은 존재하고 내용만 사라짐</h2>

<ul>
	<li>홍길동</li>
	<li>슈퍼맨</li>
	<li>베트맨</li>
	<li class="bb">런닝맨</li>
	<li>슈가맨</li>
</ul>


</body>
</html>