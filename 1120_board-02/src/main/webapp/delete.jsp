<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매가 IT게시판 :: delete.jsp</title>
</head>
<body>
<table>
<form action="delete_ok.jsp" method = "get">
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="pwd">
		<%
			if(request.getParameter("chk")!=null){
		%>
			<span style="color:red">비밀번호 오류</span>
		<%
			}
		%>
		
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="hidden" value="<%=request.getParameter("id")%>" name="id">
		<input type="submit" value="삭제">
		<input type="button" value="취소" onclick="location='content.jsp?id=<%=request.getParameter("id")%>'">
		</td>
	</tr>
</table>
</form>
</body>
</html>