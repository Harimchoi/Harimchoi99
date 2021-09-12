<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_selector_status.jsp</title>
<style>
	input:checked{
		width:30px; height:30px;
	}
	input:disabled{
		background:red;
	}
	input:enabled{
		background:blue;
	}
	input:focus{
		color:white;
	}
</style>
</head>
<body>
<form>
	이름<input type="text"><p/>
	나이<input type="text" disabled><p/>
	주소<input type="text"><p/>
	성별<input type="radio" name="sung">남자<input type="radio" name="sung">여자<p/>
	취미<input type="checkbox" name="hobby">낚시<input type="checkbox" 
	name="hobby">등산<input type="checkbox" name="hobby">운동<input type="checkbox" 
	name="hobby">여행<p/>
	
	생년<select>
		<option>선택</option>
		<option>2018</option>
		<option>2016</option>
		<option>2015</option>
		<option>2014</option>
	</select>
</form>
</body>
</html>