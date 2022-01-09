<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>   
<%@page import="myboard.BoardDao"%> 
<%
    // 삭제하고자하는 레코드를 삭제후  list로 이동
    BoardDao bdao = new BoardDao();
	bdao.delete(request, response);
%>






