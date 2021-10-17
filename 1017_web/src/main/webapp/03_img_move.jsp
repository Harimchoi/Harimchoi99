<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_img_move.jsp</title>
<style>
	input[type=button]{
		width:200px;
		height:50px;
		font-size:40px;
	}
</style>
<script>
	var img = ["<img src=a1.jpg width=300>","<img src=a2.jpg width=300>","<img src=a3.jpg width=300>",
		"<img src=a4.jpg width=300>","<img src=a5.jpg width=300>","<img src=a6.jpg width=300>"];
	function left(){
		tmp = img[0];
		img = img.slice(1);
		//alert(img);
		img.push(tmp);
		//alert(img);
		
		soce = "";
		for(i=0;i<img.length;i++){
			soce += img[i] + " ";
		}
		//alert(soce);
		document.getElementById("sub_main").innerHTML = soce;
	}
	function right(){
		tmp = img[5];
		img = img.slice(0,5); //0에서부터 5개
		//alert(img);
		img.unshift(tmp);
		//alert(img);
		
		soce = "";
		for(i=0;i<img.length;i++){
			soce += img[i] + " ";
		}
		//alert(soce);
		document.getElementById("sub_main").innerHTML = soce;
	}
</script>
</head>
<body>
<input type="button" value="←" onclick="left()">
<input type="button" value="→" onclick="right()"><p>
<div id="sub_main">
		<img src="a1.jpg" width="300">
		<img src="a2.jpg" width="300">
		<img src="a3.jpg" width="300">
		<img src="a4.jpg" width="300">
		<img src="a5.jpg" width="300">
		<img src="a6.jpg" width="300">
		
</body>
</html>