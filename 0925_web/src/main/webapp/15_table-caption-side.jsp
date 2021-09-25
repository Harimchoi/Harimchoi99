<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>15_table-caption-side.jsp</title>
</head>
<body>
<h1>caption-side: 테이블 제목 위치</h1>

<h3>1.caption-side:top</h3>
<table width="200" height="100" border="1" style="caption-side:top">
	<caption>표의 제목</caption>
	<tr>
		<td>안녕하세요</td>
		<td>하하하</td>
	</tr>
	<tr>
		<td>감사합니다.</td>
		<td>하하하</td>
	</tr>
</table>

<h3>1.caption-side:bottom</h3>
<table width="200" height="100" border="1" style="caption-side:bottom">
	<caption>표의 제목</caption>
	<tr>
		<td>안녕하세요</td>
		<td>하하하</td>
	</tr>
	<tr>
		<td>감사합니다.</td>
		<td>하하하</td>
	</tr>
</table>

<h3>1.caption-side:생략</h3>
<table width="200" height="100" border="1" style="caption-side:">
	<caption>표의 제목</caption>
	<tr>
		<td>안녕하세요</td>
		<td>하하하</td>
	</tr>
	<tr>
		<td>감사합니다.</td>
		<td>하하하</td>
	</tr>
</table>
</body>
</html>