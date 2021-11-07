<%@page import="java.sql.*"%>
<%@page import="sun.tools.jconsole.ConnectDialog"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sung_update.jsp</title>
</head>
<body>
<%
	//1. db연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db,"root","1111");
	
	//2.심부름꾼 연결
	String id = request.getParameter("id");
	String sql = "select * from student where id="+request.getParameter("id");
	Statement stmt = conn.createStatement();
	
	//3.쿼리 실행
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
%>
<form action = "sung_update_ok.jsp" method="get">
<table>
	<tr>
		<th>학번</th>
		<td><%=rs.getString("hakbun")%></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="name" value="<%=rs.getString("name")%>"></td>
	</tr>
	<tr>
		<th>국어</th>
		<td><input type="text" name="kor" value="<%=rs.getString("kor")%>"> </td>
	</tr>
	<tr>
		<th>영어</th>
		<td><input type="text" name="eng" value="<%=rs.getString("eng")%>"></td>
	</tr>
	<tr>
		<th>수학</th>
		<td><input type="text" name="mat" value="<%=rs.getString("mat")%>"></td>
	</tr>
	<tr>
		<td><input type="hidden" name="id" value="<%=rs.getString("id")%>"></td>
		<th colspan="2"><input type="submit" value="수정"></th>
	</tr>
</table>
</form>
<%
	//4.닫기
	rs.close();
	stmt.close();
	conn.close();
%>
</body>
</html>