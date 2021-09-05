<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>16-form_textarea.jsp</title>
</head>
<body>
<h2>Comment</h2>
<form action="input_ok.jsp" method="get">
<textarea rows = "10" cols="50" name="comment"
 placeholder="내용을 넣어주세요"></textarea> <!--  여러줄 작성가능한 텍스트 박스 -->
 <input type = "submit"/>
</form>
</body>
</html>