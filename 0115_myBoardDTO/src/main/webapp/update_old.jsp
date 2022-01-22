<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // 사용자가 선택한 레코드 하나를 읽어와서 전체내용을 보여주기
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/second";
    Connection conn=DriverManager.getConnection(url,"root","1111");
              
    // 작업대상인 레코드의 id값을 가져오기
    String id=request.getParameter("id");
    //pager ******
    String pager = request.getParameter("pager");
    
    // 쿼리 생성
    String sql="select * from board where id=?";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    // 쿼리 실행
    ResultSet rs=pstmt.executeQuery();
    rs.next();     
    
%>         
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="board.css">
<script src="board.js"></script>
<%-- <% // board에 수정시 
   if(request.getParameter("chk")!=null) // list.jsp에서 오면 null, delete.jsp에서 오면 chk=1
   {
 %>
  <script>
     alert("비밀번호가 틀렸습니다");
  </script>
<%
   }
%>   --%>
</head>
<body>
<%@ include file="title.jsp" %>
  <form method="post" action="update_old_ok.jsp">
    <table border="1" width="500" align="center">
  	<tr>
  		<td class="title" width="100">제목 </td>
  		<td class="content"><input type="text" name="title" size="40" value="<%=rs.getString("title")%>" maxlength="50"></td>
  	</tr>
  	<tr>
  		<td class="title">이름</td>
  		<td class="content"><input type="text" name="name" value="<%=rs.getString("name")%>"> </td>
  	</tr>
  	<tr height="250">
  		<td class="title">내용</td>
  		<td class="content"><textarea cols="40" rows="15" name="content" ><%=rs.getString("content")%></textarea></td>
  	</tr>
  	<tr>
  		<td class="title">비밀번호</td>
  		<td class="content"><input type="password" name="pwd">
  		<% if(request.getParameter("chk")!=null) // list.jsp에서 오면 null, delete.jsp에서 오면 chk=1
   			{
  			out.println("<span style='color:red'>비밀번호오류</span>");
   			}
      %>
      
  		<input type="hidden" name="id" value="<%=request.getParameter("id") %>">
  		<input type="hidden" name="pager" value="<%=pager %>"></td>
  	</tr>
 	<tr>
 		<td colspan="2">
 		<input type="button" onClick="history.back()" value="뒤로:수정취소">
 		<input type="button" onClick="location='list_old.jsp'" value="리스트:수정취소"> 
 		<input type="submit" value="수정" class="red"> </td>
 	</tr>
  </table>
  </form>  
</body>
</html>