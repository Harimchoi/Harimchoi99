<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--//1. db연결 -->
<%@ include file="db.jsp" %> 
<%
/*2.삭제하기 위한 폼 값 가져오기(사용자가 방금입력한 비밀번호 포함)*/
String id = request.getParameter("id");  //dat 테이블의 id값
String board_id = request.getParameter("board_id"); //board 테이블의 id값
String pwd = request.getParameter("pwd");  //방금 삭제하려는 사용자의 비밀번호



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
	/*4-1.쿼리 생성(삭제하기 위한 쿼리)*/
		String sql_delete = "delete from dat where id = ?"; //삭제

	/*4-2.심부름꾼 생성*/
		PreparedStatement pstmt2 = conn.prepareStatement(sql_delete);
		pstmt2.setString(1, id);

	/*4-3.쿼리 실행*/
		pstmt2.executeUpdate();
		pstmt2.close();
	/*4-4.content.jsp돌아가기(board_id값 전송)*/
		response.sendRedirect("content.jsp?id="+board_id+"&pager="+request.getParameter("pager"));
	}

/* 5.같지 않다면  */
	else{
	/*5-1.content.jsp돌아가기(비밀번호 오류 경고 띄우기 위한 값 전송 : js로 처리해도 되고)*/
		response.sendRedirect("content.jsp?chk_dat=1&id="+board_id+"&pager="+request.getParameter("pager"));
	}
/* 6. 닫기 */
rs.close();
conn.close();

%>