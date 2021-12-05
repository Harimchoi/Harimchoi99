<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--//1. db연결 -->
<%@ include file="db.jsp" %> 
<%
//2. 폼태그에 입력된 값 읽어오기
String name = request.getParameter("name");  //폼 name
String title = request.getParameter("title");
String content = request.getParameter("content");
String pwd = request.getParameter("pwd");
String len = request.getParameter("len");

//3. 쿼리 생성
String sql = "insert into board(name, title, content, pwd, writeday) ";
sql += "values(?, ?, ?, ?, now())";

//4. 심부름꾼 생성
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, name);
pstmt.setString(2, title);
pstmt.setString(3, content);
pstmt.setString(4, pwd);

//5. 쿼리 실행
pstmt.execute();
//6. 닫기
pstmt.close();
conn.close();
//7. 이동
response.sendRedirect("list.jsp?len="+len);
%>

