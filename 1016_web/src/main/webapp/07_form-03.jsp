<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_form-03.jsp</title>
<script>
	function check(){
		if(document.lys.name.value=="")
			{
				iname.innerText = "이름이 입력되지 않았습니다." //id값이 유일할때
				//document.getElementById("iname").innerText="";
				return false;
			}
		else{
			iname.innerText="";
		}
		if(document.lys.pwd.value=="")
			{
				ipwd.innerText="비밀번호를 넣으세요.";
				return false;
			}
		else{
			ipwd.innerText="";
		}
		if(document.lys.sogae.value=="")
		{
			isogae.innerHTML = "<font color=red>소개를 넣으세요</font>";
			return false;
		}
		else{
			isogae.innerHTML="";
		}
		chk1 = 0; //sung을 체크할 변수
		if(document.lys.sung[0].checked){
			chk1 = 1;
		}
		if(document.lys.sung[1].checked){
			chk1 = 1;
		}
		if(chk1 == 0){
			isung.innerText="성별을 입력하세요";
		}
		chk2 = 0;
		for(int i=0;i<9;i++){
			if(document.lys.hobby[i].checked)
				chk2=1;
		}
		if(chk2 == 0){
			ihobby.innerText="취미를 입력하세요";
		}
		/*
		if(document.lys.hobby[0].checked){
			chk2 = 1;
		}
		if(document.lys.hobby[1].checked){
			chk2 = 1;
		}
		if(chk2 == 0){
			ihobby.innerText="취미를 입력하세요";
		}
		*/
		/*
		if(!document.lys.sung[0].checked && !document.lys.sung[1].checked)
		{
			isung.innerText="  성별을 입력하세요";
			return false;
		}
		else{
			isung.innerHTML="";
		}
		if(!document.lys.hobby[0].checked && !document.lys.hobby[1].checked){
			ihobby.innerText = "  취미를 입력하세요";
			return false;
		}
		else{
			ihobby.innerHTML="";
		}
		*/
		if(document.lys.phone.selectedIndex==0){
			iphone.innerText="전화번호를 선택하세요";
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<form name="lys" method="post" action="aa.jsp" onsubmit="return check()">
	 이름<input type="text" name="name"><span id="iname"></span><p>
	 비번<input type="password" name="pwd"><span id="ipwd"></span><p>
	 소개<textarea rows="5" cols="40" name="sogae"></textarea><span id="isogae"></span><p>
	 성별<input type="radio"	name="sung">남자
	    <input type="radio"	name="sung">여자<span id="isung"></span><p>
	 취미<input type="checkbox" name="hobby">여행
	    <input type="checkbox" name="hobby">음악
	    <input type="checkbox" name="hobby">수영1
	    <input type="checkbox" name="hobby">수영2
	    <input type="checkbox" name="hobby">수영3
	    <input type="checkbox" name="hobby">수영4
	    <input type="checkbox" name="hobby">수영5
	    <input type="checkbox" name="hobby">수영6
	    <input type="checkbox" name="hobby">수영7
	    <input type="checkbox" name="hobby">수영8
	    <span id="ihobby"></span><p>
	 전화<select name=phone>
	 		<option>선택</option>
	 		<option>010</option>
	 		<option>011</option>
	 		<option>012</option>
	 	</select><span id="iphone"></span>
	 <input type="submit" value="전송">
	</form>
</body>
</html>