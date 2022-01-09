<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="myboard.BoardDao" %>

<%
	BoardDao bdao = new BoardDao(); //객체선언 할때 생성자는 자동으로 실행.
	//클래스명  인스턴트명 = new 생성자();
	bdao.write_ok(request,response);
    
    
%>















