<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제하기 :: delete.jsp</title>
<style>
	table{
		width:400px;
		text-align: center;
		border:1px solid #efefef;
	}
	th, td{
		background: #efefef;
	}
</style>

</head>
<body>

<form action ="delete_ok.jsp" method="get">
<table>
	<tr>
		<th colspan ="2">삭제하기</th>
	</tr>

	<tr>
		<th>비밀번호</th>
		<td><input type="password" name="pwd">
		<%
		String chk = request.getParameter("chk");
			if(chk!=null){
		%>
				<b style="color:red">비밀번호 오류</b>
		<%
			}
		%>
		</td>
	</tr>

	<tr>
		<input type="hidden" name ="id" value="<%=request.getParameter("id")%>">
		<th colspan ="2"><input type="submit"> <input type="reset"></th>
	</tr>
</table>
</form>

</body>
</html>