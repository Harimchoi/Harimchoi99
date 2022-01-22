<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
     // DB연결
     Class.forName("com.mysql.jdbc.Driver");
	 String db="jdbc:mysql://localhost:3306/second";
	 Connection conn=DriverManager.getConnection(db,"root","1111");
	
	 // 댓글테이블에 입력할 값 가져오기
	 request.setCharacterEncoding("utf-8");
	 String name=request.getParameter("name");
	 String content=request.getParameter("content");
	 String pwd=request.getParameter("pwd");
	 String board_id=request.getParameter("board_id");
	 String pager = request.getParameter("pager");
	 
	 // 쿼리 생성
	 String sql="insert into dat(name,content,pwd,board_id,writeday) ";
	 sql=sql+" values(?,?,?,?,now())";
	 
	 // 심부름꾼 생성
	 PreparedStatement pstmt=conn.prepareStatement(sql);
	 pstmt.setString(1, name);
	 pstmt.setString(2, content);
	 pstmt.setString(3, pwd);
	 pstmt.setString(4, board_id);
	 
	 // 쿼리 실행
	 pstmt.executeUpdate();
	 
	 // close
	 pstmt.close();
	 
	 // 이동  => content
	 response.sendRedirect("content_old.jsp?id="+board_id+"&pager="+pager);   // board테이블의 id값을 넘겨야 된다.
%>	  



















