<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>  
 
<meta charset="UTF-8">
<% 
 	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/"; //db url

	try(Connection conn = DriverManager.getConnection(db, "root", "1111");) 
	{
		out.println("DB연결 성공");
	}
	catch(Exception e){
		out.println(e.toString());
	}
	//java 7부터..
	//try()에 connection 이 try가 종료되면 close가 자동으로 실행된다.
%>
<%--  03_DB_Conn-ty2.jsp --%>
