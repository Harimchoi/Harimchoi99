<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sung_list.jsp</title>
</head>
<body>

<table width="500" border="1">
<th colspan ="7"><input type="button" value ="글쓰기" onclick="location.href='sung_write.jsp'"></th>
	<tr>	
		<th>학번</th>
		<th>이름</th>
		<th>국어</th>
		<th>영어</th>
		<th>수학</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
	<% 
	//1.db연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db,"root","1111");
	
	//2.심부름꾼
	Statement stmt = conn.createStatement();
	
	String sql = "select * from student order by id desc";
	
	//3.쿼리 실행
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next()){
	%>
	<tr>
		<td><%=rs.getString("hakbun")%></td>
		<td><%=rs.getString("name")%></td>
		<td><%=rs.getString("kor")%></td>
		<td><%=rs.getString("eng")%></td>
		<td><%=rs.getString("mat")%></td>
		<td><a href="sung_update.jsp?id=<%=rs.getString("id")%>">수정</a></td>
		<td><a href="sung_delete.jsp?id=<%=rs.getString("id")%>">삭제</a></td>
	</tr>
	<%
	}
	%>
</table>
<%
//4.db닫기
	rs.close();
	stmt.close();
	conn.close();
%>
</body>
</html>