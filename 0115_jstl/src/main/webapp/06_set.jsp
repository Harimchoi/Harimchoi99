<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_set</title>
</head>
<body>
<%
	String name="홍길동";
	int kor = 99;
	
	request.setAttribute("name",name);
	//request.setAttribute("kor",kor);
%>

<c:set var="kor" value="<%=kor%>"/>  <!-- set은 변수를 생성하는 명령 -->

이름:${name}, 국어:${kor}<p>

<c:set var="age" value="33"/> <!-- age=33 -->
 나이:${age}<p>
 
<c:set var ="age" value="${age+1}"/> <!-- age= age+1 -->
 나이:${age}<p>
 
 <c:set var = "test" value="${name} ${kor} ${age}" />
 
 변수 나열 : ${test}
 
 <c:set var="test" value="${kor}+${age}"/> <!-- 값이 나열되어 출력 -->
문자열로 인식 : ${test}<p>

<c:set var = "test" value="${kor+age}"/>
숫자게산은 el표현식 안에서 : ${test}
 








</body>	
</html>