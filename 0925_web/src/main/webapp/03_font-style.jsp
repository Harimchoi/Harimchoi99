<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_font-style.jsp</title>
<style>
div{font-size:25px;}
#aa2{font-style:italic;}
#bb1{font-weight:500;}
#bb2{font-weight:lighter;}
#bb3{font-weight:600;}
#bb4{font-weight:bold;}
#bb5{font-weight:bolder;}
#bb6{font-weight:900;}
</style>

</head>
<body>
<h1>폰트 기울이기</h1>
<h2 style="color:red">사용법=>font-style:값</h2>
<div>font-style:normal; =><span id ="aa1">안녕하세요</span></div>
<div>font-style:italic; =><span id ="aa1">안녕하세요</span></div>


<h1>폰트 두께</h1>
<h2 style ="color:red">사용법=>font-weight:값;<br/>일반폰트는 굵은것 얇은것 두가지</h2>

<div>font-weight:500;=><span id="bb1">안녕하세요 hello</span></div>
<div>font-weight:lighter;=><span id="bb2">안녕하세요 hello</span></div>
<div>font-weight:600;=><span id="bb3">안녕하세요 hello</span></div>
<div>font-weight:bold;=><span id="bb4">안녕하세요 hello</span></div>
<div>font-weight:bolder;=><span id="bb5">안녕하세요 hello</span></div>
<div>font-weight:900;=><span id="bb6">안녕하세요 hello</span></div>


</body>
</html>