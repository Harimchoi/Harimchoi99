<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14_history.jsp</title>
<script>
	function back(){
		histroy.back(); //뒤로가기
	}
	function forward(){
		histroy.forward(); //앞으로가기
	}
</script>
</head>
<body>
<button onClick="back()">뒤로</button>
<button onClick="forward()">앞으로</button>
</body>
</html>