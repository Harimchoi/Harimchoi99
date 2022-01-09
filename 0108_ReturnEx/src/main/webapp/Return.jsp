<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "returnEx.Return_Test" %>
<%@page import="returnEx.Dto"%>
<%@page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Return.jsp</title>
</head>
<body>
<%
	Return_Test rt = new Return_Test();
	int a = rt.test();
	int[] lotto = rt.test2();
	Dto dto = rt.test3();
	String tot = rt.test4();
%>
1. 숫자만 리턴 :<%=a %><p>
2. 배열로 리턴 :<%=Arrays.toString(lotto) %><p>
3. 여러개의 데이터 형 리턴 <br>
이름(문자열) : <%=dto.getName() %><br>
국어점수(정수형) : <%=dto.getKor() %><br>
체크(블린형) : <%=dto.getChk() %><p>

4.여러개의 값을 String형으로 보낼때 <br>
<%
	String sung[] = tot.split("/");
	for(int i =0; i<sung.length;i++){
		out.print(sung[i] +"<br>");
	}
%>



</body>
</html>