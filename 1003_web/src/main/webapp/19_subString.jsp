<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>19_subString.jsp</title>
<script>
	function check1(){
		var str = "My Name is ChanSu";
		var sss = str.substring(0,4);//0부터 4번째 전까지
		alert(sss);
	}
	function check2(){
		var phone="010-1234-5678";
		var ff = phone.substring(0,3);
		alert(ff);
	}
</script>
</head>
<body>
<h1>substring(인덱스번호, 인덱스번호)=>문자 자르기</h1>
<input type="button" onClick="check1()" value="클릭1"/>
<input type="button" onClick="check2()" value="클릭2"/>
</body>
</html>