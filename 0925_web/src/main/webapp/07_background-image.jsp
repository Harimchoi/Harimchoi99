<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_background-image.jsp</title>
<style>
	div{
		width:600px;
		height:600px;
		color:white;
		border:1px solid black;
	}
	#aa1{
		background-image:url("img/dp.jpg");
	}
	
	#bb1{
		background-image:url(img/dp.jpg);
		background-repeat:no-repeat; /*repeat, no-repeat, repeat-x, repeat-y*/
		background-size:100px;/*가로 100px이며 세로는 이미지 비율에 맞게 자동 조절*/
	}
	
	#bb2{
		background-image:url(img/dp.jpg);
		background-repeat:no-repeat;
		background-size:100%;
	}
	#bb3{
		background-image:url(img/dp.jpg);
		background-repeat:no-repeat;
		background-position:bottom; /*top, bottom, left, right, center*/
		background-size:100px 100px;/*가로 100px 세로 100px*/
	}
	#bb4{
		background-image:url(img/dp.jpg);
		background-repeat:no-repeat;
		background-size:100%;
	}
</style>

</head>
<body>
<!--  이미지 파일 확장자 : png, gif, jpg -->

<h1>CSS에서 배경 그림 넣는 방법</h1>
<h2 style="color:red">background-image:url("파일이름");</h2>

<div id="aa1">
	안녕하세요!!<p/>
	오늘 소개드릴 드라마는<p/>
	뭘까요?
</div>
<p/><br/>
<div id="bb1">background-size:100px;</div><br/>
<div id="bb2">background-size:100%;</div><br/>
<div id="bb3">background-size:100px 100px;</div><br/>
<div id="bb4">background-size:100% 100%;</div>

</body>
</html>