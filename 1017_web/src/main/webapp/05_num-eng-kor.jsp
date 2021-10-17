
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05_num-eng-kor.jsp</title>
<script>
	function check1(my){//숫자만
		my.value = my.value.replace(/[^0-9]/g,""); //^에 있는 것만
		//숫자가 아닌 다른내용을 ""로 치환
	}
	function check2(my){//문자만
		my.value = my.value.replace(/[0-9]/g,"");//[]의 것을 제외한
		//0에서 9까지의 값은 ""로 치환
	}
	function check3(my){//한글만
		my.value = my.value.replace(/[a-zA-Z0-9]/g,"");//[]의 것을 제외한
	}
	function check4(my){//영문만
		my.value = my.value.replace(/[^a-zA-Z]/g,"");//^에 있는 것만
	}
</script>
</head>
<body>
<form name="lys">
	기 본<input type="text" onkeypress="return check(this)"><p>
	숫자만<input type="text" onkeypress="return check1(this)"><p>
	문자만<input type="text" onkeypress="return check2(this)"><p>
	한글만<input type="text" onkeypress="return check3(this)"><p>
	영문만<input type="text" onkeypress="return check4(this)"><p>
</form>
</body>
</html>