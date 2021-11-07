<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- sung_update_ok.jsp -->

<%
	//1.db연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db,"root","1111");
	
	//2.심부름꾼
	String id = request.getParameter("id");
	//String sql_select = "select * from student where id="+request.getParameter("id");
	//Statement stmt = conn.createStatement();
	
	//3.쿼리 실행
	//ResultSet rs = stmt.executeQuery(sql_select);
	
	String sql = "update student set name=?, kor=?, eng=?, mat=? where id="+id;
	
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int mat = Integer.parseInt(request.getParameter("mat"));
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	

	pstmt.setString(1, request.getParameter("name"));
	pstmt.setInt(2, Integer.parseInt(request.getParameter("kor")));
	pstmt.setInt(3, Integer.parseInt(request.getParameter("eng")));
	pstmt.setInt(4, Integer.parseInt(request.getParameter("mat")));
	
	pstmt.executeUpdate();
	//닫기
	pstmt.close();
	conn.close();
	//이동
	response.sendRedirect("sung_list.jsp");
	
%>