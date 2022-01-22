<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05_out</title>
</head>
<body>
<c:out value="안녕"/><p>	<!-- 닫는 태그를 동시에 -->

<c:out value="안녕"></c:out><p> <!-- 닫는 태그를 따로 -->

<%
	request.setAttribute("name", "최하림");
%>

<c:out value="${name}"/>

<%
	request.setAttribute("age", "");
%>

<c:out value="${age}" /> <!-- 내용이 비어 있어서 출력되지 않음 -->

<c:out value="${age}" default="나이정보없음"/> <!-- age의 값이 null이거나 변수가 존재하지 않을 때 default의 값이 출력 -->


<%
	request.setAttribute("age", "10");
	request.setAttribute("age2", "");
%>

<c:out value="${age}" /> <!-- 내용이 비어 있어서 출력되지 않음 -->
<c:out value="${age}" default="나이정보없음"/><p>
<c:out value="${age2}" default="나이정보없음"/>







</body>
</html>