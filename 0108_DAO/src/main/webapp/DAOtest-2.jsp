<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="sunny.DAO2" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DAOtest-2.jsp</title>
</head>
<body>
<%
	DAO2 dao = new DAO2();
%>
<%=dao.test() %>
<%--=name--%><br>
<%--=age--%><br>
<%--=hap--%><br>
</body>
</html>