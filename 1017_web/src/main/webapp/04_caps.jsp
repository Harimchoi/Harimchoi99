<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_caps.jsp</title>
<script>
	function check(){ //대문자 방지
		if(event.getModifierState("CapsLock")){
			document.getElementById("aa").innerText = "CAPS LOCK";
			return false;
		}
		else{
			document.getElementById("aa").innerText = "";
			return true;
		}
	}
</script>
</head>
<body>
<input type="text" onKeydown="return check()"><span id="aa"></span>
</body>
</html>