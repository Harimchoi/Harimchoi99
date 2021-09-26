<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10_display.jsp</title>
<style>
	.aa{display:inline;}
	.bb{display:block;}
	.cc{
		width:150px;
		height:50px;
		background:yellow;
		border:1px solid blue;
		text-align:center;
	}
	.dd{
		display:inline;
		width:150px;
		height:50px;
		background:yellow;
		border:1px solid blue;
	}
	.ee{
		display:inline-block;
		width:150px;
		height:50px;
		background:yellow;
		border:1px solid blue;
	}
</style>
</head>
<body>
<h1>Display 속성(none, inline, block, inline-block)</h1>

<h2 style="color:blue">
	<p>1.block : 크기와 관계없이 1라인을 차지</p></h2>
		<div style="color:red">안녕하세요(div태그 => 1라인 전체 차지)</div>
		
<h2 style="color:blue">
	<p>2.inline: 자신의 크기만큼 자리차지</p></h2>
		<b style="color:red">하하하</b>
		<span style="color:red">호호호</span>
		<img src="dp.jpg" width="60"/>
		<u style="color:red">(b span img u 태그=>자신의 크기만 차지)</u>		
		
<h2 style="color:blue">
	<p>3. block속성을 inline속성으로<b style="color:red">(div는 block)</b><br/>
	<table width="800" border="1" cellspacing="0">
		<tr>
			<td>display 속성 추가 전</td>
			<td>display:inline 변경 후</td>
		</tr>
		
		<tr>
			<td align="center">
				<div>하하하</div>
				<div>호호호</div>
				<div>헤헤헤</div>
			</td>
			<td align="center">
				<div class ="aa">하하하</div>
				<div class="aa">호호호</div>
				<div class="aa">헤헤헤</div>
			</td>
		</tr>
	</table>
	
	<h2 style="color:blue">
	<p>4. inline속성을 block속성으로<b style="color:red">(div는 block)</b><br/>
	<table width="800" border="1" cellspacing="0">
		<tr>
			<td>display 속성 추가 전</td>
			<td>display:inline 변경 후</td>
		</tr>
		
		<tr>
			<td align="center">
				<span>하하하</span>
				<span>호호호</span>
				<span>헤헤헤</span>
			</td>
			<td align="center">
				<span class ="bb">하하하</span>
				<span class="bb">호호호</span>
				<span class="bb">헤헤헤</span>
			</td>
		</tr>
	</table>
	
<h2 style="color:blue">
	<p>5.display 속성 추가 전 </b><br/>
	<h3>
		width:150px;
		height:50px;
		background:yellow;
		border:1px solid blue;
	</h3>
	<div class="cc">하하하</div>
	<div class="cc">호호호</div>
	<div class="cc">헤헤헤</div>
	
<h2 style="color:blue">
	<p>6.display: inline 변경후: width와 height의 값은 적용되지 않는다. </b><br/>
	<h3>
		display:inline;
		width:150px;
		height:50px;
		background:yellow;
		border:1px solid blue;
	</h3>
	<div class="dd">하하하</div>
	<div class="dd">호호호</div>
	<div class="dd">헤헤헤</div>
	
	
<h2 style="color:blue">
	<p>7.display: inline-block변경후: width와 height의 값은 적용되지 않는다. </b><br/>
	<h3>
		display:inline-block;
		width:150px;
		height:50px;
		background:yellow;
		border:1px solid blue;
	</h3>
	<div class="ee">하하하</div>
	<div class="ee">호호호</div>
	<div class="ee">헤헤헤</div>
	
	
	
	
	

</body>
</html>