<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//1.DB연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/second";
	Connection conn = DriverManager.getConnection(db,"root","1111");
	%>