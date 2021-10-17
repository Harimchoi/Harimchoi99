<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_hor_scroll.jsp</title>
<style>
	#main{
		width:220px;
		height:40px;
		border:1px solid black;
		overflow:hidden;
	}
	#sub_main{
		width:200px;
		height:360px;
		background: aqua;
		/*padding-right:50px;*/
		padding-left:5px;
		margin-top:15px;
		padding-top:6px;
	}
	li{
		font-size:20px;
		list-style-type:none;
		width:200px;
		height:40px;
	}
</style>
<script>
	h = 0;
	function move_txt(){
		var ex = document.getElementsByClassName("ex");
		var txt; // 임시 변수에 저장
		txt = ex[0].innerText;
		for(i=1;i<9;i++){
			ex[i-1].innerText = ex[i].innerText;
		}
		ex[8].innerText = txt;
	}
	function imsi(){
		h--;
		document.getElementById("sub_main").style.marginTop = h+"px";
		if(h<=-40)
			{
				document.getElementById("sub_main").style.marginTop = "0px";
				h=0;
				move_txt();
				setTimeout(imsi, 1000);
			}
		else{
			setTimeout(imsi,10);
		}
	}
</script>
</head>

<body onload="imsi()">
	<div id="main">
		<ul id="sub_main">
			<li class="ex">1.유명산 자연휴양림</li>
			<li class="ex">2.해운대 해수욕장</li>
			<li class="ex">3.속초 해수욕장</li>
			<li class="ex">4.한림 해수욕장</li>
			<li class="ex">5.지리산 국립공원</li>
			<li class="ex">6.태안 연포해수욕장</li>
			<li class="ex">7.강원도 무릉계곡</li>
			<li class="ex">8.보령 해수욕장</li>
			<li class="ex">9.속리산 국립공원</li>
		</ul>
	</div>
</body>
</html>