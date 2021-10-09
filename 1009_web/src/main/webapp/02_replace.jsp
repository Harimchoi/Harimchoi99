<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_replace.jsp</title>
<script>
	function check(){
		var str = "HTML Javasscript CSS JAVA";
		var sss = str.replace("JAVA","JSP"); //앞에서부터 처음 찾는 문자열만 대체됨
		alert(sss);
	}
	function check2(){
		var str="HTML Javascript CSS JAVA HTML Javasscript CSS JAVA";
		var sss = str.replace(/JAVA/g, "JSP"); //정규식을 쓰게되면 전체에 적용
		alert(sss);
	}
</script>
</head>
<body>
<h1>replace("찾을 문자열", "대체문자열")=>문자 바꾸기</h1>

<input type="button" onClick="check()" value="클릭1"/>
<input type="button" onClick="check2()" value="클릭2"/>
</body>
</html>