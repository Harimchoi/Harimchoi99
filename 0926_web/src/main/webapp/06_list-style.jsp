<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_list-style.jsp</title>
<style>
	.aa1{list-style-type:circle;}
	.aa2{list-style-type:square;}
	.aa3{list-style-type:disc;}
	.bb1{}
	.bb2{list-style-position:inside;}
	.bb3{list-style-position:outside;}
	ul{border:1px solid red;}
	li{border:1px solid green;}
	.cc1{list-style-image: url("icon.png")}
	.cc2{list-style:circle inside none;}/*style position image*/
	.cc3{list-style:circle inside url("icon.png");}/*style position image*/
</style>
</head>
<body>
<h1>list-style 속성</h1>

<table width="800">
	<tr>
		<td colspan="3" align="center" bgcolor="#eeeeee">
		<h3>list-style-type 마크모양 => circle, square, disc</h3></td>
	</tr>
	<tr>
		<td>list-style-type:circle</td>
		<td>list-style-type:square</td>
		<td>list-style-type:disc</td>
	</tr>
	<tr>
		<td>
			<ul class="aa1" type=>
				<li>짜장면</li>
				<li>우동</li>
				<li>탕수육</li>
				<li>팔보채</li>
			</ul>
		</td>
		
		<td>
			<ul class="aa2">
				<li>짜장면</li>
				<li>우동</li>
				<li>탕수육</li>
				<li>팔보채</li>
			</ul>
		</td>
		
		<td>
			<ul class="aa3">
				<li>짜장면</li>
				<li>우동</li>
				<li>탕수육</li>
				<li>팔보채</li>
			</ul>
		</td>
	</tr>
	
	<tr>
		<td colspan="3" align="center" bgcolor="#eeeeee">
		<h3>list-style-position : inside, outside</h3></td>
	</tr>
	<tr>
		<td>list-style-position:생략</td>
		<td>list-style-position:inside</td>
		<td>list-style-position:outside</td>
	</tr>
	<tr>
		<td>
			<ul class="bb1">
				<li>짜장면</li>
				<li>우동</li>
				<li>탕수육</li>
				<li>팔보채</li>
			</ul>
		</td>
		
		<td>
			<ul class="bb2">
				<li>짜장면</li>
				<li>우동</li>
				<li>탕수육</li>
				<li>팔보채</li>
			</ul>
		</td>
		
		<td>
			<ul class="bb3">
				<li>짜장면</li>
				<li>우동</li>
				<li>탕수육</li>
				<li>팔보채</li>
			</ul>
		</td>
	</tr>
	
	<tr>
		<td align="center" bgcolor="#eeeeee">
		<h3>list-style-image:그림으로 마크를</h3></td>
		
		<td colspan="2" align="center" bgcolor="#eeeeee">
		<h3>list-style: 한번에 정의</h3></td>
	</tr>
	<tr>
		<td>list-style-image:url("파일명")</td>
		<td>list-style:circle inside none</td>
		<td>list-style:none inside url("파일명")</td>
	</tr>
	<tr>
		<td>
			<ul class="cc1" type=>
				<li>짜장면</li>
				<li>우동</li>
				<li>탕수육</li>
				<li>팔보채</li>
			</ul>
		</td>
		
		<td>
			<ul class="cc2">
				<li>짜장면</li>
				<li>우동</li>
				<li>탕수육</li>
				<li>팔보채</li>
			</ul>
		</td>
		
		<td>
			<ul class="cc3">
				<li>짜장면</li>
				<li>우동</li>
				<li>탕수육</li>
				<li>팔보채</li>
			</ul>
		</td>
	</tr>
</table>
</body>
</html>