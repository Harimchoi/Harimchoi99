<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03-toUpperCase.jsp</title>
<script>
	function check(){
		var str="HTML Javascript CSS java html Javascript CSS JAVA";
		var sss = str.toUpperCase(); // 모두 대문자로
		alert(sss);
	}
	function check2(){
		var str="HTML Javascript CSS java html Javascript CSS JAVA";
		var sss = str.toLowerCase();//모두 소문자로
		alert(sss);
	}
</script>
</head>
<body>
<h1>toUpeerCase => 대문자로 변환<p/>
	toLowerCaw => 소문자로 변환
</h1>
<input type="button" onClick="check()" value="클릭1"/>
<input type="button" onClick="check2()" value="클릭2"/>
</body>
</html>