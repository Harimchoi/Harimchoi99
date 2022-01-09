<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // 삭제하고자하는 레코드를 삭제후  list로 이동
    // DB연결
    Class.forName("org.mariadb.jdbc.Driver");
    String url = "jdbc:mariadb://localhost:3306/my";
    Connection conn = DriverManager.getConnection(url,"root","1111");
                  
    // 입력값
    String id=request.getParameter("id");
    String pwd=request.getParameter("pwd");
    
    // DB에 저장된 pwd읽어오기
    String sql2="select * from board where id=?";
    PreparedStatement pstmt2=conn.prepareStatement(sql2);
    pstmt2.setString(1, id);
    ResultSet rs2=pstmt2.executeQuery();
    rs2.next();
    
    if(pwd.equals(rs2.getString("pwd")))
    {
    	String sql="delete from board where id=?";
    	PreparedStatement pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	pstmt.executeUpdate();
    	pstmt.close();
    	conn.close();
    	
    	response.sendRedirect("list.jsp");
    }
    else
    {
    	conn.close();
    	response.sendRedirect("content.jsp?id="+id);
    }
    

%>






