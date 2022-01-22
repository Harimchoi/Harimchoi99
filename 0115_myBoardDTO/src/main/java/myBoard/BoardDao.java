package myBoard;

import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDao {
	Connection conn;
	public BoardDao() throws Exception {  //생성자에서 DB연결
	    // DB연결
	    Class.forName("com.mysql.jdbc.Driver");
	    String url="jdbc:mysql://localhost:3306/second";
	    conn=DriverManager.getConnection(url,"root","1111");
	}
    //DTO로 값을 가져올때 통째로 모든 레코드를 가져옵니다.
	//레코드 하나 하나가 모두 데이터<=DTO
	public ArrayList<BoardDto> list(HttpServletRequest request, HttpServletResponse response)throws Exception{
		// 테이블에 있는 내용을 읽어와서 현재 문서에 출력
	 	// page의 index값 생성  ****************
	 	 int pager;
	 	 if(request.getParameter("pager")==null) // 페이지값이 없다면 1페이지로 이동
	 		 pager=1;
	 	 else
	 	     pager=Integer.parseInt(request.getParameter("pager"));
	 	     // request한 값을 정수로 변환할때 null값이 오면 에러 발생
	 	 
	 	 int index=(pager-1)*10;
	         
	    // 쿼리 생성  ****************
	    String sql="select * from board order by id desc limit "+index+",10"; // desc:내림차순, asc:오름차순
	    
	    // 심부름꾼 생성k
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    
	    // 쿼리 실행
	    ResultSet rs=pstmt.executeQuery();
	    
	    ArrayList<BoardDto> list = new ArrayList<BoardDto>();
	    
	    	while(rs.next()) {
	    		BoardDto bdto = new BoardDto();
	    		bdto.setId(rs.getInt("id"));
	    		bdto.setName(rs.getString("name"));
	    		
	    		String title =rs.getString("title");
	    	       if(20<title.length())
	    	    	   title = title.substring(0, 20)+"...";
	    		
	    		bdto.setTitle(title);
	    		bdto.setContent(rs.getString("content"));
	    		bdto.setPwd(rs.getString("pwd"));
	    		bdto.setReadnum(rs.getInt("readnum"));
	    		bdto.setWriteday(rs.getString("writeday"));
	    		bdto.setPager(pager);
	    		
	    		list.add(bdto);
	    	}
	    
	    return list;
	}
	
	public int datCount(int id)throws Exception{
	   String sql2 = "select count(*) as cnt from dat where board_id="+id;
       PreparedStatement pstmt2=conn.prepareStatement(sql2);
       ResultSet rs2=pstmt2.executeQuery();
       rs2.next();     
       return rs2.getInt("cnt");
	}
	
	public String getPager(int pager)throws Exception{
		   // 사용자가 링크를 통해 원하는 페이지로 이동할수 있게 출력
	       // pstart : 링크의 시작   ,  pend : 링크의 끝
	 
	       int pstart=pager/10; //페이지의 시작
	       
	       if(pager%10 == 0) // 10의 배수
	        pstart -=1;
	       
	        //pstart=Integer.parseInt(pstart+"1"); // "01" => 1 , "11" => 11, "21" => 21
			pstart=pstart*10+1;    //"01" => 1 , "11" => 11, "21" => 21   		
	        
	        int pend=pstart+9; //31~ 40 , pend = 40
	        
	        
	        String sql2="select ceil(count(*)/10) as chong from board";
	        Statement stmt2=conn.createStatement();
	        ResultSet rs2=stmt2.executeQuery(sql2);
	        rs2.next();
	        //int cnt=rs2.getInt("cnt");   //총레코드 수
	        int chong=rs2.getInt("chong");  //38페이지이다
	        
	        if(pend>chong) //마지막페이지를 초과하는 출력이 불가능
	        pend = chong;
	        
	        String pg = pstart + "," + pend + "," + chong;
	        
	        return pg;	       
	}
	
	public BoardDto content(HttpServletRequest request) throws Exception {
		 // 사용자가 선택한 레코드 하나를 읽어와서 전체내용을 보여주기
	       
	    // 작업대상인 레코드의 id값을 가져오기
	    String id=request.getParameter("id");
	    
	    //페이지값 가져오기 ************
	    int pager =Integer.parseInt(request.getParameter("pager"));
	    
	    // 댓글의 수정,삭제시 비번 
	    String chk = request.getParameter("chk2");
	    
	    // 쿼리 생성
	    String sql="select * from board where id=?";
	    
	    // 심부름꾼 생성
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1, id);
	    
	    // 쿼리 실행
	    ResultSet rs=pstmt.executeQuery();
	    rs.next();
	    
	    BoardDto bdto = new BoardDto();
	    bdto.setId(rs.getInt("id"));
	    bdto.setName(rs.getString("name"));
	    bdto.setTitle(rs.getString("title"));
	    bdto.setWriteday(rs.getString("writeday"));
	    bdto.setContent(rs.getString("content").replace("\r\n","<br>"));
	    bdto.setPwd(rs.getString("pwd"));
	    bdto.setReadnum(rs.getInt("readnum"));	
	    bdto.setChk(chk);
	    bdto.setPager(pager);
	    
	    return bdto;
	}
	
	public ArrayList<DatDto> dat_List(int id)throws Exception{	
	 // 현재글에 대한 댓글테이블의 내용을 읽어오기
    // 쿼리 생성
    String sql2="select * from dat where board_id="+id+ " order by id desc";
    // 현재글에 해당되는 댓글만 가져오기 (board_id=> 현재글의 id값(board))
    Statement stmt2=conn.createStatement();
    ResultSet rs2=stmt2.executeQuery(sql2);
    
    ArrayList<DatDto> dat = new ArrayList<DatDto>();
    
    while(rs2.next()) {
    	DatDto ddto = new DatDto();
    	ddto.setId(rs2.getInt("id"));
    	ddto.setBoard_id(rs2.getInt("board_id"));
    	ddto.setName(rs2.getString("name"));
    	ddto.setPwd(rs2.getString("pwd"));
    	ddto.setContenet(rs2.getString("content").replace("\r\n","<br>")); //jsp화면상에 보여지는 content
    	ddto.setContentEdit(rs2.getString("content").replace("\r\n","x!x")); //jsp화면상에 보여지는 content
    	ddto.setWriteday(rs2.getString("writeday"));
    	
    	dat.add(ddto); // arraylist에 객체 하나를 생성해서 추가, while을 이용해서 레코드를 하나씩 계속 추가
    }
    
    return dat;
	
	}
	
	
}
