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
<link rel="stylesheet" href="board.css">
<script src="board.js"></script>
</head>
<body>
<%@ include file="title.jsp" %>
<form method = "get" action="update_ok.jsp">
<table width="600" border="1" align="center">
	<tr>
		<td class="title">작성자</td> 
		<td class="center"><input type="text" name="name" maxlength="10" value="<%=rs.getString("name")%>"></td>
	<tr>
	<tr>
		<td class="title">제목</td> 
		<td class="center"><input type="text" name="title" size="60" maxlength="200" value="<%=rs.getString("title")%>"></td>
	</tr>
	<tr>
		<td class="title" style="height:350px">내용</td> 
		<td class="center"><textarea rows="15" cols="60" name="content">"<%=rs.getString("content")%>"</textarea></td>
	</tr>
	<tr>
		<td class="title">비번</td> 
		<td class="center"><input type="password" name="pwd" maxlength="15" value=""></td>
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
<%@ include file="bottom.jsp" %>
</body>
</html>
<%
//6.닫기    
pstmt.close();
conn.close();
%>