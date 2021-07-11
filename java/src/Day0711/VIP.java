package Day0711;

public class VIP extends 회원  {
	
	String 회원등급;

	public VIP() {
		super();
		// TODO Auto-generated constructor stub
	}

	public VIP(String 아이디, String 비밀번호, String 회원등급) {
		super(아이디, 비밀번호);
		this.회원등급 = 회원등급;
	}

	@Override
	public void 회원정보() {
		super.회원정보();
		System.out.println("vip회원님의 등급 : "+this.회원등급);
	}
	
	
	
}
