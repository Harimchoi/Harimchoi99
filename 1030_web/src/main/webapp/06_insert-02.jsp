<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/jspdb";
	String sql =null;
	Connection conn = DriverManager.getConnection(db, "root", "1111");
	
	String[][] score={
			{"홍길동", "50", "60", "70"},
			{"이순신", "65", "75", "85"},
			{"강감찬", "60", "80", "70"}
	};
	
	for(int i =0;i<score.length;i++){
		sql = "insert into score(name, kor, eng, math) values(?, ?, ?, ?)";
		//심부름꾼 
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, score[i][0]);
		pstmt.setString(2, score[i][1]);
		pstmt.setString(3, score[i][2]);
		pstmt.setString(4, score[i][3]);
		
		
		pstmt.execute(); // select, create table
		out.println("쿼리 실행 성공 " + sql + "<br>");
		pstmt.close();	
	}
	conn.close();
%>    
<%-- 06_insert-02.jsp--%>