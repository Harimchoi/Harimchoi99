<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--select를 위한 db연결시작--%>
<%
	//1.db접속
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/second";
	Connection conn = DriverManager.getConnection(db,"root","1111");

	//2.sql문장만들기
	String sql = "select * from memo order by id desc";
	//3.심부름꾼
	Statement stmt = conn.createStatement();

	//4.쿼리 실행
	ResultSet rs = stmt.executeQuery(sql);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memo.jsp</title>
<style>
	#del{
		width:160px;
		height:30px;
		border:1px solid red;
		position:absolute;
		padding-top:5px;
		padding-left:8px;
		background:white;
		visibility:hidden;
	}
	#edit{
		visibility : hidden;
	}
</style>
<script>
<%
	if(request.getParameter("chk")!=null){ //비밀번호가 틀리면
%>
	alert("비밀번호 오류");
<%
	}	
%>
	//삭제하기 폼 나타내기
	function del_view(id){
		var x = event.clientX;
		var y = event.clientY;
		document.getElementById("del").style.visibility="visible";
		document.getElementById("del").style.left = x+10+"px";
		document.getElementById("del").style.top = y+10+"px";
		
		document.del.id.value = id;
		event.stopPropagation();
	}
	//삭제하기 폼 숨기기
	function del_hide(){
		document.getElementById("del").style.visibility="hidden";
	}
	document.onclick=del_hide;
	//수정하기 폼 나타내기, 저장폼 숨기기
	function update(id, name, content){
		document.getElementById("edit").style.visibility = "visible";
		document.getElementById("write").style.display = "none";
		document.edit.id.value = id;
		document.edit.name.value = name;
		document.edit.content.value = content;
	}
	//수정 취소, 저장폼 보이기
	function editCs(){
		document.getElementById("edit").style.visibility="hidden";
		document.getElementById("write").style.display="inline";
	}
	//tr컬러변경
	function mover(ok){
		ok.style.backgroundColor = "#32CD32";
	}
	function mout(ok){
		ok.style.backgroundColor = "";
	}
</script>
</head>
<body>
<!-- 삭제 폼 시작 -->
<!-- 삭제 폼 끝 -->
<div id="del" onclick="event.stopPropagation();">
	<form action="memo_delete-ok.jsp" name="del">
		<input type="password" name="pwd" size="5" placeholder="비밀번호">
		<input type="hidden" name="id">
		<input type="submit" value="삭제">
	</form>
</div>
<!--  리스트 시작 -->
<table width="700" align="center">
	<tr align="center">
		<td>이름</td> <!-- 클릭하면 삭제 -->
		<td>내용</td> 
		<td>작성일</td> <!--  클릭하면 수정 -->
	</tr>
	<!-- select 결과값 출력시작 -->
	<%
		while(rs.next()){
	%>
		<tr align="center" bgcolor="#7CFC00" onMouseover="mover(this)" onMouseout="mout(this)"> <!--  select 내용을 while문으로 출력할 부분 -->
		<td onclick = "del_view(<%=rs.getString("id") %>)" style="cursor:pointer"><%=rs.getString("name")%></td> <!-- 클릭하면 삭제 -->
		<td style="cursor:default"><%=rs.getString("content")%></td> 
		<td onClick="update(<%=rs.getString("id") %>,'<%=rs.getString("name")%>', '<%=rs.getString("content")%>')"
		    style="cursor:pointer"><%=rs.getString("writeday")%></td> <!--  클릭하면 수정 -->
	</tr>
	<%
		}
	%>
</table>
<!-- 리스트 끝 -->

<!-- 입력 폼 시작 -->
<form action="memo_ok.jsp" method="get" id="write">
	<table width="700" align="center">
	<tr>
		<td><input type="text" name="name" size="5" placeholder="이름"></td>
		<td><input type="text" name="content" size="60" placeholder="내용 입력"></td>
		<td><input type="text" name="pwd" size="5" placeholder="비밀번호"></td>
		<td><input type="submit" value="저장"></td>
	</table>
	</form>
<!-- 수정 폼 시작 -->
<form action="memo_update_ok.jsp" method="get" name="edit" id="edit">
	<table width="700" align="center">
	<tr>
		<td><input type="text" name="name" size="5" placeholder="이름"></td>
		<td><input type="text" name="content" size="60" placeholder="내용 입력"></td>
		<td><input type="text" name="pwd" size="5" placeholder="비밀번호">
			<input type="hidden" name="id">
		</td>
		<td><input type="submit" value="수정">
			<input type="button" value="취소" onClick="editCs()">
		</td>
	</table>
	</form>
</body>
</html>
<%
//5.닫기
rs.close();
conn.close();
%>