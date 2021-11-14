
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>    
<%
	///select로 내용 가져오기
	//1. db연결
	Class.forName("org.mariadb.jdbc.Driver");
	String db = "jdbc:mariadb://localhost:3306/second";
	Connection conn = DriverManager.getConnection(db,"root","1111");
	
	//2. 쿼리문 생성
	String sql = "select * from vote where id = 1";
	
	//3. 심부름군
	Statement stmt = conn.createStatement();	
	
	//4. 쿼리 실행
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
	
	int a1 = rs.getInt("a1"); // 첫번째 항목의 투표수
	int a2 = rs.getInt("a2"); // 두번째 항목의 투표수
	int a3 = rs.getInt("a3"); // 세번째 항목의 투표수
	int a4 = rs.getInt("a4"); // 네번째 항목의 투표수
	
	double tot = a1+a2+a3+a4; //총 투표자 수
	
	int p1 = (int)((a1/tot)*100); //첫번째 항목의 투표율
	int p2 = (int)((a2/tot)*100); //두번째 항목의 투표율
	int p3 = (int)((a3/tot)*100); //세번째 항목의 투표율
	int p4 = (int)((a4/tot)*100); //네번째 항목의 투표율
	//out.println(tot+","+p1+"<br>");
	//out.println(tot+","+p2+"<br>");
	//out.println(tot+","+p3+"<br>");
	//out.println(tot+","+p4+"<br>");
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vote_view.jsp</title>
<style>
	#gg{
		display:inline-block;
		background:red;
		height:25px;
	}
</style>
</head>
<body>
투표현황
<table width="500" align="center">
	<tr>
		<td colspan="3"><%=rs.getString("content") %></td>
	</tr>
	<tr>
		<td>이재명</td>
		<td><span id="gg" style="width:<%=p1*3%>px"></span></td>
		<td><%=a1%> : <%=p1%></td>
	</tr>
		<tr>
		<td>윤석열</td>
		<td><span id="gg" style="width:<%=p2*3%>px"></span></td>
		<td><%=a2%> : <%=p2%></td>
	</tr>
		<tr>
		<td>안철수</td>
		<td><span id="gg" style="width:<%=p3*3%>px"></span></td>
		<td><%=a3%> : <%=p3%></td>
	</tr>
		<tr>
		<td>심상정</td>
		<td><span id="gg" style="width:<%=p4*3%>px"></span></td>
		<td><%=a4%> : <%=p4%></td>
	</tr>
	<tr>
		<td colspan="3">
			<a href="vote.jsp">투표하기</a></td>
			<a href="vote_write.jsp">투표항목만들기</a></td>
	</tr>
</table>

</body>
</html>
<%
//5. 닫기
%>


s












