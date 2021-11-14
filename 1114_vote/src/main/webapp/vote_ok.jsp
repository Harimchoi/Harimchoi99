<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- vote_ok.jsp -->

<%
//1.db연결
Class.forName("org.mariadb.jdbc.Driver");
String db = "jdbc:mariadb://localhost:3306/second";
Connection conn = DriverManager.getConnection(db,"root","1111");

//2.request 값 있으면 받아오고
String jang = request.getParameter("jang"); //0,1,2,3

//3.쿼리 작성하기
String sql=null;
switch(jang){
case "0" : sql = "update vote set a1=a1+1 where id=1"; break; //레코드 미리 추가
case "1" : sql = "update vote set a2=a2+1 where id=1"; break;
case "2" : sql = "update vote set a3=a3+1 where id=1"; break;
case "3" : sql = "update vote set a4=a4+1 where id=1"; break;
default : response.sendRedirect("vote.jsp");
}
//4.심부름꾼 생성
Statement stmt = conn.createStatement();

//5.쿼리 실행
stmt.executeUpdate(sql);

//6.닫기
stmt.close();
conn.close();

//7.이동
response.sendRedirect("vote_view.jsp");
%>