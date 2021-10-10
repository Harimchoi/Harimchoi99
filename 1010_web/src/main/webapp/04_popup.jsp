<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_popup.jsp</title>
<script>
	function alert_pop(){
		alert("경고창을 띄울때 사용합니다.");
	}
	function confirm_pop(){
		confirm("계속하려면 확인, 그만하려면 취소");
	}
	function prompt_pop(){
		prompt("숫자입력",0);
	}
</script>
</head>
<body>
<button onClick="alert_pop()">alert() : 경고창</button>
<button onClick="confirm_pop()">confirm(): 확인 or 취소</button>
<button onClick="prompt()">prompt() : 텍스트 입력</button>
</body>
</html>