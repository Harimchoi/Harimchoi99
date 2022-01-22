<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
	Class.forName("com.mysql.jdbc.Driver");
	String db="jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1111");
	
	request.setCharacterEncoding("utf-8");
	String hakbun = request.getParameter("hakbun");
	String name= request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String mat = request.getParameter("mat");
	String id = request.getParameter("id");
	
	
	String sql;
	if(id==null){
		out.print("write");
		out.print("id");
		sql = "insert into student(hakbun, name, kor, eng, mat) ";
		sql += "values(?, ?, ?, ?, ?)";
		
		
	}
	else{
		out.print("edit");
		out.print("id");
		sql = "update student set hakbun = ?, name=?, kor=?, eng=?, mat=? where id="+id;
	}
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, hakbun);
	ps.setString(2, name);
	ps.setString(3, kor);
	ps.setString(4, eng);
	ps.setString(5, mat);
	
	ps.execute();

	response.sendRedirect("sung_list.jsp");
	ps.close();
	conn.close();
%>