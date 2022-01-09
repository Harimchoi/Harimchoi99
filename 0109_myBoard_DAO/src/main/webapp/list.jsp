<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%@page import="myboard.BoardDao"%>
<%
    BoardDao bdao = new BoardDao();
	ResultSet rs = bdao.list();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <table width="600" align="center">
     <tr>
       <td> 이름 </td>
       <td> 제목 </td>
       <td> 조회수 </td>
       <td> 작성일 </td>
     </tr>
   <%
   while(rs.next()) // rs.next() => 다음레코드 이동 => 레코드가 존재 true, 없으면 false
   {
   %>  
     <tr>
       <td> <%=rs.getString("name")%> </td> <!-- 표현식으로 표현함. -->
       <td> <a href="readnum.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("title")%></a></td>
       <td> <%=rs.getString("readnum")%> </td>
       <td> <%=rs.getString("writeday")%> </td>
     </tr>
     
   <%
   }
   %> 
    <tr>
     	<td><a href = "write.jsp">글쓰기</a></td>
    </tr>
   </table>
   
   
</body>
</html>
















