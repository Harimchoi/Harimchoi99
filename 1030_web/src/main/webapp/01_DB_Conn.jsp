<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>  
 
<meta charset="UTF-8">
<% 
 	Class.forName("org.mariadb.jdbc.Driver"); 
	String db = "jdbc:mariadb://localhost:3306/";
	Connection conn = DriverManager.getConnection(db, "root", "1111");//db연결
	
	out.println("DB연결 성공");
%>
<%--  01_DB_Conn.jsp --%>
