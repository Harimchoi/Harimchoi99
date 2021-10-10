<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14_jumin.jsp</title>
<script>
	function check(my){
		/*
		if(document.lys.j1.value.length == 6)
			document.lys.j2.focus();  1번째 폼 값 가져오는 방법
		*/
		/*
		var ju = document.lys.j1.value;
		if(ju.length == 6)
			document.lys.j2.focus(); 2번째 폼 값 방법
		*/
		//alert(my.j1.value);
		if(my.j1.value.length==6)
			my.j2.focus();
	}
</script>
</head>
<body>
주민번호 6자리 입력하면 자동으로 그 다음 textbox로 이동<p>
<form name="lys">
	주민번호<input type="text" name="j1" maxlength="6" onkeyup="check(this.form)">-
	<input type="text" name="j2" maxlength="7">
</form>
</body>
</html>