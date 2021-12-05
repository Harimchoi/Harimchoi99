<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--//1. db연결 -->
<%@ include file="db.jsp" %> 
<%
//2.폼 값 가져오기
request.setCharacterEncoding("utf-8");
String id = request.getParameter("board_id");
String name = request.getParameter("name");
String content=request.getParameter("content");
String pwd=request.getParameter("pwd");
String pager=request.getParameter("pager");
//3.sql생성
String sql = "insert into dat(name, content, pwd, writeday, board_id) ";
sql += "values(?, ?, ?, now(), ?)";
//4.심부름꾼
PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1, name);
pstmt.setString(2, content);
pstmt.setString(3, pwd);
pstmt.setString(4, id);
//5.sql실행
pstmt.executeUpdate();
//6.닫기
pstmt.close();
conn.close();
//7.이동
response.sendRedirect("content.jsp?id="+id+"&pager="+pager);
%>