<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_rollover-02.jsp</title>
<style>
	li{
		list-style-type:none;
		float:left;
		width:512px;
		height:318px;
	}
	#aa{
		background-image:url("a1.jpg");
		background-size:512px;
	}
	#aa:hover{
		background-image:url("a2.jpg");
	}
	#bb{
		background-image:url("a3.jpg");
		background-size:512px;
	}
	#bb:hover{
		background-image:url("a4.jpg");
	}
	#cc{
		background-image:url("a5.jpg");
		background-size:512px;
	}
	#cc:hover{
		background-image:url("a6.jpg");
	}
	/*
	#dd{
		background-image:url("a7.jpg");
		background-size:512px;
	}
	#dd:hover{
		background-image:url("a8.jpg");
	}
	*/
</style>
</head>
<body>
<ul>
	<li id="aa"></li>
	<li id="bb"></li>
	<li id="cc"></li>
	<!-- <li id="dd"></li> -->
	
</ul>
</body>
</html>