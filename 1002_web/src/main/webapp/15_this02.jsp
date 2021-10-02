<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>15_this02.jsp</title>
<script>
	 function test(my){
		 alert(my);
	 }
	 function test2(my){
		 alert(my.value);
	 }
	 var a = 100;
	 function imsi(){
		 var a = 200;//지역
		 alert(this.a);//전역
		 alert(a);//지역
	 }
</script>
</head>
<body>
	<input type="text" value="하하하" onClick="test(this.value)"/><p/>
	<input type="text" value="호호호" onClick="test2(this)"/><p/>
	<input type="button" onClick="imsi()" value="클릭"/><p/>
</body>
</html>