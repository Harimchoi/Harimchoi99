<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_margin.jsp</title>
<style>
	div{
		width:300px;
		height:300px;
		background:red;
		border:5px solid blue;
	}
	#aa1{
		width:100px;
		height:100px;
		background:green;
		font-size:16px;
		font-weight:900;
		border:none;
		margin:10px 20px; /*10px 20px 30px 40px*/
		border:1px solid purple;
	}
</style>
</head>
<body>
<h1>margin : 바깥여백</h1>

<div>
	<div id="aa1" style="float:left">전체</div>
	<div id="aa1" style="float:left">a</div>
	<div id="aa1" style="float:left">b</div>
</div>
</body>
</html>