<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_selector_attribute.jsp</title>
</head>
<style> /*선택자[속성=값] input[type], 선택자[속성|=값] : |= ~= *= ^= $=값 등등*/
	input[type=text]{
		background:blue
	}
	input[type=password]{
		background:yellow
	}
	input[type=reset]{
		background:green;
	}
	input[type=button]{
		background:red;
	}
	input[type$=t]{
	*/input type의 값중에 t로 끝나는 것
	}
	input[type]{
	color:white;
	}
	
</style>
<body>
<h1>속성 선택자(주로 form태그에서 많이 사용)</h1>
<h2>input 태그에서 type에 따라 많이 나뉘기 때문</h2>

<form>
	이름<input type="text"><p/>
	주소<input type="text"><p/>
	비번<input type="password"><p/>
	<input type="reset" value="취소">
	<input type="button" value="버튼">
	
</form>
</body>
</html>