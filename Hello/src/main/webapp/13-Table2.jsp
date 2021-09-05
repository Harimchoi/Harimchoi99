<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13-table2.jsp</title>
<table border = "1" width="300">
	<caption> 행 열 합치기</caption>
	
	<tr>
		<td rowspan = "2">홍성민</td>
		<td>90</td>
	</tr>
	<tr>
		
		<td>80</td>
	</tr>
	<tr>
		<td>홍진경</td>
		<td>70</td>
	</tr>
</table>
<table border = "1" width="300">
	<caption> 행 열 합치기</caption>
	
	<tr>
		<td>홍성민</td>
		<td>90</td>
	</tr>
	<tr>
		<td>홍성림</td>
		<td>80</td>
	</tr>
	<tr>
		<td colspan="2">홍진경</td>
	</tr>
</table>

<table border="1" width="300"><!--  4행4열 -->
	<tr>
		<td>1</td>
		<td colspan="2">가</td>
		<td rowspan="3">나</td>
	</tr>
	<tr>
	
		<td>5</td>
		<td colspan="2" rowspan="2">다</td>
	
	</tr>
	<tr>
		<td>9</td>
		
	</tr>
	<tr>
		<td>13</td>
		<td>14</td>
		<td>15</td>
		<td>16</td>
	</tr>
	
	
	
	
	
	
	
	
	
</table>
</body>
</html>