<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_el1.jsp</title>
</head>
<body>
<%
//자바의 내장객체 -> request, pageContext, session, application

	String name = "홍길동";
	int kor = 100;
	
	request.setAttribute("name","슈퍼맨"); //이전 문서와 현재문서에서 접근이 가능
	pageContext.setAttribute("name","베트맨");//현재 문서에서만
	session.setAttribute("name", "원더우먼"); //세션객체, 브라우저에 생성(네이버 전체창닫고 다시 들어오면 로그아웃된 상태)
	application.setAttribute("name", "뽀로로");//웹사이트에 하나 생성, 웹서버가 동작하면 생성 (총접속자수, 현재접속자수)
%>

<%=name %><br>
<%=request.getAttribute("name") %><br>
<%=pageContext.getAttribute("name") %><br>
<%=session.getAttribute("name") %><br>
<%=application.getAttribute("name") %><br>
<hr>


<!-- EL 표현식은 내장 객체 영역의 변수에 접근하는 방법 -->
${name}<p> <!-- 모든 내장객체의 이름이 name입니다. 접근순서는 pageContext>request>session>application -->
${requestScope.name}<br>
${pageScope.name}<br>
${sessionScope.name}<br>
${applicationScope.name}<p>


















</body>
</html>