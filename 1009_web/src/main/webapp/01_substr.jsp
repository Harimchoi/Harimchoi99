<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_substr.jsp</title>
<style>
	body{
		font-family:"돋움";
		font-size:"20pt";
		word-spacing:25px;
	}
</style>
<script>
	function check(){
		var str="My name is YOUNG";
		var sss=str.substr(2,6);
		alert(sss);
	}
	function check2(){
		var phone ="010-1234-5678";
		var ff = phone.substr(4,4);
		alert(ff);
	}
</script>
</head>
<body>
	<h1>substr(인덱스번호, 길이) => 문자 자르기: (2,6)-> 2에서 6개문자</h1>
	My name is YOUNG(2,6)<br/>
	010-1234-5678(4,4)<br/>
	<input type ="button" onClick="check()" value="클릭1">
	<input type ="button" onClick="check2()" value="클릭2">
</body>
</html>