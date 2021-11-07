
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- update_ok.jsp -->

<%
	//1.db연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/jspdb"; //jspdb차는 데이터베이스에 연결
	Connection conn = DriverManager.getConnection(db, "root", "1111");
	
	//select
	 //2.심부름꾼, 3.쿼리실행
	 String sql_select = "select pwd from member where id = "+request.getParameter("id");
	 Statement stmt = conn.createStatement();
	 ResultSet rs = stmt.executeQuery(sql_select);
	 rs.next();
	 
	 //out.println(rs.getString("pwd")); //글을 작성했을때 테이블에 저장한 비밀번호
	 String pwd_db = rs.getString("pwd");
	 
	//2.심부름꾼
	String pwd = request.getParameter("pwd");
	if(pwd_db.equals(pwd)){	

	
	String sql = "update member set name=?, phone=?, juso=?, age=?, pay=? where id=?";
	
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String juso = request.getParameter("juso");
	int pay = Integer.parseInt(request.getParameter("pay"));
	int age = Integer.parseInt(request.getParameter("age"));
	int id = Integer.parseInt(request.getParameter("id"));

	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, phone);
	pstmt.setString(3, juso);
	pstmt.setInt(4, age);
	pstmt.setInt(5, pay);
	pstmt.setInt(6, id);
	
	
	
	
	/*
	pstmt.setString(1, request.getParameter("name"));
	pstmt.setString(2, request.getParameter("phone"));
	pstmt.setString(3, request.getParameter("juso"));
	pstmt.setString(4, request.getParameter("age"));
	pstmt.setString(5, request.getParameter("pay"));
	pstmt.setString(6, request.getParameter("id"));
	*/
	//3.쿼리실행
	pstmt.executeUpdate();
	//닫기
	pstmt.close();
	}
	else{
		%>
		<script>
		alert("비밀번호 오류");
		history.back();
		</script>
<%
	}
	//4.닫기
	
	conn.close();
	response.sendRedirect("select.jsp");
%>