<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // 해당 레코드의 조회수를 1 증가시킨후  content로 이동
    // DB연결
   	Class.forName("org.mariadb.jdbc.Driver");
    String url = "jdbc:mariadb://localhost:3306/my";
    Connection conn = DriverManager.getConnection(url,"root","1111");
          
    // 작업대상인 레코드의 id값을 가져오기
    String id=request.getParameter("id");
    
    // 쿼리생성
    String sql="update board set readnum=readnum+1 where id=?";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // close
    pstmt.close();
    conn.close();
    
    // 이동(content)
    response.sendRedirect("content.jsp?id="+id);
%>