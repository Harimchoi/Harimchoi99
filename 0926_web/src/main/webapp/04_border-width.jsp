<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_border-width.jsp</title>
<style>
div{width:400px; height:30px; margin-top:20px; border-style:solid;}
#aa1{border-width:1px}
#aa2{border-width:10px}
#aa3{border-width:thick}
#aa4{border-width:medium}
#aa5{border-width:thin}
#aa6{border-width:10px 20px}
#aa7{border-width:10px 20px 30px 40px}

</style>
</head>
<body>
<h1>외곽선 굵기 : border-width: 값</h1>

<div id="aa1">border-width":1px</div>
<div id="aa2">border-width":10px</div>
<div id="aa3">border-width":thick</div>
<div id="aa4">border-width":medium</div>
<div id="aa5">border-width":thin</div>
<div id="aa6">border-width":10px 20px</div>
<div id="aa7">border-width":10px 20px 30px 40px</div>
</body>
</html>