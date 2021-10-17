<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_form-02.jsp</title>
<script>
	function check(){
		if(document.lys.name.value=="")//이름이 비어있다면
		{
			alert("이름을 입력하세요");
			return false;
		}
		if(document.lys.pwd.value=="")//비밀번호가 비어있다면
		{
			alert("비밀번호 입력하세요");
			return false;
		}
		if(document.lys.sogae.value=="")//소개가 비어있다면
		{
			alert("소개를 입력하세요");
			return false;
		}
		if(!document.lys.sung[0].checked && !document.lys.sung[1].checked)
			{
				alert("성별을 체크하세요");
				return false;
			}
		if(!document.lys.hobby[0].checked && !document.lys.hobby[1].checked)
		{
			alert("취미를 체크하세요");
			return false;
		}
		if(document.lys.phone.selectedIndex == 0) //0은 첫번째 option 태그에 있다는 뜻
		{
			alert("전화번호를 선택하세요");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<form name="lys" method="post" action="aa.jsp" onsubmit="return check()">
	 이름<input type="text" name="name"><p>
	 비번<input type="password" name="pwd"><p>
	 소개<textarea rows="5" cols="40" name="sogae"></textarea><p>
	 성별<input type="radio"	name="sung">남자
	    <input type="radio"	name="sung">여자<p>
	 취미<input type="checkbox" name="hobby">여행
	    <input type="checkbox" name="hobby">음악<p>
	 전화<select name=phone>
	 		<option>선택</option>
	 		<option>010</option>
	 		<option>011</option>
	 		<option>012</option>
	 	</select>
	 <input type="submit" value="전송">
	</form>
</body>
</html>