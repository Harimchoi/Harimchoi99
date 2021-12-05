<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메가IT게시판::delete.jsp</title>
<link rel="stylesheet" href="board.css">
<script src="board.js"></script>
</head>
<%
//len(사용자 페이지 레코드 개수) 값 가져오기
String len = null;
if(request.getParameter("len")==null){
	len="10";
}
else{
	len = request.getParameter("len");
}
%>
<body>
<%@ include file="title.jsp" %>
<table width="600" border="1" align="center">
<form action="delete_ok.jsp" method="get">

	<tr>
		<td class="title" width="120">비밀번호</td>
		<td class="center"><input type="password" name="pwd">
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
		<input type="hidden" value="<%=request.getParameter("pager")%>&len=<%=len%>" name="pager">
		<input type="submit" value="삭제"  class="red" >
		<input type="button" value="취소" onclick="location='content.jsp?id=<%=request.getParameter("id")%>&pager=<%=request.getParameter("pager")%>&len=<%=len%>'">
		</td>
	</tr>
</table>
</form>
<%@ include file="bottom.jsp" %>
</body>
</html>