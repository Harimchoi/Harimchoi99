package Day0711;

public class 관리자 extends 회원 {
	
	String 관리자직급;

	public 관리자() {
		super();
		
	}

	public 관리자(String 아이디, String 비밀번호, String 관리자직급) {
		super(아이디, 비밀번호);
		this.관리자직급 = 관리자직급;
	}

	@Override
	public void 회원정보() {
		// TODO Auto-generated method stub
		super.회원정보();
		System.err.println("관리자회원의 직급 : "+this.관리자직급);
	}
	
	
	
}
