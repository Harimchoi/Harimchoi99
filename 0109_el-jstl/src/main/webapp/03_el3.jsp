<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_el3.jsp</title>
</head>
<body>
*EL 표현식에서 연산하기
<hr>

<%
	pageContext.setAttribute("kor", 100);
	pageContext.setAttribute("eng", 67);
	pageContext.setAttribute("sci", "");
%>

<h3>자바의 연산자를 그대로 사용 할 수 있음.</h3>

국어 : ${kor}, 영어 : ${eng} <p>
<hr>
산술연산<p>
${kor+eng} <p>
${kor-eng} <p>
${kor*eng} <p>
${kor/eng} <p>
${kor%eng} <p>
<hr>
비교연산<p>
${kor>eng} <p>
${kor<eng} <p>
${kor>=eng} <p>
${kor<=eng} <p>
${kor==eng} <p>
${kor!=eng} <p>
${kor!=eng}<p><br><br><br>
비교연산 : 영문 표현법<p>
${kor gt eng} <p>
${kor lt eng} <p>
${kor le eng} <p>
${kor eq eng} <p>
${kor ne eng} <p>
<hr>
관계연산 <p>
${true and true}<p>
${true && false}<p>
${true or true}<p>
${true || true}<p>
<hr>
empty와 null의 비교<p>
${empty mat}<p> <!-- mat는 변수 자체가 없고, sci는 값이 없어서 둘다 true -->
${empty sci}<p>
${mat==null}<p>
${sci==null}<p> <!-- null이 아니라 빈값이므로 false -->
<hr>
삼항 연산식<p>
${kor>eng? "국어점수가 크다" : "영어점수가 크다" }<p>





</body>
</html>