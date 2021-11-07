<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정하기 :: update.jsp</title>
<style>
	table{
		width:400px;
		text-align: center;
		border:1px solid #efefef;
	}
	th, td{
		background: #efefef;
	}
</style>

</head>
<body>
<% 
	//1. db연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/jspdb";
	Connection conn = DriverManager.getConnection(db, "root", "1111");

	//2. 심부름꾼 연결
	String id = request.getParameter("id");
	String sql = "select * from member where id="+request.getParameter("id");
	Statement stmt = conn.createStatement();
	
	//3. 쿼리 실행
	//stmt.executeUpdate(sql); 단지 실행만 시키고 싶을때
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
	
	
	
%>
<form action ="update_ok.jsp" method="get">
<table>
	<tr>
		<th colspan ="2">수정하기</th>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="name" value="<%=rs.getString("name")%>"></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" name="pwd">비밀번호</td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="text" name="juso" value="<%=rs.getString("juso")%>"></td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td><input type="text" name="phone"value="<%=rs.getString("phone")%>"></td>
	</tr>
	<tr>
		<th>나이</th>
		<td><input type="text" name="age"value="<%=rs.getString("age")%>"></td>
	</tr>
	<tr>
		<th>급여</th>
		<td><input type="text" name="pay"value="<%=rs.getString("pay")%>"></td>
	</tr>
	<tr>
		<input type="hidden" name ="id" value="<%=rs.getString("id")%>">
		<th colspan ="2"><input type="submit"> <input type="reset"></th>
	</tr>
</table>
</form>
<%
	//4. 닫기
	rs.close();
	stmt.close();
	conn.close();
%>
</body>
</html>