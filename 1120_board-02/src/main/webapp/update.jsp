<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//1.db연결
Class.forName("org.mariadb.jdbc.Driver");
String db = "jdbc:mariadb://localhost:3306/my";
Connection conn = DriverManager.getConnection(db,"root","1111");
//2.작업대상인 레코드의 id값 가져오기
String id = request.getParameter("id");

//3.쿼리
String sql = "select*from student where id = ?";

//4.심부름꾼
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, id);

//5.실행
ResultSet rs = pstmt.executeQuery();
rs.next();
    
    
    

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메가 IT 게시판 : update.jsp</title>
</head>
<body>
<form method = "get" action="update_ok.jsp">
<table>
	<tr>
		<td>작성자</td> 
		<td><input type="text" name="name" maxlength="10" value="<%=rs.getString("name")%>"></td>
	<tr>
	<tr>
		<td>제목</td> 
		<td><input type="text" name="title" size="40" maxlength="200" value="<%=rs.getString("title")%>"><td>
	</tr>
	<tr>
		<td>내용</td> 
		<td><textarea rows="4" cols="40" name="content">"<%=rs.getString("content")%>"</textarea><td>
	</tr>
	<tr>
		<td>비번</td> 
		<td><input type="password" name="pwd" maxlength="15" value=""><td>
		<%
			if(request.getParameter("chk")!=null){
		%>
			<span style="color:red">비밀번호 오류</span>
		<%
			}
		%>
	</tr>
	<tr>
		<td colspan="2">
		<input type="hidden" name="id" value="<%=id%>">
		<input type="submit" value="수정하기">
		<input type="reset" value="취소하기" onclick="location.href='content.jsp?id=<%=id%>'"></td>
		</td>
	</tr>
	
</table>
</form>
</body>
</html>
<%
//6.닫기    
pstmt.close();
conn.close();
%>