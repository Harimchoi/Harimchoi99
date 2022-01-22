<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04 foreach</title>
</head>
<body>
<c:forEach var="i" begin="1" end="10" step="1"> <!-- var은 변수, begin은 시작값, end은 최종값, step은 증가(증감은 없음) -->
	안녕하세요 ${i}<br> <!-- jstl에서 선언된 변수는 el표현식으로 표현 가능 -->
</c:forEach>

<select>
<c:forEach var="i" begin="1999" end="2022" step="1"><!-- step을 주지 않을 수도 있고. 이때는 1값을 가짐 -->
	<option value="${i}"> ${i} </option>
</c:forEach>
</select>
<hr>
<select>
<c:forEach var="i" begin="2022" end="1999" step="1"><!-- step은 -1처럼 음수값을 가지면 에러 -->
	<option value="${i}"> ${i} </option>
</c:forEach>
</select>
<hr>
<select>
<c:forEach var="i" begin="0" end="122"><!-- step은 -1처럼 음수값을 가지면 에러 -->
	<option value="${2022-i}"> ${2022-i} </option>
</c:forEach>
</select>
<hr>

<%
	String[] name={"홍길동","슈퍼맨","뽀로로","오징어","에디","도라에몽"}; //jsp소스
	
	request.setAttribute("name", name);
%>

${name[0]}
${name[1]}
${name[2]}
${name[3]}
${name[4]}
${name[5]}
${name[6]}

<hr>
<c:forEach var="i" begin="0" end="5" step="1" varStatus="chk"> <!-- chk가 동작할때 발생하는 값:현재상태 -->
	${name[i]} i[${chk.index}] ${chk.current} ${chk.begin} ${chk.end} ${chk.step}<br><!-- current는 현재 숫자 -->
</c:forEach>
<hr> <!-- java에서 foreach문 사용법으로 배열 표현 -->
<c:forEach items="${name}" var="nam" varStatus="chk"><!-- 집합계열에서의 foreach문 -->
	${nam} ${chk.index} ${chk.current } ${chk.first} ${chk.last}<!-- current는 현재의 값 -->
</c:forEach>














</body>
</html>