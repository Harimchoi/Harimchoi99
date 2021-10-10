<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13_password_input.jsp</title>
<style>
	#lys{
		width:250px;
		height:40px;
		border:1px solid purple;
		display:flex;
		align-items: center;
	}
	#pwd{
		width:220px;
		height:35px;
		font-size:25px;
		float:left;
		border:none;
	}
	#right{
		width:10px;
		font-size:20px;
		cursor:default;
	}
</style>
<script>
	var chk = 0;
	function change(my){
		if(chk%2==0) //2로 나누었을대 나머지가 0이면 짝수, 그렇지않으면 홀수
		{
			document.getElementById("pwd").type= "text";
			my.innerText = "●";
		}
		else{
			document.getElementById("pwd").type= "password";
			my.innerText = "○";
		}
		chk++;
	}
</script>
</head>
<body>
<div id="lys">
	<input type="password" id="pwd">
	<span id="right" onClick="change(this)">○</span>
</div>
</body>
</html>