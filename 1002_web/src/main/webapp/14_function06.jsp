<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14_function06.jsp</title>
<script> //지역변수와 전역변수
	var num = 100; //전역변수 : script안 어디에서든 사용가능
	
	function imsi1(){
		alert(num);
		end()
	}
	function imsi2(){
		num=200;
		alert(num);
		end();
	}
	function imsi3(){
		var num=300; //지역변수 : imsi3()에서만 사용되는 지역변수
		alert(num);
		end();
	}
	function end(){
		alert(num);
	}
	
</script>
</head>
<body>
<button onClick="imsi1()">imsi1()</button>
<button onClick="imsi2()">imsi2()</button>
<button onClick="imsi3()">imsi3()</button>
</body>
</html>