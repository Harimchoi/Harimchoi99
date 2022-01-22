<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%  // 폼에 입력한 비밀번호와 db에 있는 비밀번호가 같다면
    // readnum으로 이동하여 내용을 볼수 있게 한다.
    // 틀리면 list돌아간다.
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(url,"root","1234");
    
    // 폼에 입력값 가져오기 (id, pwd)
    String id=request.getParameter("id");
    String pwd=request.getParameter("pwd"); // 게시판에서 입력한 비밀번호
    
    // DB에 있는 비밀번호를 가져오기 
    String sql="select pwd from board where id=?";
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    ResultSet rs=pstmt.executeQuery();
    rs.next();
    
    if(pwd.equals(rs.getString("pwd")))
    {
    	response.sendRedirect("readnum.jsp?id="+id);
    }
    else
    {
    	response.sendRedirect("list.jsp");
    }
%>








