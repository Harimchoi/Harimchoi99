<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // 삭제하고자하는 레코드를 삭제후  list로 이동
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/second";
    Connection conn=DriverManager.getConnection(url,"root","1111");
                  
    // 입력값
    String id=request.getParameter("id");
    String pwd=request.getParameter("pwd");
    //pager *******
    String pager = request.getParameter("pager");
    
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
    	
    	String sql3 = "delete from dat where board_id=?";
    	PreparedStatement pstmt3=conn.prepareStatement(sql3);
    	pstmt3.setString(1, id);
    	pstmt3.executeUpdate();
    	
    	pstmt.close();
    	pstmt2.close();
    	pstmt3.close();
    	conn.close();
    	
    	response.sendRedirect("list_old.jsp?pager="+pager);
    }
    else
    {
    	conn.close();
    	response.sendRedirect("content_old.jsp?id="+id+"&pager="+pager);
    }
    

%>






