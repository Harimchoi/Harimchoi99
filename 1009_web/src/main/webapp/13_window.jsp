<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13_window.jsp</title>
<script>
	function win_open(){
		son = window.open("","aa","width=200, height=200"); //URL, name, 속성들
	}
	function win_close(){
		son.close();
	}
	
	function win_move(my){
		//alert(my.x.value);
		son.moveTo(my.x.value, my.y.value); //창을 이동시키는 것
	}
	
	function win_resize(my){
		
		son.resizeTo(my.xx.value, my.yy.value); //창의 사이즈를 변경하는 것
	}
</script>
</head>
<body>
윈도우 오픈 : <button onclick="win_open()">창열기</button>
윈도우 클로즈 : <button onclick="win_close()">창닫기</button> 
이동하기 <p>
<form name="lys">
x : <input type="text" name="x" size="3" value="500"><p>
y : <input type="text" name="y" size="3" value="500"><p>
	<input type="button" onClick="win_move(this.form)" value="이동하기"><p>
</form>

크기 변경<p>
<form name="lys">
x : <input type="text" name="xx" size="3" value="500"><p>
y : <input type="text" name="yy" size="3" value="500"><p>
<input type="button" onClick="win_resize(this.form)" value="변경하기"><p>
</form>



</body>
</html>