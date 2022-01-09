<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11_jstl-if.jsp</title>
</head>
<body>
<c:if test="true"> <!-- 기본 비교 변수 -->
	오늘은 수요일입니다.
</c:if>

<c:if test="false">
	오늘은 목요일 입니다.
</c:if>

<%
	request.setAttribute("kor", 50);
%>

<c:if test="${kor>=60}">  <!-- else표현식은 없음. -->
	<span>합격입니다.</span>
</c:if>

<c:if test="${kor<60}">
	<span>불합격입니다.</span>
</c:if>
</body>
</html>