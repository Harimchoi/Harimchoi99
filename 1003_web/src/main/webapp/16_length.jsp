<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>16_length.jsp</title>
<script>
	function check(){
		
		var uid = document.lys.userid.value;
		var pwd = document.lys.pwd.value;
		
		alert("아이디의 길이 :"+uid.length);
		alert("비밀번호의 길이 :"+pwd.length);
		
		//alert(document.lys.userid.value.length);
		
		return false;
	}
	
	function check2(){
		var uid = document.lys.userid;
		if(uid.value.length<=8||uid.value.length>=16)
		{
			alert("아이디의 길이는 8글자~16글자 입니다.");
			uid.value="";
			uid.focus();
			return false;
		}
		else
			return true;
	}
</script>
</head>
<body>
<form name="lys" onSubmit="return check2()">
	아이디<input type="text" name="userid"/><p/>
	비밀번호<input type="password" name="pwd"/><p/>
	<input type="submit" value="확인"/><p/>
</form>
	
</body>
</html>