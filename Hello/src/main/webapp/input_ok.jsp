<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>input_ok.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
%>
이름 : <%=name %><p/>
비번 : <%=pwd %><p/>

</body>
</html>