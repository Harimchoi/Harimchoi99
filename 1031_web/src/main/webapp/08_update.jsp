<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08_update.jsp</title>
</head>
<body>

<%
	//1. DB연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/jspdb";
	Connection conn = DriverManager.getConnection(db,"root","1111");
	
	//2.심부름꾼
	Statement stmt = conn.createStatement();
	
	String num = request.getParameter("num");
	
	String sql = "update score set name='이순신', kor='100', eng='100', math='100' ";
	sql +="where num="+num;
	
	out.println(sql);
	out.println("<br>업데이트성공");
	stmt.execute(sql); //쿼리 실행
	
	//3.커넥션닫기
	stmt.close();
	conn.close();
	
	response.sendRedirect("07_select.jsp");
%>
</body>
</html>