<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>    
<%
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/jspdb";
	Connection conn = DriverManager.getConnection(db, "root", "1111");
	Statement stmt = conn.createStatement();
	
	String[][] score={
			{"홍길동", "50", "60", "70"},
			{"이순신", "65", "75", "85"},
			{"강감찬", "60", "80", "70"}
	};
	
	for(int i=0;i<score.length;i++){
/* 		String sql = "insert into score(name, kor, eng, math) " +
		"values('"+score[i][0]+"', '"+score[i][1]+"', '"+score[i][2]+"', '"+score[i][3]+"');"; */
		String sql = "insert into score(name, kor, eng, math) ";
		sql += "values('"+score[i][0]+"', '" ; 
		sql += score[i][1]+"', '";
		sql += score[i][2]+"', '";
		sql += score[i][3]+"');";
		
		stmt.execute(sql); //executeUpdate() :  create table, select 
		                   //execute() : insert, update, delete
		out.println("쿼리 실행 성공 " + sql + "<br>");
	}

stmt.close();
conn.close();

response.sendRedirect("07_select.jsp");
%>

<a href="07_select.jsp">내용보기</a>