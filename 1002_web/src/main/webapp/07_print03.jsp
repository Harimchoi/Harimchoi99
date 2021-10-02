<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_print03.jsp</title>
<script>
	function view(){
		document.all.lys.innerHTML="<b>하하하</b>";
		document.all.lys2.innerText="<b>호호호</b>"
	}
</script>
</head>
<body>
	<button onClick="view()">클릭하세요</button>
	<div id="lys">하하하</div>
	<div id="lys2">호호호</div>
</body>
</html>