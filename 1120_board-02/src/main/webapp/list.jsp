<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1.DB연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/my";
	Connection conn = DriverManager.getConnection(db,"root","1111");
	
	//2.쿼리생성
	String sql = "select * from student order by id desc";
	
	//3.심부름꾼
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	//4.쿼리실행
	ResultSet rs = pstmt.executeQuery();
	
	//5.레코드 출력
	
	//6.닫기


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 : list.jsp</title>
</head>
<body>
메가IT게시판
<table width="600" align="center">
	<tr>
		<td>번호</td>
		<td>작성자</td>
		<td>제목</td>
		<td>조회수</td>
		<td>작성일</td>
	</tr>
	<%
	
	//5.레코드 출력
	while(rs.next()){ //rs.next()는 다음 레코드로 이동, 레코드가 존재하면true, 없으면 false
	%>
	<tr>
		<td><%=rs.getString("id")%></td> <!-- DB의 필드명 -->
		<td><%=rs.getString("name")%></td>
		<td><a href="readnum.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("title")%></a></td>
		<td><%=rs.getString("readnum")%></td>
		<td><%=rs.getString("writeday")%></td>
	</tr>
	<%
	}
	%>
	<tr>
		<td colspan="2"><input type="button" value="글쓰기" onclick="location.href='write.jsp'"></td>
	</tr>
</table>
</body>
</html>
<% 
//6.닫기
pstmt.close();
conn.close();



%>
