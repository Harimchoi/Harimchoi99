<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%@page import="myboard.BoardDao" %>
<%
    // 해당 레코드의 조회수를 1 증가시킨후  content로 이동
    BoardDao bdao = new BoardDao();
	bdao.readnum(request, response);
%>