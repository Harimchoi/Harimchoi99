<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_selector_struct.jsp</title>
<style>
	h4:first-child{
		color:blue;
		font-size:20px;
	}
	h4:last-child{
		color:red;
		font-size:20px;
	}
	h4:nth-child(2n+1){
		background-color:green;
	}
	h4:nth-child(2n){
		background-color:yellow;
	}
</style>
</head>
<body>
<h4>웹 프로그래밍</h4>
<h4>웹 프로그래밍</h4>
<h4>웹 프로그래밍</h4>
<h4>웹 프로그래밍</h4>
<h4>웹 프로그래밍</h4>
<h4>웹 프로그래밍</h4>
<h4>웹 프로그래밍</h4>
<h4>웹 프로그래밍</h4>
<h4>웹 프로그래밍</h4>
<h4>웹 프로그래밍</h4>
<h4>웹 프로그래밍</h4>
</body>
</html>