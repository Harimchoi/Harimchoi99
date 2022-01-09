package myboard;

import java.sql.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;


public class BoardDao {
	Connection conn;
	public BoardDao() throws Exception { //생성자를 이용해서 DB연결을 하여, 객체가 생성 될때 연결 될 수 있도록 한다.
		// DB연결
	   	Class.forName("org.mariadb.jdbc.Driver");
	    String url = "jdbc:mariadb://localhost:3306/my";
	    conn = DriverManager.getConnection(url,"root","1111");
	}
	
	public ResultSet list() throws Exception
	{
		// 테이블에 있는 내용을 읽어와서 현재 문서에 출력
	    
	         
	    // 쿼리 생성
	    String sql="select * from board order by id desc";
	    
	    // 심부름꾼 생성
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    
	    // 쿼리 실행
	    ResultSet rs=pstmt.executeQuery();
	    
	    return rs;
	}

	public void write_ok(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	        
	    // 폼태그에 입력된 값 읽어오기
	    request.setCharacterEncoding("utf-8");
	    String name=request.getParameter("name");
	    String title=request.getParameter("title");
	    String content=request.getParameter("content");
	    String pwd=request.getParameter("pwd");
	    
	    // 쿼리 생성
	    String sql="insert into board(name,title,content,pwd,writeday) ";
	    sql=sql+"values(?,?,?,?,now())";
	    
	    // 심부름꾼 생성
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1, name);
	    pstmt.setString(2, title);
	    pstmt.setString(3, content);
	    pstmt.setString(4, pwd);
	    
	    // 쿼리 실행
	    pstmt.executeUpdate();
	    
	    // close
	    pstmt.close();
	    conn.close();
	    
	    // list이동
	    response.sendRedirect("list.jsp");
	}
	
	public void readnum(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	          
	    // 작업대상인 레코드의 id값을 가져오기
	    String id=request.getParameter("id");
	    
	    // 쿼리생성
	    String sql="update board set readnum=readnum+1 where id=?";
	    
	    // 심부름꾼 생성
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1, id);
	    
	    // 쿼리 실행
	    pstmt.executeUpdate();
	    
	    // close
	    pstmt.close();
	    conn.close();
	    
	    // 이동(content)
	    response.sendRedirect("content.jsp?id="+id);
	}
	
	public ResultSet content(HttpServletRequest request) throws Exception {
		
	    
		// 작업대상인 레코드의 id값을 가져오기
	    String id = request.getParameter("id");
	    
	    // 쿼리 생성
	    String sql="select * from board where id=?";
	    
	    // 심부름꾼 생성
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    pstmt.setString(1, id);
	    
	    // 쿼리 실행
	    ResultSet rs=pstmt.executeQuery();
	  
	    return rs;
	}

	public ResultSet update(HttpServletRequest request) throws Exception{
		 // 사용자가 선택한 레코드 하나를 읽어와서 전체내용을 보여주기
	    
	              
	    // 작업대상인 레코드의 id값을 가져오기
	    String id=request.getParameter("id");
	    
	    // 쿼리 생성
	    String sql="select * from board where id=?";
	    
	    // 심부름꾼 생성
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1, id);
	    
	    // 쿼리 실행
	    ResultSet rs=pstmt.executeQuery();
	    return rs;
	}

	public void update_ok(HttpServletRequest request, HttpServletResponse response) throws Exception{
	         
	     // 값 읽어오기
	     request.setCharacterEncoding("utf-8");
	     String id=request.getParameter("id");
	     String name=request.getParameter("name");
	     String title=request.getParameter("title");
	     String content=request.getParameter("content");
	     String pwd=request.getParameter("pwd");
	     
	     // DB에 저장된 pwd읽어오기
	     String sql2="select * from board where id=?";
	     PreparedStatement pstmt2=conn.prepareStatement(sql2);
	     pstmt2.setString(1, id);
	     ResultSet rs2=pstmt2.executeQuery();
	     rs2.next();
	     
	     if(pwd.equals(rs2.getString("pwd")))
	     {
	     	String sql="update board set name=?,title=?,content=? where id=?";
	     	PreparedStatement pstmt=conn.prepareStatement(sql);
	     	pstmt.setString(1, name);
	     	pstmt.setString(2, title);
	     	pstmt.setString(3, content);
	     	pstmt.setString(4, id);
	     	pstmt.executeUpdate();
	     	pstmt.close();
	     	conn.close();
	     	
	     	response.sendRedirect("content.jsp?id="+id);
	     }
	     else
	     {
	     	conn.close();
	     	response.sendRedirect("update.jsp?id="+id);
	     }
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception{
	                  
	    // 입력값
	    String id=request.getParameter("id");
	    String pwd=request.getParameter("pwd");
	    
	    // DB에 저장된 pwd읽어오기
	    String sql2="select * from board where id=?";
	    PreparedStatement pstmt2=conn.prepareStatement(sql2);
	    pstmt2.setString(1, id);
	    ResultSet rs2=pstmt2.executeQuery();
	    rs2.next();
	    
	    if(pwd.equals(rs2.getString("pwd")))
	    {
	    	String sql="delete from board where id=?";
	    	PreparedStatement pstmt=conn.prepareStatement(sql);
	    	pstmt.setString(1, id);
	    	pstmt.executeUpdate();
	    	pstmt.close();
	    	conn.close();
	    	
	    	response.sendRedirect("list.jsp");
	    }
	    else
	    {
	    	conn.close();
	    	response.sendRedirect("content.jsp?id="+id);
	    }
	    
	}
}
