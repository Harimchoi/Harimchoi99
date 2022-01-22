<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%  // 댓글 삭제를 한후  content.jsp로 이동
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/second";
    Connection conn=DriverManager.getConnection(url,"root","1111");
    
    // 삭제할 dat테이블의 id값을 가져오기
    String id=request.getParameter("id"); // dat테이블의id
    String bid=request.getParameter("bid"); // board테이블의 id
    String pwd=request.getParameter("pwd");
    
    // DB(댓글테이블)에 있는 비번을 가져오기
    String sql2="select pwd from dat where id=?";
    PreparedStatement pstmt2=conn.prepareStatement(sql2);
    pstmt2.setString(1, id);
    ResultSet rs2=pstmt2.executeQuery();
    rs2.next();
    
    if(pwd.equals(rs2.getString("pwd"))) // 사용자의 입력비밀번호랑  테이블에 있는 비밀번호를 비교
    {
       // 쿼리생성
      String sql="delete from dat where id=?";
    
      // 심부름꾼 생성
      PreparedStatement pstmt=conn.prepareStatement(sql);
      pstmt.setString(1, id);
    
      // 쿼리 실행
      pstmt.executeUpdate();
    
      // close
      pstmt.close();
      conn.close();
    
      // content.jsp로 이동
      response.sendRedirect("content_old.jsp?id="+bid); // board테이블의 id를 전달
    }
    else
    {
    	 // content.jsp로 이동
        response.sendRedirect("content_old.jsp?chk2=1&id="+bid); // board테이블의 id를 전달
    }
    
%>