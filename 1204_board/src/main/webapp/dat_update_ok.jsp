<%@page import="com.sun.net.httpserver.Authenticator.Result"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--//1. db연결 -->
<%@ include file="db.jsp" %> 
<%
/*2.수정하기 위한 폼 입력값 가져오기(사용자가 방금입력한 비밀번호 포함)*/
String id = request.getParameter("id");
String board_id = request.getParameter("board_id");
String name = request.getParameter("name");
String pwd = request.getParameter("pwd");
String content = request.getParameter("content");
String pager = request.getParameter("pager");



/*3.DB에 있는 비밀번호 가져오기
   3-1. 쿼리 생성(pwd가져오는 쿼리)*/
	String sql_pwd = "select pwd from dat where id=?";
	
/*   3-2. 심부름꾼 생성*/
	PreparedStatement pstmt = conn.prepareStatement(sql_pwd);
	pstmt.setString(1, id);
	
/*    3-3. 쿼리 실행*/
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
/* 4.비밀번호가 같다면(폼 vs db)*/
	if(rs.getString("pwd").equals(pwd))
	{
	/*4-1.쿼리 생성(수정하기 위한 쿼리)*/
		String sql_update = "update dat set name=?, content=? where id=?";

	/*4-2.심부름꾼 생성*/
		PreparedStatement pstmt2 = conn.prepareStatement(sql_update);
		pstmt2.setString(1, name);
		pstmt2.setString(2, content);
		pstmt2.setString(3, id);

	/*4-3.쿼리 실행*/
		pstmt2.executeUpdate();
		pstmt2.close();
	/*4-4.content.jsp돌아가기(board_id값 전송)*/
		response.sendRedirect("content.jsp?id="+board_id+"&pager="+pager);
	}

/* 5.같지 않다면  */
	else{
	/*5-1.content.jsp돌아가기(비밀번호 오류 경고 띄우기 위한 값 전송 : js로 처리해도 되고)*/
		response.sendRedirect("content.jsp?chk_dat=1&id="+board_id+"&pager="+pager);
	}
/* 6. 닫기 */
rs.close();
conn.close();

%>