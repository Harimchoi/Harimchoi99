<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_rollover-03.jsp</title>
<style>
li{
		list-style-type: none;
		float:left;
		width:100px;
		padding-left:50px;
		border:1px solid darkblue;
		border-radius:10px;
	}
</style>
<script>
	function aaa(pp){
		pp.style.background="darkblue";
		pp.style.color="white";
	}
	function bbb(pp){
		pp.style.background="white";
		pp.style.color="darkblue";
	}
</script>
</head>
<body>
<ul>
	<li onmouseover="aaa(this)" onmouseout="bbb(this)">수산물</li>
	<li onmouseover="aaa(this)" onmouseout="bbb(this)">농산물</li>
	<li onmouseover="aaa(this)" onmouseout="bbb(this)">공산품</li>
</ul>
</body>
</html>