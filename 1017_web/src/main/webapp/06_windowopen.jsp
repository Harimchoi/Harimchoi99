<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_windowopen.jsp</title>
<script>
	function wopen(){
		window.open("07_son.jsp","","width=400, height=200");
	}
</script>
</head>
<body>
<form name="pform">
	우편번호<input type="text" name="name" readonly>
	<input type ="button" value="우편번호 찾기" onClick="wopen()">
	
</form>

</body>
</html>