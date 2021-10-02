<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10_function02.jsp</title>
<script>//함수 호출하는 방법 : 이벤트 핸들러를 이용하는 방법
	function test(){
	
	var kor = 70;
	var eng = 80;
	var mat = 90;
	var tot = kor+eng+mat;
	var avg = tot/3;
	
	alert("합계 :" +tot+"평균: "+avg);
}
</script>
</head>
<body>
	<a href="javascript:test()">함수 호출</a><p/>
	<button onClick="test()">함수 호출</button><p/>
	<div onClick="test()">함수 호출</div><p/>
	<b onClick="test()">함수 호출</b><p/>
</body>
</html>