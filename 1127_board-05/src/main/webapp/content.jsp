<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//1.db연결
Class.forName("org.mariadb.jdbc.Driver");
String db = "jdbc:mariadb://localhost:3306/my";
Connection conn = DriverManager.getConnection(db,"root","1111");
	
	
//2.request된 id값 가져오기
String id = request.getParameter("id");

	
//3.쿼리 생성
String sql = "select * from student where id=?";

//4.심부름꾼
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, id);

//5.쿼리실행
ResultSet rs1 = pstmt.executeQuery();
rs1.next();
//6.닫기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메가 it 게시판 : content.jsp</title>
<link rel="stylesheet" href="board.css">
<script src="board.js"></script>
</head>
<body>
<%@ include file="title.jsp" %>
<!--  내용보기 시작 -->
<table width="600" align="center" border="1">
	<tr>
		<td class="title" width="120">이름</td>
		<td><%=rs1.getString("name")%></td>
		<td class="title">조회수</td>
		<td><%=rs1.getString("readnum")%></td>
		<td class="title">작성일</td>
		<td><%=rs1.getString("writeday")%></td>
	</tr>
	<tr>
		<td class="title">제목</td>
		<td colspan="5"><%=rs1.getString("title")%></td>
	</tr>
	<tr>
		<td class="title" style="height:350px">내용</td>
		<td colspan="5"><%=rs1.getString("content").replace("\r\n","<br>")%></td>
	</tr>
	<tr>
		<td colspan="6">
			<input type = "button" value="목록" onclick="location.href='list.jsp'" class="red">
			<input type = "button" value="수정" onclick="location.href='update.jsp?id=<%=id%>'">
			<input type = "button" value="삭제" onclick="location.href='delete.jsp?id=<%=id%>'">
			<input type = "button" value="글쓰기" onclick="location.href='write.jsp'">
		</td>	
</table>
<!--  내용보기 끝 -->
<br><br>
<!-- 댓글 입력 폼 시작 -->
<form method="get" action="dat_write_ok.jsp" name="form">
	<table width="600" border="1" align="center">
		<tr>
			<td><input type="text" name="name" size="6" placeholder="이름"></td>
			<td><textarea cols="50" rows="3" name="content"></textarea></td>
			<td><input type="password" name="pwd" size="6" placeholder="비밀번호"></td>
			<td>
			<input type="hidden" name="id">
			<input type="hidden" name="board_id" value="<%=id%>">
			<input type="submit" value="댓글" name="submit">			
			<input type="button" value="취소" name="reset" class="reset" onclick="edit_can()">
			</td>
		</tr>
	</table>

</form>
<!-- 댓글 입력 폼 끝 -->

<!-- 비밀번호 입력 후 삭제로 이동하는 영역(댓글삭제) 시작 -->
<form name="lys" method="get" action="dat_delete_ok.jsp" id="dat_del">
	<input type="hidden" name="id">
	<input type="hidden" name="board_id">
	<input type="password" name="pwd" size="8" placeholder="비밀번호">
	<input type="submit" value="댓글삭제">
	<input type ="button" value="취소" onclick="dat_del_reset()">
</form>

<!-- 비밀번호 입력 후 삭제로 이동하는 영역(댓글삭제) 끝 -->


<!-- 댓글 리스트 시작 -->
<%
//select

//1.db연결(위에서했음)

//2.sql문 작성
String sql_sel_dat = "select * from dat where board_id="+id+" order by id desc";

//3.심부름꾼
Statement stmt = conn.createStatement();

//4.sql 실행(resultset)
ResultSet rs2 = stmt.executeQuery(sql_sel_dat);
//5.출력
%>

	<!--현재 content의 글에 해당하는 댓글 출력 시작-->
	<table width="600" align="center" CLASS="dat_table">
	<%
		while(rs2.next()){
	%>
	<tr>
		<td width="120" class="center"><%=rs2.getString("name") %>, <%=rs2.getString("writeday")
		%><br><br>
		<td class="content"><%=rs2.getString("content").replace("\r\n","<br>") %><br><br></td>
		<td width="120">
		<span style ="float:right">
		<input type="button" value="수정" onClick="edit_form(<%=rs2.getString("id")%>,'<%=rs2.getString("name")%>','<%=rs2.getString("content").replace("\r\n","X!X")%>')">
		<%---- 수정시 필요한것 매개변수로 전송, 댓글id, name, content, board_id(다시 content로 돌아올때 필요한 값 --> --%>
		<input type="button" value="삭제" onClick="dat_del(<%=rs2.getString("id")%>,<%=id%>)">
		</span>
		</td>
	<% 		
		}
	%>
	</table>
<%
//6.닫기
%>

<!-- 댓글 리스트 끝 -->
<%@ include file="bottom.jsp" %>
</body>
</html>

















