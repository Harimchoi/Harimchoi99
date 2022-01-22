package myboard;

import java.sql.*;
import java.util.ArrayList;
import javax.servlet.*;


public class BoardDao {
	Connection conn;
	public BoardDao() throws Exception{
	//DB연결
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/first";
	conn=DriverManager.getConnection(url,"root","1111");
	}
	
	
	public ArrayList<BoardDto> list()throws Exception{
	
		String sql = "select * from student";
		
		Statement st = conn.createStatement();
		
		ResultSet rs = st.executeQuery(sql);
		
			
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		
		while(rs.next()) {
			BoardDto bdto = new BoardDto();
			bdto.setId(rs.getInt("id"));
			bdto.setName(rs.getString("name"));
			bdto.setEng(rs.getInt("Eng"));
			bdto.setHakbun(rs.getInt("Hakbun"));
			bdto.setKor(rs.getInt("Kor"));
			bdto.setMat(rs.getInt("Mat"));
		}
		
	}
}
