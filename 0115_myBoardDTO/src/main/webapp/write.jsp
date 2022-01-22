<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="board.css">
<script src="board.js"></script>
<script>
	function check(form){
		if(!form.title.length)
			
		
	}
</script>
</head>
<body>
<%@ include file="title.jsp" %>
  <form method="get" action="write_ok_old.jsp" onSubmit="check(this.form)">
  <table border="1" width="500" align="center">
  	<tr>
  		<td class="title" width="100">제목 </td>
  		<td class="content"><input type="text" name="title" size="40" value="제목입니다." maxlength="50">
  			<%
  				if(request.getParameter("title")=="1")
  					out.println("제목을 입력하세요");
  			%>
  		</td>
  	</tr>
  	<tr>
  		<td class="title">이름</td>
  		<td class="content"><input type="text" name="name" value="이영선"> </td>
  	</tr>
  	<tr height="250">
  		<td class="title">내용</td>
  		<td class="content"><textarea cols="40" rows="15" name="content" >내용입니다.</textarea></td>
  	</tr>
  	<tr>
  		<td class="title">비밀번호</td>
  		<td class="content"><input type="password" name="pwd" value="1111"></td>
  	</tr>
 	<tr>
 		<td colspan="2"><input type="button" onClick="location='list_old.jsp'" value="목록"> <input type="submit" value="글쓰기" class="red"> </td>
 	</tr>
  </table>
  </form>
</body>
</html>