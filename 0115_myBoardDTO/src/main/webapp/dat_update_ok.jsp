<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/second";
    Connection conn=DriverManager.getConnection(url,"root","1111");
        
    // 수정을 위한 폼입력값을 가져오기(사용자가 방금입력한 비번포함)
    request.setCharacterEncoding("utf-8");
    String did=request.getParameter("did"); // dat테이블의 id
    String bid=request.getParameter("board_id"); // board테이블의 id => content이동
    String name=request.getParameter("name");
    String content=request.getParameter("content");
    String pwd=request.getParameter("pwd");
    
    // DB에 있는 비밀번호를 가져오기
    String sql2="select pwd from dat where id=?";
    PreparedStatement pstmt2=conn.prepareStatement(sql2);
    pstmt2.setString(1, did);
    ResultSet rs2=pstmt2.executeQuery();
    rs2.next();
    if(pwd.equals(rs2.getString("pwd")))
    {
      // 쿼리 생성
      String sql="update dat set name=?, content=? where id=?";
    
      // 심부름꾼 생성
      PreparedStatement pstmt=conn.prepareStatement(sql);
      pstmt.setString(1, name);
      pstmt.setString(2, content);
      pstmt.setString(3, did);
      
      // 쿼리 실행
      pstmt.executeUpdate();
      
      // close();
      pstmt.close();

      // content로 이동
      response.sendRedirect("content_old.jsp?id="+bid);
    }
    else
    {
       //content로 이동
      response.sendRedirect("content_old.jsp?chk2=1&id="+bid);
    }
    conn.close();
%>