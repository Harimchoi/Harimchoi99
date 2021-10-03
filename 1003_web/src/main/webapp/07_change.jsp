<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_change.jsp</title>
<script>
	function check(){
		alert("값이 바뀌었네요");
	}
	function move(juso){
		location.href=juso;
	}
	function imsi(){
		alert("값이 바뀌었네요")
	}
</script>
</head>
<body>
	<select onchange="check()">
		<option>우동</option>
		<option>짬뽕</option>
		<option>탕수육</option>
	</select>

	<select onchange="move(this.value)">
		<option value="http://www.daum.net">다음</option>
		<option value="http://www.google.com">구글</option>
		<option value="http://www.coupang.com">쿠팡</option>
		<option value="01_click.jsp">click.jsp</option>
	</select>
	
	
	<input type="text" value="신촌역" onchange="imsi()"/>
</body>
</html>