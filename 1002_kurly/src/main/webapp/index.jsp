<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓컬리::내일의 장보기, 마켓컬리</title>
<style>
	div{
		width:1100px;
		margin:auto;
		font-weight:bold;
		/*
		height:30px;
		border:1px solid red;*/
	}
	
	#first{
		background:purple;
		width:100%;
		height:40px;
		font-size:14px;
		text-align:center;
	}
	#first div{
		display:inline-block; /*블럭태그를 inline태그로 변경하고 block태그처럼 width, height사용가능*/
		margin:0px;
		padding:0px;
		text-align:center;
		color:#ffffff;
		padding-top:10px;
		/*border:1px solid red;*/
	}
	#fisrt .left{
		width:1000px;
		/*float:left;*/
	}
	#first .right{
		width:100px;
		/*float:right;*/
	}
	#second{
		background:white;
		height:32px;
		font-size:13px;
		padding-top:5px;
	}
	#second div{
		/*display: inline-block;*/
		
		
	}
	#second .left{
		width:14%;
		float:left;
		border:1px solid gray;
		border-radius:30px;
		height:23px;
		display:table-cell;
		text-align:center;
		vertical-align:middle;
		padding-top:4px;
	}
	#second .right{
		width:20%;
		float:right;
		padding-top:4px;
		padding-right:5px;
	}
	#third{
		/*background:yellow;*/
		height:70px;
		text-align:center;
		margin:auto;
	}
	#fourth{
		/*background:red;*/
		height:40px;
	}
	#fourth #main li{
		list-style-type: none;
		display:inline-block;
		width:140px;
		padding-bottom:4px;
	}
	#fourth #main li img{
		width:30px;
	}
	#fourth #main .search{
		width:220px;
	}
	#fourth #main .tip{
		width:30px;
	}
	#fifth{
		/*background:blue;*/
		width:100%;
		height:35px;
		margin:auto;
		text-align:center;
	}

</style>
</head>
<body>
<div id="first">
	<div class="left">지금 가입하고 인기상품 100원에 받아가세요! ></div>
	<div class="right">X</div>
</div>
<div id="second">
	<div class="left">샛별, 택배 배송안내 ></div>
	<div class="right">회원가입 | 로그인 | 고객센터</div>
</div>

<div id="third">
	<img src="img/logo.png"/>
</div>
<div id="fourth">
	<ul id="main">
		<li>전체 카테고리</li>
		<li>신상품</li>
		<li>베스트</li>
		<li>알뜰쇼핑</li>
		<li>특가/혜택</li>
		<li class="search"><img src="img/search.png"/></li>
		<li class="tip"><img src="img/move.png"/></li>
		<li class="tip"><img src="img/cart.png"/></li>
	</ul>
</div>
<div id="fifth">
	<img src="img/main.png"/>
</div>
</body>
</html>


















