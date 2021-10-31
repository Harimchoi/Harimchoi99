<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>  
 
<meta charset="UTF-8">
<% 
 	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/"; //db url
	Connection conn=null;
	try{
		conn = DriverManager.getConnection(db, "root", "1111"); //(dburl, 계정명, 비밀번호)
		out.println("DB연결 성공");
	}
	catch(Exception e){
		out.println(e.toString());
	}
	finally{
		if(conn!=null)
			conn.close();
	}
%>
<%--  02_DB_Conn-ty.jsp --%>
