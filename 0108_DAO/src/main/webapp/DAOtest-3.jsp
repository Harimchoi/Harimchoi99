<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="sunny.DAO3" %>
    <%@page import="sunny.DTO3" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DAOtest-3.jsp</title>
</head>
<body>
<%
	DAO3 dao = new DAO3(); //DAO : Data Access Object
	DTO3 dto = dao.test(); //DTO : Data Transfef Object
%>
<%=dto.getName() %>
<%=dto.getAge() %>
<%=dto.getHap() %>
<%--=dao.test() --%>
<%--=name--%><br>
<%--=age--%><br>
<%--=hap--%><br>
</body>
</html>