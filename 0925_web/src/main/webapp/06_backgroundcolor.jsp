<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_backgroundcolor.jsp</title>
<style>
	div{
		width:500px;
		height:500px;
	}
	#aa1{
		background-color:#ffaabb; /*block태그. inLine태그에는 모두 사용가능*/
	}
</style>


</head>
<body>
<h1>css에서 배경색을 넣는 방법</h1>
<h2 style="color:red">background-color:값;</h2>

<div id="aa1">안녕하세요!!<p/>
	학교종이 땡땡땡<p/>
	선생님이 우리를...
</div>
<span id="bb1">블럭태그가 아닌 태그</span>
<a href="#" id="bb1">링크태그</a>

</body>
</html>