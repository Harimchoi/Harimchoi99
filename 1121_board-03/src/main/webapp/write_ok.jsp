
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<!-- write_ok.jsp -->
<% 


//1.db연결
Class.forName("org.mariadb.jdbc.Driver");
String db = "jdbc:mariadb://localhost:3306/my";
Connection conn = DriverManager.getConnection(db,"root","1111");


//2. 폼태그에 입력된 값 읽어오기
String name = request.getParameter("name");
String title = request.getParameter("title");
String content = request.getParameter("content");
String pwd = request.getParameter("pwd");

//3.쿼리 생성
String sql = "insert into student(name, title, content, pwd, writeday)";
sql += "values(?, ?, ?, ?, now())";

//4.심부름꾼 생성
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, name);
pstmt.setString(2, title);
pstmt.setString(3, content);
pstmt.setString(4, pwd);

//5. 쿼리실행
pstmt.execute();

//6.닫기
pstmt.close();
conn.close();

//7. 이동
response.sendRedirect("list.jsp");

%>












