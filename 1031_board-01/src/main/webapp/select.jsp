
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select.jsp</title>
</head>
<body>
<a href="write.jsp">글쓰기</a>
<table width="500" border="1">
	<tr>
		<th>이름</th>
		<th>전화번호</th>
		<th>주소</th>
		<th>나이</th>
		<th>급여(원)</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
	<%
	//1.db연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/jspdb";
	Connection conn = DriverManager.getConnection(db,"root","1111");
	//2.심부름꾼
	Statement stmt = conn.createStatement();
	
	String sql = "select * from member order by id desc";
	
	//3.쿼리 실행
	ResultSet rs = stmt.executeQuery(sql);  //ResultSet으로 결과를 가져올때는 executeQuery사용
	while(rs.next()){
%>
	<tr>
		<td><%=rs.getString("name")%></td>
		<td><%=rs.getString("phone")%></td>
		<td><%=rs.getString("juso")%></td>
		<td><%=rs.getString("age")%></td>
		<td><%=rs.getString("pay")%></td>
		<td>수정</td>
		<td>삭제</td>
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