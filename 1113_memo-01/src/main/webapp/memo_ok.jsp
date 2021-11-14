
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<!-- memo_ok.jsp -->

<%
//1.db연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/second";
	Connection conn = DriverManager.getConnection(db,"root","1111");

	
	
	//쿼리문 작성 :값을 저장하기 위한 폼의 값 request하기
	String sql = "insert into memo(name, content, pwd, writeday)";
	sql += "values(?, ?, ? ,now())";
	
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	
	//2.심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,name);
	pstmt.setString(2,content);
	pstmt.setString(3,pwd);


	//3.쿼리 실행
	pstmt.execute();

	//4.닫기
	pstmt.close();
	conn.close();
	
	//이동
	response.sendRedirect("memo.jsp");
	
%>