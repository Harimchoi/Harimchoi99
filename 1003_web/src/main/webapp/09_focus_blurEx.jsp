<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>09_focus_blurEx.jsp</title>
<script>
	function id_in(my){
		if(my.value=="아이디")
			my.value="";
	}
	function id_out(my){
		if(my.value=="")
			my.value="아이디";
	}
	function pwd_in(my){
		my.value="";
		my.type="password";
	}
	function pwd_out(my){
		if(my.value.trim().length==0){
			my.value="비밀번호";
			my.type="text";
		}
	}
</script>
</head>
<body>
<form action="test.jsp" method="get">
	아이디<input type="text" value="아이디" onfocus="id_in(this)" onblur="id_out(this)"/><p/>
	비밀번호<input type="password" value="비밀번호" onfocus="pwd_in(this)" onblur="pwd_out(this)"/><p/>
</form>
</body>
</html>