<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_rollover-04.jsp</title>
<style>
li{
		list-style-type:none;
		float:left;
		width:512px;
		
	}
</style>
<script>

	var img1=["a1.jpg", "a2.jpg", "a3.jpg"];
	var img2=["a4.jpg", "a5.jpg", "a6.jpg"];
	
	function aaa(pp,n){
		pp.src=img2[n];
	}
	function bbb(pp,n){
		pp.src=img1[n];
	}
	
</script>
</head>
<body>
<ul>
	<li><img src="a1.jpg" width="513" height="318" onmouseover="aaa(this,0)" onmouseout="bbb(this,0)"></li>
	<li><img src="a2.jpg" width="513" height="318" onmouseover="aaa(this,1)" onmouseout="bbb(this,1)"></li>
	<li><img src="a3.jpg" width="513" height="318" onmouseover="aaa(this,2)" onmouseout="bbb(this,2)"></li>
	
</ul>
</body>
</html>