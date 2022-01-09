<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_el2.jsp</title>
</head>
<body>
<%
	pageContext.setAttribute("name","홍길동");
	request.setAttribute("age", 24);
	session.setAttribute("phone", "010-1234-1223");
	application.setAttribute("juso", "신촌");
%>

*EL 표현식<p>

이름 : ${name} <p>
나이 : ${age}<p>
전화 : ${phone}<p>
주소 : ${juso}<p>
</body>
</html>