<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메가IT글쓰기::write.jsp</title>
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
<form method="get" action="write_ok.jsp">
<table width="600" border="1" align="center">
	<tr>
		<td class="title" width="100">작성자</td>
		<td class="center"><input type="text" name="name" maxlength="10" value="이영선"></td>
	</tr>
	<tr>
		<td class="title">제목</td>
		<td class="center"><input type="text" name="title" size="40" maxlength="200" value="제목입니다."></td>
	</tr>
	<tr>
		<td class="title con_height">내용</td>
		<td class="center"><textarea rows="15" cols="60" name="content">내용입니다.하나 둘 셋</textarea></td>
	</tr>
	<tr>
		<td class="title">비번</td>
		<td class="center"><input type="password" name="pwd" maxlength="15" value="1111"></td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="submit" value="작성하기" class="red" >
		<input type="reset" value="취소하기">
		<input type="button" value="뒤로가기" onclick="history.back()"></td>
		<input type="hidden" value="<%=len%>" name="len" ></td>
	</tr>
</table>	
 </form>
 <%@ include file="bottom.jsp" %>
</body>
</html>