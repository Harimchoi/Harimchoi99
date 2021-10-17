<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08_menu.jsp</title>
<style>
	#main{
		padding:0px;
		margin:0px;
	}
	#main>li{
		display:inline-block;
		border:1px solid red;
		width:100px;
		height:30px;
		text-align:center;
		position:relative;
		padding-top:7px;
	}
	#main .sub{
		position:absolute;
		list-style-type:none;
		padding:0px; margin:0px;
		border:1px solid red;
		width : 98px;
		top:36px;
		visibility:hidden;
	}
</style>
<script>
	function view(n){
		document.getElementsByClassName("sub")[n].style.visibility="visible";
	}
	function hide(n){
		document.getElementsByClassName("sub")[n].style.visibility="hidden";
	}
</script>
</head>
<body>
<ul id="main">
	<li class="a" onmouseover="view(0)" onmouseout="hide(0)">수산물
		<ul class="sub">
			<li>참치연어</li>
			<li>멍게전복</li>
			<li>문어낙지</li>
			<li>감성돔회</li>
		</ul>
	</li>
	
	<li class="a" onmouseover="view(1)" onmouseout="hide(1)">농산물
		<ul class="sub">
			<li>참치연어</li>
			<li>멍게전복</li>
			<li>문어낙지</li>
			<li>감성돔회</li>
		</ul>
	</li>

	<li class="a" onmouseover="view(2)" onmouseout="hide(2)">축산물
		<ul class="sub">
			<li>참치연어</li>
			<li>멍게전복</li>
			<li>문어낙지</li>
			<li>감성돔회</li>
		</ul>
	</li>
</ul>
</body>
</html>