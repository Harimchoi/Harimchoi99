<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
     // 수정할 값을 읽어와서 수정후 content로 이동
     
     // DB연결
     Class.forName("org.mariadb.jdbc.Driver");
    String url = "jdbc:mariadb://localhost:3306/my";
    Connection conn = DriverManager.getConnection(url,"root","1111");
         
     // 값 읽어오기
     request.setCharacterEncoding("utf-8");
     String id=request.getParameter("id");
     String name=request.getParameter("name");
     String title=request.getParameter("title");
     String content=request.getParameter("content");
     String pwd=request.getParameter("pwd");
     
     // DB에 저장된 pwd읽어오기
     String sql2="select * from board where id=?";
     PreparedStatement pstmt2=conn.prepareStatement(sql2);
     pstmt2.setString(1, id);
     ResultSet rs2=pstmt2.executeQuery();
     rs2.next();
     
     if(pwd.equals(rs2.getString("pwd")))
     {
     	String sql="update board set name=?,title=?,content=? where id=?";
     	PreparedStatement pstmt=conn.prepareStatement(sql);
     	pstmt.setString(1, name);
     	pstmt.setString(2, title);
     	pstmt.setString(3, content);
     	pstmt.setString(4, id);
     	pstmt.executeUpdate();
     	pstmt.close();
     	conn.close();
     	
     	response.sendRedirect("content.jsp?id="+id);
     }
     else
     {
     	conn.close();
     	response.sendRedirect("update.jsp?id="+id);
     }
%>