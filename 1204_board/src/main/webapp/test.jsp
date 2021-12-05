<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
// 1. DB연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/my";
	Connection conn = DriverManager.getConnection(db, "root", "1111");
	
// 2. 쿼리생성
	String sql = "select * from board order by id desc";

// 3. 심부름꾼
	PreparedStatement pstmt = conn.prepareStatement(sql);

// 4. 쿼리실행

	ResultSet rs = pstmt.executeQuery();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메가IT게시판::list.jsp</title>
<link rel="stylesheet" href="board.css">
<script src="board.js"></script>
</head>
<body>
<%@ include file="title.jsp" %>
<table width="600" align="center" border="1px" >
	<tr class="title">
		<td width="50">번호</td>
		<td width="80">작성자</td>
		<td>제목</td>
		<td width="50">조회수</td>
		<td width="100">작성일</td>		
	</tr>
<%
// 5. 레코드 출력
int line = 0;
while(rs.next()){	// rs.next()는 다음 레코드로 이동, 레코드가 존재하면 true, 없으면 false
	
%>	
	<tr onMouseover="over(this)" onMouseout="out(this)" class="<%if(line%2==0){out.print("bg");}%>" onclick="location='readnum.jsp?id=<%=rs.getString("id")%>'" style="cursor:pointer">
		<td><%=rs.getString("id")%></td> <!-- DB의 필드명 -->
		<td><%=rs.getString("name")%></td>
		<td class="center">
		<%
		String title = rs.getString("title");
		if(16<title.length())
			title = title.substring(0, 5)+"...";
		%>
		<%=title%>
		</td>
		<td><%=rs.getString("readnum")%></td>
		<td><%=rs.getString("writeday")%></td>		
	</tr>
<%
line++;
}
%>
	<tr>
		<td colspan="5"><input type="button" value="글쓰기" onclick="location.href='write.jsp'"></td>
	</tr>
</table>
<%@ include file="bottom.jsp" %>
</body>
</html>
<%
//6. 닫기

pstmt.close();
conn.close(); 
%>