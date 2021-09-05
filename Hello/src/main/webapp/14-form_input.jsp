<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14-form_input.jsp</title>
</head>
<body>
<form action="input_ok.jsp" method="get">
	이름<input type="text" name="id" value="이름" maxlength="5"><p/>
	비밀번호<input type="password" name="pwd" value="비밀번호"><p/>
	<input type="reset" value="취소"/><input type="submit" value="확인"/>
	
</form>
</body>
</html>