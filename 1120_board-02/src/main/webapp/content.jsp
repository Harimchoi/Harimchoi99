<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//1.db연결
Class.forName("org.mariadb.jdbc.Driver");
String db = "jdbc:mariadb://localhost:3306/my";
Connection conn = DriverManager.getConnection(db,"root","1111");
	
	
	
	
//2.request된 id값 가져오기
String id = request.getParameter("id");

	
	
//3.쿼리 생성
String sql = "select * from student where id=?";

//4.심부름꾼
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, id);

//5.쿼리실행
ResultSet rs = pstmt.executeQuery();
rs.next();
//6.닫기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메가 it 게시판 : content.jsp</title>
</head>
<body>
<table width="600" align="center" border="1">
	<tr>
		<td width="120">이름</td>
		<td><%=rs.getString("name")%></td>
		<td>조회수</td>
		<td><%=rs.getString("readnum")%></td>
		<td>작성일</td>
		<td><%=rs.getString("writeday")%></td>
	</tr>
	<tr>
		<td>제목</td>
		<td colspan="5"><%=rs.getString("title")%></td>
	</tr>
	<tr>
		<td height="350">내용</td>
		<td colspan="5"><%=rs.getString("content").replace("\r\n","<br>")%></td>
	</tr>
	<tr>
		<td colspan="6">
			<input type = "button" value="목록" onclick="location.href='list.jsp'">
			<input type = "button" value="수정" onclick="location.href='update.jsp?id=<%=id%>'">
			<input type = "button" value="삭제" onclick="location.href='delete.jsp?id=<%=id%>'">
			<input type = "button" value="글쓰기" onclick="location.href='write.jsp'">
		</td>	
</table>
</body>
</html>