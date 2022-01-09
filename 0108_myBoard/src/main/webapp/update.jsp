<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // 사용자가 선택한 레코드 하나를 읽어와서 전체내용을 보여주기
    // DB연결
   	Class.forName("org.mariadb.jdbc.Driver");
    String url = "jdbc:mariadb://localhost:3306/my";
    Connection conn = DriverManager.getConnection(url,"root","1111");
              
    // 작업대상인 레코드의 id값을 가져오기
    String id=request.getParameter("id");
    
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
</head>
<body>
  <form method="post" action="update_ok.jsp">
    제목 <input type="text" name="title" size="40" value="<%=rs.getString("title")%>"> <p>
    이름 <input type="text" name="name" value="<%=rs.getString("name")%>"> <p>
    내용 <textarea cols="40" rows="4" name="content"><%=rs.getString("content")%>"</textarea> <p>
    비번 <input type="password" name="pwd"> <p>
    <input type ="hidden" name="id"	value="<%=id%>">
    <input type="submit" value="글수정">
  </form>  
</body>
</html>