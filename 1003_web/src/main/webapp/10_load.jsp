<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10_load.jsp</title>
<script>
	
	window.onload=function(){ //전체 문서를 읽은 후에 실행<-> body태그의 onLoad와는 충돌 되며, body태그의 onload가 우선권을 갖는다.
		alert("문서를 읽을때 호출-window.onload");
		bb.innerText="window.onload";
	}
	function first(){
		alert("문서를 읽을때 호출-first()");//두번째 실행
		bb.innerText="first()";
	}
	function second(){//전체 문서를 읽기 전에 실행
		alert("문서를 읽을때 호출-second()");//첫번째 실행
		aa.innerText="second()";//aa를 찾지 못해서 실행되지 못함.
	}
	second();//문서를 읽기 전에 호출
	
</script>
</head>
<body onload="first()">
	<div id="aa"></div>
	<div id="bb"></div>
</body>
</html>