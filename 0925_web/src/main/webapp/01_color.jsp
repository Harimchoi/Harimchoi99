<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_color.jsp</title>

<style>
	div{
		font-size:30px;
	}
	#aa2{
		color:blue;
	}
	#aa3{
		color:rgb(222,60,250);
	}
	#aa4{
		color:#ab12dd;
	}
	#aa5{
		color:rgba(222,60,250,0.5); /*10진수 rgb값에 투명값 0~1까지의 숫자, 소수표현*/
	}
	#aa6{
		color:hsl(360,100%,50%);
	}
	#aa7{
		color:hsla(360,100%,50%,0.7);
	}

</style>

</head>
<body>
<h1>색상</h1>
<h2>사용법: color:값</h2>
<div id="aa2">안녕하세요 => color:blue;</div>
<div id="aa3">안녕하세요 => color:rgb(222,60,250);</div>
<div id="aa4">안녕하세요 => color:#ab12dd;</div>
<div id="aa5">안녕하세요 => color:rgba(222,60,250,0.5);</div>
<div id="aa6">안녕하세요 => color:hsl(360,100%,50%);</div>
<div id="aa7">안녕하세요 => color:hsla(360,100%,50%,0.7);</div>

</body>
</html>