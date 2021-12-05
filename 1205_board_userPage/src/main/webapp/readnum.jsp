<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//조회수 증가시키고
%>
<!--//1. db연결 -->
<%@ include file="db.jsp" %> 
<%
//2.request된 id값 가져오기
String id = request.getParameter("id");
String len = request.getParameter("len");

	//조회수 증가시키기
	  //1.DB연결, 2.ID값가져오기, 3.쿼리 생성, 4.심부름꾼, 5쿼리실행, 6.닫기
	  String sql_read = "update board set readnum=readnum+1 where id=?";
	  PreparedStatement pstmt2 = conn.prepareStatement(sql_read);
	  pstmt2.setString(1, id);
	  pstmt2.executeUpdate();
	  pstmt2.close();
	  conn.close();


//이동
response.sendRedirect("content.jsp?id="+id+"&pager="+request.getParameter("pager")+"&len="+len);
%>