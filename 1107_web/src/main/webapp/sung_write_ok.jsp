
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<!-- sung_write_ok.jsp -->
<% 
//1.db연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db,"root","1111");
	
//2.심부름꾼
	String sql = "insert into student(hakbun, name, kor, eng, mat) ";//마지막 띄어쓰기
	sql += "values(?, ?, ?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	
	
//3.쿼리실행
	pstmt.setString(1, request.getParameter("hakbun"));
	pstmt.setString(2, request.getParameter("name"));
	pstmt.setString(3, request.getParameter("kor"));
	pstmt.setString(4, request.getParameter("eng"));
	pstmt.setString(5, request.getParameter("mat"));

	pstmt.execute();
	out.println(sql);

//4.db닫기
	pstmt.close();

//5.이동
	response.sendRedirect("sung_list.jsp");


%>