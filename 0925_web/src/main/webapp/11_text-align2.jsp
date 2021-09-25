<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11_text-align2.jsp</title>
<style>
	div{
		width:300px;
		background:yellow;
		height:100px;
		text-align:center;
		vertical-align: middle;
		border:1px solid black;
	}
	
	#bb{
		text-align:center;
		vertical-align:middle;
		display:table-cell; /*table속성을 주어서 vertical-align을 사용할 수 있도록 해준다.*/
	}
	.aa1{
		display:flex;
		align-items: flex-start; /*display:flex에서 가로 정렬방법*/
		justify-content: flex-start; /*display:flex에서 세로 정렬방법*/
	}
	.aa2{
		display:flex;
		align-items: center; /*display:flex에서 가로 정렬방법*/
		justify-content: center; /*display:flex에서 세로 정렬방법*/
	}
	.aa3{
		display:flex;
		align-items: flex-end; /*display:flex에서 가로 정렬방법*/
		justify-content: flex-end; /*display:flex에서 세로 정렬방법*/
	}
</style>
</head>
<body>
<h1>text-align, vertical-align 사용</h1>
<div id="bb">안녕하세요</div>

<h1>div에서 세로 정렬을 하는 방법2</h1>
<h2>flex를 이용</h2>
<div id="aa" class="aa1">안녕하세요</div>
<div id="aa" class="aa2">안녕하세요</div>
<div id="aa" class="aa3">안녕하세요</div>

</body>
</html>