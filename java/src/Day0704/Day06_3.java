package Day0704;

public class Day06_3 {

	public static void main(String[] args) {

		//클래스 : 
		
	//예1) 회원가입 => 한명당 5개 변수 => 1000명 =>5000개 변수 =>관리 x
		String 아이디 = "qwe";
		String 비밀번호 = "qwe";
		String 성명 = "qwe";
		String 이메일 = "qwe";
		String 전화번호 = "qwe";
	
	//예2) 회원가입
		String[][] 회원목록 = new String[1000][5];
		회원목록[0][0] = "qwe";
		회원목록[0][1] = "qwe";
		회원목록[0][2] = "qwe";
		회원목록[0][3] = "qwe";
		회원목록[0][4] = "qwe";
		
	//예3) 회원 클래스 [설계] -> 대량의 서로 다른 객체
	회원 temp = new 회원(); //1.회원 객체 만들기
	
	//1.회원 : 클래스명
		//2.temp : 객체명 => 임의값
			//3. new : 객체 생성 시 필수 사용 [메모리할당]
				//4. 회원() : 생성자 [객체 생성 시 초기값]
	
		temp.아이디 = "qwe";
		temp.비밀번호 = "qwe";
		temp.성명 = "qwe";
		temp.이메일 = "qwe";
		temp.전화번호 = 1234;
		
			//객체명.클래스멤버명  : . [접근연산자 : 객체가 해당 클래스의 멤버 사용가능]
		//회원2
		회원 temp2 = new 회원("asd","asd" ,"asd","asd",1234);
		
		//회원3
		회원 temp3 = new 회원("zxc","zxc");
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
