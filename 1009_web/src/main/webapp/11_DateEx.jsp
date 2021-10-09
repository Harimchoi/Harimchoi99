<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11_DateEx.jsp</title>
<script>
	function check1(){
		var today = new Date(); //오늘 날짜
		var sday = new Date(today.getFullYear(), today.getMonth()+1, today.getDate());
		var dday = new Date(2021, 9, 4); //특정일, 
		
		var t = sday.getTime(); //1970-01-01일부터 밀리세컨드
		var d = dday.getTime(); //1970-01-01일부터 특정일에 대한 밀리세컨드
		
		var aa = (t-d)/86400000;
		alert(aa);
		document.getElementById("t1").innerText=t/86400000;
		document.getElementById("t2").innerText=d/86400000;
	}
</script>
</head>
<body>
<input type="button" onClick="check1()" value="클릭"/>
<span id="t1"></span><p/>
<span id="t2"></span><p/>

</body>
</html>