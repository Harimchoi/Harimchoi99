<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12_submit.jsp</title>
<script>
	function test(my){
		//if(document.lys.name.value=="")
		if(my.name.value==""){
			alert("이름이 비었네요");
			return false;
		}	
	}
</script>
</head>
<body>
	<form metho="post" action="a.jsp" name="lys" onsubmit="return test(this)">
		이름<input type="text" name="name"/>
		<input type="submit" value="전송"/>
	</form>
</body>
</html>