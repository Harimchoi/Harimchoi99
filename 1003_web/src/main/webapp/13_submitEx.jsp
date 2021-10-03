<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13_submitEx.jsp</title>
<script>
	function check(my){
		if(my.name.value==""){
			alert("이름을 적어주세요");
			my.name.focus();
			return false;
		}
		else if(my.pwd.value==""){
			alert("비밀번호를 적어주세요");
			my.pwd.focus();
			return false;
		}
		else if(my.subject.value==""){
			alert("제목을 적어주세요");
			my.subject.focus();
			return false;
		}
		else if(my.content.value==""){
			alert("내용을 적어주세요");
			my.content.focus();
			return false;
		}
		else
			return true;
	}
	function imsi(my){
		if(my.value=="이름을 입력하세요")
			my.value="";
	}
</script>
<style>
	tr{text-align:center}
/*
	table{
		padding:0;
		margin:auto;
	}
	*/
</style>
</head>
<body>
<form action="a.jsp" method="post" name="lys" onSubmit="return check(this)">
<table width="1000">
	<caption>게시판</caption>
	<tr>
		<td width="200">작성자</td>
		<td><input type="Text" name="name" value="이름을 입력하세요" onfocus="imsi(this)"/></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="text" name="pwd" value="비밀번호를 입력하세요" onfocus="imsi(this)"/></td>
	</tr>
	<tr>
		<td>제목</td>
		<td><input type="text" name="subject" value="제목을 입력하세요"  onfocus="imsi(this)"/></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><textarea rows="15" cols="80" name="content" onfocus="imsi(this)"/></textarea>
	</tr>
	<tr align="center">
		<td colspan="2">
		<input type="reset" value="초기화"/>
		<input type="submit" value="작성하기"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>