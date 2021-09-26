<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_border-collapse.jsp</title>
</head>
<body>
<h1>border-collapse : 테이블 테두리 분리</h1>
<h3>1.border-collapse : separate(생략과 동일)</h3>
<table width="200" height="100" border="1" style="border-collapse:separate">
	<tr>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td></td>
	</tr>
</table>

<h3>2.table cellspacing</h3>
<table width="200" height="100" border="1" cellspacing="0" style="border-color:red">
	<tr>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td></td>
	</tr>
</table>

<h3>3.border-collapse : collapse</h3>
<table width="200" height="100" border="1" style="border-collapse:collapse">
	<tr>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td></td>
	</tr>
</table>
</body>
</html>