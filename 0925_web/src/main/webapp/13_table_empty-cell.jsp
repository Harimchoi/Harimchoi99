<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13_table_empty-cell.jsp</title>
</head>
<body>
<h1>empty-cells : 비어있는 tx의 테두리</h1>
<h2>1.empty-cells</h2>

<table width="200" height="100" border="1">
	<tr>
		<td>하하하</td>
		<td>하하하</td>
	</tr>
	<tr>
		<td></td>
		<td>하하하</td>
	</tr>
</table>

<h2>2.empty-cells:show 생략</h2>
<table width="200" height="100" border="1" style="empty-cells:show">

<tr>
		<td>하하하</td>
		<td>하하하</td>
	</tr>
	<tr>
		<td></td>
		<td>하하하</td>
	</tr>
</table>

<h2>3.empty-cells:hide 생략</h2>
<table width="200" height="100" border="1" style="empty-cells:hide">

<tr>
		<td>하하하</td>
		<td>하하하</td>
	</tr>
	<tr>
		<td></td>
		<td>하하하</td>
	</tr>
</table>

</body>
</html>