<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_choose</title>
</head>
<body>
<%
	request.setAttribute("food", 60); //el표현식을 쓰기 위해 내장 객체 
	//1.짜장면 2.짬뽕 3.우동 4.탕수육
%>

<c:choose>
	<c:when test="${food==1}">
		짜장면 선택
	</c:when>
	<c:when test="${food==2}">
		짬뽕 선택
	</c:when>
	<c:when test="${food==3}">
		우동 선택
	</c:when>
	<c:when test="${food==4}">
		탕수육 선택
	</c:when>
	<c:otherwise>
		잘못 선택
	</c:otherwise>
</c:choose>





</body>
</html>