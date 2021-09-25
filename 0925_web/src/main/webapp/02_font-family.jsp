<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_font-family.jsp</title>

<style>
div{font-size:25px;}
#aa{font-family:궁서}
#bb{font-family:나눔고딕}
#cc{font-family:Arial}
#dd{font-family:Arial,궁서,굴림체}
</style>

</head>
<body>
<h1>글씨체 속성</h1>
<h2 style="color:red">사용법=>font-family:폰트;</h2>
<h2 style="color:red">사용법=>font-family:폰트체1, 폰트체2, 폰트체3;<br>이렇게 정의하면 순서대로 갖고있는 폰트사용</h2>

<div>font-family:궁서;=><span id="aa">안녕하세요</span></div><p>
<div>font-family:나눔고딕;=><span id="bb">안녕하세요</span></div><p>
<div>font-family:Arial;=><span id="cc">안녕하세요</span></div><p>
<div>font-family:Arial,궁서,굴림체=><span id="dd">안녕하세요 hello</span></div><p>

</body>
</html>