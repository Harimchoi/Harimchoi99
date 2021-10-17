<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_son.jsp</title>
<script>
	function move(){
		opener.document.pform.name.value=document.sform.zip.value;
	}
</script>
</head>
<body>
<form name="sform">
	우편번호<input type="text" name="zip">
	<input type="button" onClick="move()" value="확인하기">
</form>
</body>
</html>