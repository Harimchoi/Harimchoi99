<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%

//1.db연결
Class.forName("org.mariadb.jdbc.Driver");
String db = "jdbc:mariadb://localhost:3306/my";
Connection conn = DriverManager.getConnection(db,"root","1111");

//2.삭제하기 위한 폼 입력값 가져오기(사용자가 방금 입력한 비밀번호 포함)
String id = request.getParameter("id"); //dat테이블의 id
String board_id = request.getParameter("board_id"); //board 테이블의 id값
String pwd = request.getParameter("pwd"); //방금 삭제하려는 사용자의 비밀번호

//3.db에 있는 비밀번호 가져오기
  //3-1.쿼리생성(pwd가져오는 쿼리)
  String sql_select = "select pwd from dat where id=?";
  
  //3-2.심부름꾼 생성  
  PreparedStatement pstmt = conn.prepareStatement(sql_select);
  pstmt.setString(1, id);
  
  
  //3-3.쿼리 실행
  ResultSet rs = pstmt.executeQuery();
  rs.next();
  
//4.비밀번호가 같다면(폼 vs db)
 if(pwd.equals(rs.getString("pwd"))){
  
  //4-1 쿼리생성(삭제하기 위한 쿼리)
  String sql_delete = "delete from dat where id = ?";
  
  //4-2.심부름꾼 생성
  PreparedStatement pstmt2 = conn.prepareStatement(sql_delete);
  pstmt2.setString(1, id);
  
  //4-3.쿼리 실행
  pstmt2.executeUpdate();
  pstmt2.close();
  
//4-4.content.jsp돌아가기(board_id값 전송)
  response.sendRedirect("content.jsp?id="+board_id);
}
  
//5.같지 않다면
else{
	//5-1.content.jsp돌아가기(비밀번호 오류 경고 띄우기 위한 값 전송 : js로 처리해도 되고, jsp로 처리해도 됨)
	response.sendRedirect("content.jsp?chk_dat=1&id="+board_id);
}
  //6.닫기
  rs.close();
  pstmt.close();
  conn.close();
  
  
%>