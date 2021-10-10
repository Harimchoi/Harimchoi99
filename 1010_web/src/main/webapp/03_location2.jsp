<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_location2.jsp</title>
<script>
	function move(my){
		location.href = my.juso.value;
	}
</script>
</head>
<body>
<form>
	<input type="text" name="juso">
	<input type="button" onClick="move(this.form)" value="이동">

</form>
</body>
</html>