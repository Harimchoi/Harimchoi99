<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- update_ok.jsp -->

<%
/*
1.db연결
2.request로 폼 값 받아오기
3.비밀번호 확인 : select, ResultSet
4.비밀번호가 맞다면 
  4-1. 수정 : update
  4-2. 되돌아가기
5.닫기
*/
//1.
Class.forName("org.mariadb.jdbc.Driver");
String db = "jdbc:mariadb://localhost:3306/my";
Connection conn = DriverManager.getConnection(db,"root","1111");

//2.
String id = request.getParameter("id");
String name = request.getParameter("name");
String title = request.getParameter("title");
String content = request.getParameter("content");
String pwd = request.getParameter("pwd");
//3.
//3-1. 쿼리생성
String sql_select = "select pwd from student where id=?";

//3-2.심부름꾼
PreparedStatement pstmt = conn.prepareStatement(sql_select);
pstmt.setString(1, id);

//3-3.쿼리실행
ResultSet rs = pstmt.executeQuery();
rs.next();

//4.
if(pwd.equals(rs.getString("pwd"))){
	//4-1.수정
	//4-1.1 쿼리생성
	String sql_update = "update student set name=?, title=?, content=? where id=?";
	//4-1.2 심부름꾼
	PreparedStatement pstmt2 = conn.prepareStatement(sql_update);
	pstmt2.setString(1, name);
	pstmt2.setString(2, title);
	pstmt2.setString(3, content);
	pstmt2.setString(4, id);
	//4-1.3 쿼리실행
	pstmt2.executeUpdate();
	pstmt2.close();//if문 안에서 열려서 여기서 닫음
	
	response.sendRedirect("content.jsp?id="+id);
}
else{
	//4-2.되돌아가기
	response.sendRedirect("update.jsp?chk=1&id="+id);
}
//5.
rs.close();
pstmt.close();
conn.close();
%>

















