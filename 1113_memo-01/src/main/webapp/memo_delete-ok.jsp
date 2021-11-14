<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- memo_delete_ok.jsp -->

<%
//1.db연결
Class.forName("org.mariadb.jdbc.Driver");
String db = "jdbc:mariadb://localhost:3306/second";
Connection conn = DriverManager.getConnection(db,"root","1111"); 

//2.sql문 실행


String pwd = request.getParameter("pwd"); //폼의 비밀번호
String id = request.getParameter("id");
//2-1 삭제하기 전에, 비밀번호가 맞는지 확인하는 sql문
String sql_pwd = "select pwd from memo where id ="+id;
String sql = "delete from memo where id="+id;
//2-2 select 심부름꾼
Statement stmt = conn.createStatement();
//2-3 쿼리실행
ResultSet rs = stmt.executeQuery(sql_pwd);
rs.next();
//2-4 비밀번호 비교
String pwd_db = rs.getString("pwd");
if(pwd.equals(pwd_db)){
	sql = "delete from memo where id="+id;

//3.심부름꾼
	//위에 선언되어 있음
//4.쿼리 실행
stmt.executeUpdate(sql);


//이동
response.sendRedirect("memo.jsp");
}
else{
	//비밀번호가 맞지 않았을 때 이동
	response.sendRedirect("memo.jsp?chk=1");
}
//5.닫기
stmt.close();
conn.close();
%>









