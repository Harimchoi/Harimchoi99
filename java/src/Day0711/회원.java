package Day0711;

public class 회원 {
	String 아이디;
	String 비밀번호;
	
	public 회원() {
		// TODO Auto-generated constructor stub
	}

	public 회원(String 아이디, String 비밀번호) {
		super();
		this.아이디 = 아이디;
		this.비밀번호 = 비밀번호;
	}
	
	public void 회원정보() {
		System.out.println("회원아이디 : "+this.아이디);
		System.out.println("회원비번 : "+this.비밀번호);
	}
	
}
