<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- readnum.jsp -->


<%
//1.db연결
Class.forName("org.mariadb.jdbc.Driver");
String db = "jdbc:mariadb://localhost:3306/my";
Connection conn = DriverManager.getConnection(db,"root","1111");
	
	
	
	
//2.request된 id값 가져오기
String id = request.getParameter("id");

	//조회수 증가시키기
		//1.db연결, 2.id 값 가져오기, 3.쿼리실행, 4.심부름꾼, 5.쿼리실행, 6.닫기
		String sql_read = "update student set readnum=readnum+1 where id=?";
		PreparedStatement pstmt2 = conn.prepareStatement(sql_read);
		pstmt2.setString(1, id);
		pstmt2.executeUpdate();
		pstmt2.close();
	

//이동
response.sendRedirect("content.jsp?id="+id);
%>