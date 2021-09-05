<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07-Anchor.jsp</title>
</head>
<body><!--  절대경로 링크 Anchor -->
<a href = "http://www.w3c.org" title="w3c">w3c 사이트</a><p/>
<a href = "http://www.w3c.org" target="_blank" title="w3c">w3c 사이트(blank)</a><p/>
<!--  _blank 새창으로 열기 self 자기창에다 열기-->
<a href = "http://www.w3c.org" target="_self" title="w3c">w3c 사이트(self)</a><p/>


<!-- 상대경로 링크 -->
<a href="01-Paragraph.jsp">01-Paragraph.jsp </a>
<a href="bbs/06-image.jsp">bbs/06-image.jsp</a>



</body>
</html>