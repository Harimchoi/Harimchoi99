<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%@page import="myboard.BoardDao" %>
<%
	BoardDao bdao = new BoardDao();
	ResultSet rs = bdao.content(request);
    // 사용자가 선택한 레코드 하나를 읽어와서 전체내용을 보여주기
    
              
    rs.next();     
    
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
       <td> <%=rs.getString("name")%> </td>
       <td> 조회수 </td>
       <td> <%=rs.getString("readnum")%> </td>
     </tr>
     <tr>
      <td> 제목 </td>
      <td colspan="3"> <%=rs.getString("title")%> </td>
     </tr>
     <tr>
      <td> 내용 </td>
      <td colspan="3"> <%=rs.getString("content").replace("\r\n","<br>")%> </td>
     </tr>
     <tr>
      <td> 작성일 </td>
      <td colspan="3"> <%=rs.getString("writeday")%> </td>
     </tr>
   </table>
   <a href="list.jsp">목록</a>
   <a href="update.jsp?id=<%=rs.getString("id")%>">수정</a>
   <a href="del.jsp?id=<%=rs.getString("id")%>">삭제</a>
</body>
</html>











