<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	
	<%@ include file= "db.jsp" %>
<%
//  선생님:board -> 나:student
	
	//2-0. 페이지계산하기
	int pager;

	if(request.getParameter("pager")==null)
		pager=1;
	else
		pager=Integer.parseInt(request.getParameter("pager"));
	
	int index = (pager-1)*10;


	//2.쿼리생성
	String sql = "select * from student order by id desc limit "+index+" , 10";
	
	//3.심부름꾼
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	//4.쿼리실행
	ResultSet rs = pstmt.executeQuery();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메가IT게시판 : list.jsp</title>
<link rel="stylesheet" href="board.css">
<script src="board.js"></script>
</head>
<body>
<%@ include file="title.jsp" %>
<table width="700" align="center" border="1">
	<tr>
		<td class="title" width="40">번호</td>
		<td class="title" width="80">작성자</td>
		<td class="title">제목</td>
		<td class="title" width="50">조회수</td>
		<td class="title" width="100">작성일</td>
	</tr>
	<%
	
	//5.레코드 출력
	int line=0;
	while(rs.next()){ //rs.next()는 다음 레코드로 이동, 레코드가 존재하면true, 없으면 false
	%>
	
	<tr onMouseover="over(this)" onMouseout="out(this)" class="<%if(line%2==0){out.print("bg");}%>"
	 onclick="location='readnum.jsp?id=<%=rs.getString("id")%>'" style="cursor:pointer">
		<td><%=rs.getString("id")%></td> <!-- DB의 필드명 -->
		<td><%=rs.getString("name")%></td>
		<td class="center">
		
		<%
		String title=rs.getString("title");
		if(20<title.length())
			title=title.substring(0,20)+"...";
		%>
		<%=title%>
		<img src="dat.gif">
		<!-- board의 해당하는 게시글의 댓글의 갯수 시작 -->
		<%
		String sql_datCount = "select count(*) as cnt from dat where board_id=?";
		PreparedStatement pstmt2 = conn.prepareStatement(sql_datCount);
		pstmt2.setString(1, rs.getString("id"));
		ResultSet rs2 = pstmt2.executeQuery();
		rs2.next();
		%>
		<%=rs2.getString("cnt")%>
		<!-- board의 해당하는 게시글의 댓글의 갯수 끝 -->
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
	
	<!-- 페이지 시작 ************************ -->
	<tr>
	<%
	int pstart = pager/10 ;//페이지시작
	
	if(pager%10==0)
		pstart -= 1;
	
	pstart = pstart*10+1;
	int pend = pstart + 9;
	//int pend = ; //페이지 끝
	%>
	<td colspan="5">
		<%
		for(int i = pstart; i<=pend;i++)
			{
		%>
		<a href="list.jsp?pager=<%=i %>"><%=i %></a>
		<% 
			}
		%>
	</td>
	</tr>
	<!-- 페이지 끝 ************************** -->
	
</table>
<%@ include file="bottom.jsp" %>
</body>
</html>
<% 
//6.닫기
pstmt.close();
conn.close();



%>
