<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form method="post" action="write_ok.jsp">
    제목 <input type="text" name="title" size="40"> <p>
    이름 <input type="text" name="name"> <p>
    내용 <textarea cols="40" rows="4" name="content"></textarea> <p>
    비번 <input type="password" name="pwd"> <p>
    <input type="submit" value="글쓰기">
  </form>
</body>
</html>