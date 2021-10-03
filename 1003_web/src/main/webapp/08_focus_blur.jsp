<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08_focus_blur.jsp</title>
<script>
	function input(ok){
		//alert("커서가 들어왔습니다.")
		ok.value="";
	}
	function output(ok){
		alert("포커스가 나갔습니다.");
		if(ok.value==""){
			alert("내용이 비었습니다.")
		}
		//ok.focus();
	}
</script>
</head>
<body>
<input type ="text" onfocus="input(this)" value="이름을 입력하세요">
<input type ="text" onblur="output()" value="포커스가 나갔을때"/>
</body>
</html>