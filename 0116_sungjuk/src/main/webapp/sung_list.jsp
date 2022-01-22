<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*" %>
<%@page import="myboard.BoardDto"%>
<%@page import="myboard.BoardDao"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% 
	BoardDao bdao = new BoardDao();
	ArrayList<BoardDto> list = bdao.list(request);
	
	request.setAttribute("list", list);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function ok(url){
		
		location.href=url;
	}
</script>
</head>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String db ="jdbc:mysql://localhost:3306/first";
	Connection conn=  DriverManager.getConnection(db, "root", "1111");
	
	String sql = "select * from student";
	
	Statement st = conn.createStatement();
	
	ResultSet rs = st.executeQuery(sql);
	
	rs.afterLast();
	
%>
<table width="500" border="1">
	<tr>
	 	<td colspan="5" align="right">
	 	    <input type="button" value="글쓰기" onClick="ok('sung_write.jsp')"></td>
	</tr>
	<tr>
	 	<td>학번</td>
	 	<td>이름</td>
	 	<td>국어</td>
	 	<td>영어</td>
	 	<td>수학</td>
	 	<td>수정</td>
	 	<td>삭제</td>
	</tr>
	
	<c:forEach items = "">
	
	
	
	
	</c:forEach>
<%
 while(rs.previous()){
	
%>
	<tr>
	 	<td><%=rs.getInt("hakbun")%></td>
	 	<td><%=rs.getString("name")%></td>
	 	<td><%=rs.getInt("kor")%></td>
	 	<td><%=rs.getInt("eng")%></td>
	 	<td><%=rs.getInt("mat")%></td>
	 	<td><input type="button" value="수정" onClick="ok('edit.jsp?id=<%=rs.getInt("id")%>')"></td>
	 	<td><input type="button" value="삭제" onClick="ok('del.jsp?id=<%=rs.getInt("id")%>')"></td>
	</tr>
<%
}%>
</table>
</body>
</html>