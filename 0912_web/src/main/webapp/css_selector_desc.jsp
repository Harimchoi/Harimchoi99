<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_selector_desc.jsp</title>
<style>
	div h3{ /*div태그의 자손중의 h3태그*/
		color:red;
	}
	div>h3{ /*div태그의 자식인 h3태그*/
		background:yellow;
	}
	son, office, home, .cls, #id, div>h3{
		color:fuchsia;
	}
</style>
</head>
<body>
<div>
	<h3>Child Selector_1</h3>
	<span>
		 <h3>Child Child selector-2</h3>
	</span>
</div>
<p>자식 선택자</p>
<h3>
	<son>12345</son><br/> <!-- 의미없는 태그들 son,std,office,home -->
	<std>최하림</std><br/>
	<tel>
		<office>02-2665-1872</office>
		<home>02-1234-1234</home>
	</tel>
</h3>
</body>
</html>