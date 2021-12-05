<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--//1. db연결 -->
<%@ include file="db.jsp" %> 
<%	

    //2-0. 페이지 계산하기
    int pager;

	if(request.getParameter("pager")==null)
		pager = 1;
	else
		pager = Integer.parseInt(request.getParameter("pager"));
		
	int index = (pager-1)*10;  //select sql문의 limit의 첫번째 index값 구하기 

	//2. 쿼리생성
	String sql = "select * from board order by id desc limit "+index+", 10";
	
	//3. 심부름꾼
	PreparedStatement pstmt = conn.prepareStatement(sql);
	//4. 쿼리 실행
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
<table width="700" align="center" border="1">
	<tr class="title">
		<td width="50">번호</td>
		<td width="80">작성자</td>
		<td>제목</td>
		<td width="50">조회수</td>
		<td width="100">작성일</td>		
	</tr>
	<%
	//5. 레코드 출력
	int line =0;
	while(rs.next()){ //rs.next()는 다음 레코드로 이동, 레코드가 존재하면 true, 없으면 false
	%>
	<tr onMouseover="over(this)" onMouseout="out(this)" class="<%if(line%2==0){out.print("bg");}%>" onclick="location='readnum.jsp?id=<%=rs.getString("id")%>&pager=<%=pager%>'" style="cursor:pointer">
		<td><%=rs.getString("id")%></td><!-- DB의 필드명 -->
		<td><%   //name 출력
		String name2=null;
		if(rs.getString("name").length()>4)
		{
			name2 = rs.getString("name").substring(0,3)+"..."; 
		}
		else{
			name2 = rs.getString("name");
		}
		%>
		<%=name2%></td>
		<td class="center">
		<%
		String title =rs.getString("title"); 
		if(20<title.length())
			title = title.substring(0, 20)+"...";
		 %>
		 <%=title%>
		 <img src="dat.gif">
		 <!-- board의 해당하는 게시글의 댓글의 갯수 시작-->
		 <%
		 String sql_datCount = "select count(*) as cnt from dat where board_id=?";
		 PreparedStatement pstmt2 = conn.prepareStatement(sql_datCount);
		 pstmt2.setString(1, rs.getString("id"));
		 ResultSet rs2 = pstmt2.executeQuery();
		 rs2.next();
		 %>
		 <%=rs2.getString("cnt")%>
		 <!-- board의 해당하는 게시글의 댓글의 갯수 끝-->
		</td>
		<td><%=rs.getString("readnum")%></td>
		<td><%=rs.getString("writeday")%></td>		
	</tr>
	<%
	line++;
	}
	
	while(line<10){
	%>
	<tr onMouseover="over(this)" onMouseout="out(this)" class="<%if(line%2==0){out.print("bg");}%>" >
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<%
	line++;
	}
	%>
	<tr>
		<td colspan="5"><input type="button" value="글쓰기" onclick="location.href='write.jsp'"></td>
	</tr>
	<!-- 페이지 시작 ********************* -->
	<tr>
	<%
	int pstart = pager/10;//pstart 계산 1단계
	
	if(pager%10==0) //pstart 계산 2단계
		pstart -= 1;
	
	pstart = pstart*10+1; //pstart 계산 3단계
	int pend = pstart + 9;
	
	//int pend = ; //페이지 끝
	%>
		<td colspan="5">
		<!-- 무조건 1페이지로 이동  시작 -->
		<span onClick="location='list.jsp?pager=1'" class="page link">↖</span>
		<!-- 무조건 1페이지로 이동  끝 -->
		<!-- 10페이지 단위로 이전으로 이동하기 시작 -->
		<%
			if(pstart != 1) {
		%>
			<span onClick="location='list.jsp?pager=<%=pstart-1%>'" class="page link">◀</span>
		<%
			}
			else
			{
		%>
			<span class="page">◀</span>
		<%
			}
		%>
		<!-- 10페이지 단위로 이전으로 이동하기 끝 -->
		<!-- 10페이지 단위로 다음으로 이동하기 위한 pend 값 계산 시작 -->
		<%
		 //전체 레코드 갯수에서 페이지 갯수 구하기.
		 String sql_Rcnt = "select ceil(count(*)/10) as cnt from board";
		 Statement stmt = conn.createStatement();
		 ResultSet rs1 = stmt.executeQuery(sql_Rcnt);
		 rs1.next();
		 int cnt = rs1.getInt("cnt"); //총페이지 갯수
		 
		 if(pager>cnt)
			 response.sendRedirect("list.jsp?pager="+cnt);
		 
		 if(pend>cnt)
			 pend=cnt;
		%>
		<!-- 10페이지 단위로 다음으로 이동하기 위한 pend 값 계산  끝 -->
		<!-- 페이지 출력 시작 -->
			<%
			String str=null;
			int cntPg=0;
				for(int i = pstart;i<=pend;i++)
				{
					if(i==pager)
						str ="style=color:red";
					else
						str = "";
					cntPg++;
			%>
			
		<span onclick="location='list.jsp?pager=<%=i%>'" class="page link" <%=str%>><%=i%></span>
			<%
				}
				while(cntPg<10){
			%>
				<span class="page">&nbsp;</span>		
			<%
			    cntPg++;
				}
			%>
			
		<!-- 페이지 출력 끝 -->
		<!-- 10페이지 단위로 다음으로 이동하기 시작 -->
		<%
			if(cnt != pend ) {
		%>
			<span onClick="location='list.jsp?pager=<%=pend+1%>'" class="page link">▶</span>
		<%
			}
			else
			{
		%>
			<span class="page">▶</span>
		<%
			}
		%>
		<!-- 10페이지 단위로 다음으로 이동하기 끝 -->
		<!-- 무조건 마지막페이지로 이동  시작 -->
		<span onClick="location='list.jsp?pager=<%=cnt%>'" class="page link">↗</span>
		<!-- 무조건 마지막페이지로 이동  끝 -->
		</td>
	</tr>
	<!-- 페이지 끝 ********************* -->
</table>
<%@ include file="bottom.jsp" %>
</body>
</html>
<%
//6. 닫기
pstmt.close();
conn.close();
 %>