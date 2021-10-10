<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08_setTimeoutEx.jsp</title>
<style>
	#aa{
		width:50px;
	}
</style>
<script>
	var wid = 50;
	var ss;
	function start(){
		//alert(document.getElementById("aa").style.width);
		wid++;
		document.getElementById("aa").style.width = wid+"px";
		ss = setTimeout(start, 50);
		//alert(document.getElementById("aa").style.width);
	}
	function stop(){
		clearTimeout(ss); //실행을 시키는 만큼 clearTimeout도 실해오딘다.
	}
</script>
</head>
<body>
<input type="button" onclick="start()" value="클릭"/>
<input type="button" onclick="stop()" value="중지"/><p>
<img src = "dp.jpg" id="aa"/>
</body>
</html>