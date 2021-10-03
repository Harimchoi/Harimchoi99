<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>18_lastindexOf.jsp</title>
<script>
	function check(){
		var str ="I am just a poor boy though my story's seldom told";
		alert("앞에서 검색한 m문자의 인덱스 번호:"+str.lastIndexOf("m"));
	}
</script>
</head>
<body>
<h1>lastIndexOf()=>찾는 문자열을 뒤에서부터 검색(인덱스 번호를 넘겨준다.)</h1>
<h1>I am just a poor boy though my story's seldom told</h1>
<h2>인덱스 값은 왼쪽에서부터 0부터 카운터</h2>

<h2>찾는 값이 없을 경우는 -1을 반환</h2>

<input type="button" onClick="check()" value="클릭"/>
</body>
</html>