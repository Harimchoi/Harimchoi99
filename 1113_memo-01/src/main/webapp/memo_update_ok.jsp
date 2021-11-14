<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- memo_update_ok.jsp -->

<%
//수정하기

//1.db연결
Class.forName("org.mariadb.jdbc.Driver");
String db = "jdbc:mariadb://localhost:3306/second";
Connection conn = DriverManager.getConnection(db,"root","1111");

//만약에 비밀번호가 맞다면 수정, 그렇지 않다면 chk = 1주고 memo.jsp로 이동


String pwd = request.getParameter("pwd"); //수정하려고 할 때 작성했던 비밀번호가 맞다면 
String sql_pwd = "select pwd from memo where id ="+request.getParameter("id");


//2.심부름꾼 , pwd를 비교하기 위한 select, pwd가 맞다면 수정하기 위한 update
Statement stmt = conn.createStatement();

//3.쿼리 실행
ResultSet rs = stmt.executeQuery(sql_pwd);
rs.next();
String pwd_db=rs.getString("pwd");

//비밀번호비교
if(pwd_db.equals(pwd)){
	//수정
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	String sql = "update memo set name=?, content=? where id=?";
	//3-1. 심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,name);
	pstmt.setString(2,content);
	pstmt.setString(3,id);
	//3-2. 쿼리 실행
	pstmt.executeUpdate();
	//3-3. 심부름꾼 닫기
	pstmt.close();
	response.sendRedirect("memo.jsp");
}
else{
	response.sendRedirect("memo.jsp?chk=1");
}

//4.닫기
rs.close();
stmt.close();
conn.close();
%>