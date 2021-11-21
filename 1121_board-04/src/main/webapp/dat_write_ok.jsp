
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!-- dat_wirte_ok.jsp -->

<%
//1.db연결
Class.forName("org.mariadb.jdbc.Driver");
String db = "jdbc:mariadb://localhost:3306/my";
Connection conn = DriverManager.getConnection(db,"root","1111");

//2.폼 값 가져오기
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String content = request.getParameter("content");
String pwd = request.getParameter("pwd");
String board_id = request.getParameter("board_id");

//3.sql 생성
String sql = "insert into dat(name,content,pwd,writeday, board_id)";
sql += "values(?,?,?,now(),?)";

//4.심부름꾼
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, name);
pstmt.setString(2, content);
pstmt.setString(3, pwd);
pstmt.setString(4, board_id);
//5.sql실행
pstmt.executeUpdate();
//6.닫기
pstmt.close();
conn.close();
//7.이동
response.sendRedirect("content.jsp?id="+board_id);
%>