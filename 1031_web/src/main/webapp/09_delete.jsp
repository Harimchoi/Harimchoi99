
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<title>09_delete.jsp</title>

<%
	String num = request.getParameter("num");

//1.DB연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/jspdb";
	Connection conn=DriverManager.getConnection(db,"root","1111");

//2. 심부름꾼 선언
	Statement stmt = conn.createStatement();

//3. 쿼리 실행
	stmt.execute("delete from score where num="+num);
//4. 닫기
	stmt.close();
	conn.close();
	
	response.sendRedirect("07_select.jsp");
%>

</html>