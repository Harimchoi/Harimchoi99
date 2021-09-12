<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>textarea.jsp</title>
</head>
<body>
<form action ="test_ok.jsp" method="get"><!--폼에 name이 있어야 jsp에서 작업가능 -->
	<textarea name="comment" rows="10" cols="50"></textarea>
	<input type="submit"/>
</form>

</body>
</html>