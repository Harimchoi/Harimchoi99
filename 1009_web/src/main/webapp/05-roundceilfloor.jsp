<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05-roundceilfloor.jsp</title>
<script>
	function check1(){
		var num = document.lys.num.value;
		var num=Math.round(num);
		alert(num);
	}
	function check2(){
		var num = document.lys.num.value;
		var num=Math.ceil(num);
		alert(num);
	}
	function check3(){
		var num = document.lys.num.value;
		var num=Math.floor(num);
		alert(num);
	}
</script>
</head>
<body>
<h1>Math.round =>반올림하고,<p/>
	Math.ceil() => 올림<p/>
	Math.floor() => 내림<p/>
</h1>
<form name="lys">
	숫자를 입력하세요(소수점이 있는 숫자)
	<input type="text" name="num"><p>
	<input type ="button" onClick="check1()" value="round"/>
	<input type ="button" onClick="check2()" value="ceil"/>
	<input type ="button" onClick="check3()" value="floor"/>
	
</form>
</body>
</html>