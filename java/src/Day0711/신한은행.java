package Day0711;

public class 신한은행 extends 계좌 {
	
	private final int 은행코드 = 10;

	
	
	public 신한은행() {
		super();
		
	}

	public 신한은행(String 계좌번호, int 비밀번호, String 계좌주, int 금액) {
		super(계좌번호, 비밀번호, 계좌주, 금액);
		
	}

	public 신한은행(String 계좌번호, int 비밀번호, String 계좌주) {
		super(계좌번호, 비밀번호, 계좌주);
		
	}
	
	@Override
	public void 계좌생성() {
		System.out.println("[[[ 신한은행 계좌 생성 ]]]");

		System.out.println("[[[ 계좌생성 화면 ]]]");
		System.out.println("계좌번호 : "); 
		String 계좌번호 = Day08_7_ATM.scanner.next();
		for(계좌 temp : Day08_7_ATM.계좌목록) {
			if(temp.get계좌번호().equals(계좌번호)) {
				System.out.println("동일한 계좌번호가 있습니다.");
				return;
			}
		}
		
		System.out.println("비밀번호 : "); 
		int 비밀번호 = Day08_7_ATM.scanner.nextInt();
		//제어 4자리수
		String s비밀번호 = Integer.toString(비밀번호);
			//Integer.toString(숫자); 숫자열 => 문자열
		
		if(s비밀번호.length() != 4) {
				//문자열.length : 문자열 길이[ 글자수 ]
			System.err.println("[실패] 비밀번호는 4자리 입니다");
			return;
		}
		//System.out.println(s비밀번호);
		
		System.out.println("계좌주 : "); 
		String 계좌주 = Day08_7_ATM.scanner.next();
	
		신한은행 temp = new 신한은행(계좌번호, 비밀번호, 계좌주);
		Day08_7_ATM.계좌목록.add(temp);
		System.err.println("[완료] 신한은행 계좌 생성이 되었습니다");
	
	}
	@Override
	public void 입금() {
		System.out.println("신한은행 입금 화면");
		super.입금();
	}

	@Override
	public void 출금() {
		System.out.println("신한은행 출금 화면");
		super.출금();
	}

	@Override
	public void 이체() {
		System.out.println("신한은행 이체 화면");
		super.이체();
	}
	
	
	
	



}
