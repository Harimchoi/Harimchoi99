<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12_top_hide.jsp</title>
<style>
	body{
		margin:0px;
		padding:0px;
	}
	#lys{
		width:800px;
		height:40px;
		background:purple;
		color:white;
		display:flex;
		justify-content: flex-end; /*가로정렬*/
		align-items : center; /*세로정렬*/
		margin:auto;
		padding:0;
	}
	
</style>
<script>
	var hig = 40;
	function hide(){
		hig--;
		document.getElementById("lys").style.height=hig+"px";
		if(hig>0)
			setTimeout(hide,10);
		else
			document.getElementById("lys").style.display="none";
	}
</script>
</head>
<body>
<div id="lys"><span onClick="hide()">x</span></div>
</body>
</html>