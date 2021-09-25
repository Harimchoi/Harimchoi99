<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>09_text-decoration.jsp</title>

<style>
	div{
	
		font-size:20px;
		height:50px;
	}
	#aa1{
		text-decoration : none;
	}
	#aa2{
		text-decoration : underline;
	}
	#aa3{
		text-decoration : line-through;
	}
	#aa4{
		text-decoration : overline;
	}

</style>

</head>
<body>
<h1>글자 장식</h1>

<div>text-decoration:none;<span id="aa1">▶ 안녕하세요! 하하하!!</span></div>
<div>text-decoration:underline;<span id="aa2">▶ 안녕하세요! 하하하!!</span></div>
<div>text-decoration:line-through;<span id="aa3">▶ 안녕하세요! 하하하!!</span></div>
<div>text-decoration:overline;<span id="aa4">▶ 안녕하세요! 하하하!!</span></div>

</body>
</html>