<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_img_ani.jsp</title>
<style>
	#main{
		width:300px;
		height:280px;
		/*overflow:hidden;*/
		/*background:aqua;*/
		
	}
	#sub_main{
		width:1900px;
		height:280px;
		/*background:aqua;*/
	}
</style>
<script>
	w=0;
	function move(){
		w--;
		document.getElementById("sub_main").style.marginLeft=w+"px";
		
		if(w<=-308){
			clearInterval(ss);
			w=0;
			document.getElementById("sub_main").style.marginLeft="0px";
			temp = document.getElementsByClassName("sub")[0].innerHTML;
			
			for(i=1;i<6;i++){
				document.getElementsByClassName("sub")[i-1].innerHTML = document.getElementsByClassName("sub")[i].innerHTML; 
			}
			document.getElementsByClassName("sub")[5].innerHTML=temp;
			setTimeout(imsi, 1000);
		}
	}
	function imsi(){
		ss = setInterval(move,10);
	}
</script>
</head>
<body onload="imsi()">
<div id="main">
	<div id="sub_main">
		<span class="sub"><img src="a1.jpg" width="300"></span>
		<span class="sub"><img src="a2.jpg" width="300"></span>
		<span class="sub"><img src="a3.jpg" width="300"></span>
		<span class="sub"><img src="a4.jpg" width="300"></span>
		<span class="sub"><img src="a5.jpg" width="300"></span>
		<span class="sub"><img src="a6.jpg" width="300"></span>
	</div>
</div>
</body>
</html>