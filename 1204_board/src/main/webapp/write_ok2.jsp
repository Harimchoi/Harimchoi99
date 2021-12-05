<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  레코드 많이 만들기 -->
<!--//1. db연결 -->
<%@ include file="db.jsp" %> 
<%
//2. 폼태그에 입력된 값 읽어오기
String name = "작성자";//request.getParameter("name");  //폼 name
String title = "제목입니다.";//request.getParameter("title");
String content = "내용입니다.";//request.getParameter("content");
String pwd = "1234";//request.getParameter("pwd");


for(int i=1;i<=2575;i++){
	//3. 쿼리 생성
	String sql = "insert into board(name, title, content, pwd, writeday) ";
	sql += "values(?, ?, ?, ?, now())";
	
	//4. 심부름꾼 생성
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name+" " + i);
	pstmt.setString(2, title+" " + i);
	pstmt.setString(3, content);
	pstmt.setString(4, pwd);
	
	//5. 쿼리 실행
	pstmt.execute();
	//5-1.닫기
	pstmt.close();
}

//6. 닫기
conn.close();
//7. 이동
response.sendRedirect("list.jsp");
%>

