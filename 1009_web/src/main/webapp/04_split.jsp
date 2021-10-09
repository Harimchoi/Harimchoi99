<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_split.jsp</title>
<script>
	function check(){
		var str="홍길동/배트맨/슈퍼맨/원더우먼";
		var name=str.split("/");
		alert(name[0]);
		alert(name[1]);
		alert(name[2]);
		alert(name[3]);
	} 
	function check2(){
		
		var phone= document.lys.phone.value;
		var pho = phone.split("-");
		document.lys.p1.value = pho[0];
		document.lys.p2.value = pho[1];
		document.lys.p3.value = pho[2];
	}
</script>
</head>
<body>
<h1>split("구분자")->구분자를 이용하여 내용 자르기(배열로 변환)</h1>
</body>

<form name="lys">
	<input type="button" onClick="check()" value="클릭1"><p>
	핸드폰번호<input type="text" name="phone"> ex)010-1234-5678<p>
	<input type="button" onClick="check2()" value="나누기"><p>
	<input type="text" name="p1" size="4">
	<input type="text" name="p2" size="4">
	<input type="text" name="p3" size="4">
</form>
</html>