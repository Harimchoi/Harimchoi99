<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_selector_class.jsp</title>
<!--클래스 선택자: 모든 태그는 클래스 속성으로 속성값을 자유롭게 줄 수 있음-->
<style>	/*스타일시트 주석은 이렇게 씀*/
	.cls1{
		color:blue; 
		background-color:yellow;
	}
	h3.cls1{
		color:navy;
		background-color:pink;
	}

</style>
</head>
<body>
<h1 class="cls1">cls1 입니다.</h1>
<p class="cls1">cls1 입니다.</p>
<h1 class="cls2">cls2 입니다.</h1>
<p class="cls2">cls2 입니다.</p>
<h3 class="cls1">Element+Class Selector</h3>
</body>
</html>