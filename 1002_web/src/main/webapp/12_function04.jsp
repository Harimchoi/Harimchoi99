<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12_function04.jsp</title>
<script>  //매개변수 : 함수가 실행시 필요한 값을 전달

function hap1(){
	var kor = 70;
	var eng = 80;
	var mat = 90;
	var tot = kor+eng+mat;
	
	alert("합계 :" +tot);
}

function hap2(kor){
	//var kor = 70;
	var eng = 80;
	var mat = 90;
	var tot = kor+eng+mat;
	
	alert("합계 :" +tot);
}

function hap3(kor, eng){
	//var kor = 70;
	//var eng = 80;
	var mat = 90;
	var tot = kor+eng+mat;
	
	alert("합계 :" +tot);
}

</script>
</head>
<body>
<button onClick="hap1()">점수 계산</button>
<button onClick="hap2(70)">점수 계산</button>
<button onClick="hap3(70, 80)">점수 계산</button>
</body>
</html>









