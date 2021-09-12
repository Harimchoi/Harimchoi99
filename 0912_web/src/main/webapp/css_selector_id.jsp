<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_selector_id.jsp</title><!--클래스는 . id는 #-->
<style>
	li{
		font-size:20px;
	}
	
	.aa{
		color:blue;
	}
	#aa{
		color:red;
	}
</style>
</head>
<body>
	<h1>id선택자와 class선택자는 동일한 이름이라도 틀리다.</h1>
	<ul>
		<li id="aa">홍길동</li>
		<li class="aa">슈퍼맨</li>
		<li id="bb">배트맨</li>
		<li class="aa">가가멜</li>
		<li id="cc">스머프</li>
		<li class="aa">런닝맨</li>
	</ul>
</body>
</html>