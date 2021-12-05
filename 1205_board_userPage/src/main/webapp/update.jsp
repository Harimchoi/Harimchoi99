<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="db.jsp" %>     
<%
//1.db연결

//len(사용자 페이지 레코드 개수) 값 가져오기
String len = null;
if(request.getParameter("len")==null){
	len="10";
}
else{
	len = request.getParameter("len");
}


//2.작업대상인 레코드의 id값 가져오기
String id = request.getParameter("id");

//3.쿼리
String sql = "select * from board where id = ?";

//4.심부름꾼
PreparedStatement pstmt = conn.prepareStatement(sql); 
pstmt.setString(1, id);

//5.실행
ResultSet rs = pstmt.executeQuery();
rs.next();  //레코드가 1개이기 때문.

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메가IT게시판::update.jsp</title>
<link rel="stylesheet" href="board.css">
<script src="board.js"></script>
</head>
<body>
<%@ include file="title.jsp" %>
<form method="get" action="update_ok.jsp">
<table border="1" align="center" width="600">
	<tr>
		<td class="title" width="120">작성자</td>
		<td class="center"><input type="text" name="name" maxlength="10" value="<%=rs.getString("name")%>"></td>
	</tr>
	<tr>
		<td class="title">제목</td>
		<td class="center"><input type="text" name="title" size="40" maxlength="200" value="<%=rs.getString("title")%>"></td>
	</tr>
	<tr>
		<td class="title con_height">내용</td>
		<td class="center"><textarea rows="15" cols="60" name="content"><%=rs.getString("content")%></textarea></td>
	</tr>
	<tr>
		<td class="title">비번</td>
		<td class="center"><input type="password" name="pwd" maxlength="15">
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
		<input type="hidden" name="id" value="<%=id%>">
		<input type="hidden" name="pager" value="<%=request.getParameter("pager")%>&len=<%=len%>">
		<input type="submit" value="수정하기" class="red" >
		<input type="button" value="취소하기" onClick="history.back()"></td>
	</tr>
</table>	
 </form>
</body>
<%@ include file="bottom.jsp" %>
</html>
<%
//6.닫기
pstmt.close();
conn.close();
%>