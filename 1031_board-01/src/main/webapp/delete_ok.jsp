
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.sql.*"%>
<!-- delete_ok.jsp -->

<%

//1.db연결
Class.forName("org.mariadb.jdbc.Driver");
String db = "jdbc:mariadb://localhost:3306/jspdb";
Connection conn = DriverManager.getConnection(db, "root", "1111");

String pwd = request.getParameter("pwd");
String id = request.getParameter("id");

//2-1. 심부름꾼
Statement stmt = conn.createStatement();

//3-1. 쿼리실행
String sql_select = "select pwd from member where id = "+id;
ResultSet rs = stmt.executeQuery(sql_select);
rs.next();



//out.println(rs.getString("pwd"));
String pwd_db = rs.getString("pwd"); //db에 저장되어 있는 pwd



if(pwd.equals(pwd_db)){
	//2-2. 심부름꾼
	String sql = "delete from member where id ="+id;
	//3-2. 쿼리실행
	stmt.executeUpdate(sql);
	stmt.close();
	response.sendRedirect("select.jsp");
}
else{
	//response.sendRedirect("delete.jsp?chk=no&id="+id);
}


//4.닫기
%>

















