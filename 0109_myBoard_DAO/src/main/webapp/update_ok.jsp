<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%@page import="myboard.BoardDao" %>
<%
     // 수정할 값을 읽어와서 수정후 content로 이동
     
     BoardDao bdao = new BoardDao();
	 bdao.update_ok(request, response);
     
     
%>