<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
    Class.forName("org.mariadb.jdbc.Driver");
    String url = "jdbc:mariadb://localhost:3306/imsi";
    Connection conn = DriverManager.getConnection(url,"root","1111");
    
    String sql = "select * from test";
    
    PreparedStatement pstmt = conn.prepareStatement(sql);
    
    ResultSet rs = pstmt.executeQuery();
    rs.next();
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <%=rs.getString("name") %>
</body>
</html>