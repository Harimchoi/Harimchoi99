<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>del.jsp</title>
</head>
<body>
<form action = "delete.jsp" method="get">
	<input type="hidden" name="id" value="<%=request.getParameter("id")%>">
	<input type="password" name="pwd" placeholder="비밀번호">
	<input type="submit" value="삭제">
</form>
</body>
</html>