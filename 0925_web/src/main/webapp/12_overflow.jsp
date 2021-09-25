<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12_overflow.jsp</title>

<style>
	div{
		width:100px;
		height:60px;
		border:1px solid blue;
	}
	#aa1{
		
	}
	#aa2{
		overflow:auto;
	}
	#aa3{
		overflow:scroll;
	}
	#aa4{
		overflow-x:hidden;
		overflow-y:scroll;
	}
	#aa5{
		overflow:hidden;
		
	}
</style>
</head>
<body>
<h1>overflow</h1>
<h2 style="color:red">박스의 크기를 100px 세로 60px로 세팅</h2>

<table width="900" border="1" cellspacing="0">
	<tr align="center" style="color:white; background:darkblue; font-size:20px;">
		<td>구분</td>
		<td>생략</td>
		<td>auto</td>
		<td>scroll</td>
		<td>overflow-x, overflow-y</td>
		<td>hidden</td>
	</tr>
	<tr align="center" height="200">
		<td>텍스트</td>
		<td><div id="aa1">우리가 자주 걸었던 이 길거리에 만약 우리 마주치면 그냥 모른척해줘요</div></td>
		<td><div id="aa2">우리가 자주 걸었던 이 길거리에 만약 우리 마주치면 그냥 모른척해줘요</div></td>
		<td><div id="aa3">우리가 자주 걸었던 이 길거리에 만약 우리 마주치면 그냥 모른척해줘요</div></td>
		<td><div id="aa4">우리가 자주 걸었던 이 길거리에 만약 우리 마주치면 그냥 모른척해줘요</div></td>
		<td><div id="aa5">우리가 자주 걸었던 이 길거리에 만약 우리 마주치면 그냥 모른척해줘요</div></td>
	</tr>
	
	<tr align="center" height="200">
		<td>그림</td>
		<td><div id="aa1"><img src="img/dp.jpg" width="80"/></div></td>
		<td><div id="aa2"><img src="img/dp.jpg"></div></td>
		<td><div id="aa3"><img src="img/dp.jpg"></div></td>
		<td><div id="aa4"><img src="img/dp.jpg"></div></td>
		<td><div id="aa5"><img src="img/dp.jpg"></div></td>
		
	</table>
</body>
</html>