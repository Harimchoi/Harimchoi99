<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>16_this03.jsp</title>
<script>
	function person(first, last, age, eyecolor){ //객체생성
		this.firstName = first;
		this.lastName = last;
		this.age = age;
		this.eyecolor = eyecolor;
	}
	
	var p1 = new person("홍", "길동", 33, "파랑");
	var p2 = new person("배", "길동", 23, "노랑");
	
	alert(p1.age);
	alert(p1.lastName);
	alert(p2.firstName);
</script>
</head>
<body>

</body>
</html>