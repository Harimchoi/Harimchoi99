<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08_padding.jsp</title>
<style>
	div{
		width:400px; height:200px;
		border:10px solid blue;
		background:red;
		/*padding:40px;
		padding-top:40px;
		padding-left:40px;
		padding-right:100px;
		padding-bottom:100px;
		text-align:right;*/
		padding:10px 20px;
		/*padding : 10px 20px 30px 40px; 시계방향*/
	
	}
	#aa1{
		width:300px; height:100px;
		background:green;
		padding:0px;
	}
</style>
</head>
<body>
<h1>박스내의 padding값 : 박스내의 안쪽여백</h1>

<table width="900">
	<tr>
		<td>padding:10px</td>
		<td>padding:10px 20px</td>
	</tr>
	<tr>
		<td>
			<div>
				<div id="aa1">전체</div>
			</div>
		</td>
	</tr>
</table>
</body>
</html>