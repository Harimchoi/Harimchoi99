<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/jspdb";
	Connection conn = DriverManager.getConnection(db, "root", "1111");
	
	Statement stmt = conn.createStatement(); //심부름꾼:쿼리문을 실행시켜주는 역할.
	
	String sql = "Create table score(" +
				 "num int auto_increment primary key, "+
				 "name varchar(20), "+
				 "kor int, " +
				 "eng int, " +
				 "math int);";
				 
	stmt.executeUpdate(sql);
	
	out.println("테이블 생성 성공!");
	
	stmt.close(); //습관적으로...
	conn.close();
%>
<%-- 04_db_table_create --%>