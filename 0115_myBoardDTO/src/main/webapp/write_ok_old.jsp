<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    // 폼에 입력된 값을 가져온 후 쿼리를 통해서 테이블에 저장후  list로 이동
    
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/second";
    Connection conn=DriverManager.getConnection(url,"root","1111");
        
    // 폼태그에 입력된 값 읽어오기
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("name");
    String title=request.getParameter("title");
    String content=request.getParameter("content");
    String pwd=request.getParameter("pwd");
    
    // 쿼리 생성
    String sql="insert into board(name,title,content,pwd,writeday) ";
    sql=sql+"values(?,?,?,?,now())";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, name);
    pstmt.setString(2, title);
    pstmt.setString(3, content);
    pstmt.setString(4, pwd);
    
    // 쿼리 실행
    pstmt.execute();
    
    // close
    pstmt.close();
    conn.close();
    
    // list이동
    response.sendRedirect("list_old.jsp");
%>















