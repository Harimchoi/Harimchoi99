<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_select.jsp</title>
<style>
	table{
		width:400px;
		text-align: center;
	}
	th{
		background-color: cyan;
	}
</style>
</head>
<body>
<a href="05_insert-01.jsp">내용넣기</a>
<table>
	<tr>
		<th>번호</th>
		<th>이름</th>
		<th>국어</th>
		<th>영어</th>
		<th>수학</th>
		<th>총점</th>
		<th>평균</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
<%
	//1. db연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/jspdb";
	Connection conn = DriverManager.getConnection(db, "root", "1111");

	//2. 심부름꾼
	Statement st = conn.createStatement();
	
	String sql = "select * from score order by num desc";
	
	//3. 쿼리 실행
	ResultSet rs = st.executeQuery(sql);// executeUpdate는 select, create
	//레코드형태로 모든 값을 가져온다.
	//out.println("성공");
	while(rs.next()){
	//out.println(rs.getString("num"));
	int sum=rs.getInt("kor")+rs.getInt("eng")+ rs.getInt("math");
	float avg = (float)sum/3;
%>
	
	<tr>
		<td><%=rs.getString("num")%></td>
		<td><%=rs.getString("name")%></td>
		<td><%=rs.getString("kor")%></td>
		<td><%=rs.getString("eng")%></td>
		<td><%=rs.getString("math")%></td>
		<td><%=sum %></td>
		<td><%=avg %></td>
		<td><a href="08_update.jsp?num=<%=rs.getString("num")%>">수정</a></td>
		<td><a href="09_delete.jsp?num=<%=rs.getString("num")%>">삭제</a></td>
	</tr>
<%
	}
	//4.close
%>	
</table>
</body>
</html>