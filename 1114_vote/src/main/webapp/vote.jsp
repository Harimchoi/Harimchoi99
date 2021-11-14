<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vote.jsp</title>
</head>
<body>
<!-- 사용자로부터 투표 내용을 입력받는 폼 -->
<form action="vote_ok.jsp" method="get">
  대통령을 선출해 주세요!!<p>
	<input type="radio" name="jang" value="0">이재명<p>
	<input type="radio" name="jang" value="1">윤석열<p>
	<input type="radio" name="jang" value="2">안철수<p>
	<input type="radio" name="jang" value="3">심상정<p>
	<input type ="submit" value="투표하기">
</form>

</body>
</html>