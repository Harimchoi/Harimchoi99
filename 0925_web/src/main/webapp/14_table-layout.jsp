<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14_table-layout.jsp</title>
</head>
<body>
<h1>table-layout : 테이블 레이아웃 크기</h1>

<h1>table layout 생략</h1>
<table width="200" height="100" border="1">

	<tr>
		<td>안녕하세요</td>
		<td>하하하</td>
	</tr>
	<tr>
		<td>감사합니다.</td>
		<td>하하하</td>
	</tr>
</table>

<h1>table layout:auto</h1>
<table width="200" height="100" border="1" style="table-layout:auto">

	<tr>
		<td>안녕하세요</td>
		<td>하하하</td>
	</tr>
	<tr>
		<td>감사합니다.</td>
		<td>하하하</td>
	</tr>
</table>

<h1>table layout:fixed</h1>
<table width="200" height="100" border="1" style="table-layout:fixed">

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