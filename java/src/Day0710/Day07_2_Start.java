package Day0710;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;

public class Day07_2_Start {
	// 1. 다른 클래스에서 공통적인 메모리 => static
		//1. scanner
	public static Scanner scanner = new Scanner(System.in);
		//2. 리스트나 배열
	public static ArrayList<Member> members = new ArrayList<>();
		//ArrayList : 리스트 클래스
			//<제네릭> : 리스트객체에 담을 객체의 클래스
			 //리스트명.add(객체명) : 리스트에 객체 담기
			 //리스트.size() : 리스트내 객체 수
			 //리스트명.get(인덱스번호) : 리스트내 객체 호출
	public static void main(String[] args) {
		
		프로그램시작();
		
		
		
		
		
		
	}//main끝
	//프로그램 동작 메소드
	public static void 프로그램시작() {
		
		//파일에 존재하는 모든 회원을 리스트로 저장
		try {
			FileInputStream fileInputStream = new FileInputStream("c:/java/memberlist.txt");
			byte[] 바이트 = new byte[10000]; //객체 하나당 100바이트 정도
			
			fileInputStream.read(바이트);
			String 모든회원 =  new String(바이트); //바이트 => 문자열
			//회원별 구분
			String[] 회원 = 모든회원.split("\n");
				//문자열.split("기호") : 해당 
			System.out.println(회원[0]);
			System.out.println(회원[1]);
			System.out.println(회원[2]);
			
			//회원마다 회원 정보별 구분
			for(int i=0;i<회원.length-1;i++) {//공백도 회원이 되기 때문에 -1을 한다
				String[] 정보 =회원[i].split(",");
				System.out.println(정보.length);
				Member member = new Member(정보[0], 정보[1], 정보[2], Integer.parseInt(정보[3]), 정보[4], 
						Integer.parseInt(정보[5]), Integer.parseInt(정보[6]), 정보[7]);
				//문자열 String => 정수형 int
				//Integer.parseInt(문자열)
				
				members.add(member); //해당 멤버를 리스트에 담기
				
			}
			
			System.out.println(new String(바이트));
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		//static : 정적 변수 : 프로그램 시작 시 메모리 할당되고 모든 프로그램 종료시 메모리 초기화
			//단점 : 메모리 효율 감소 [ 모든 클래스에 사용되는 메모리 선언 ]
		while(true) {
			System.out.println("[[[회원제 커뮤니티]]]");
			System.out.println("1.로그인 2.회원가입 3.아이디찾기 4.비밀번호찾기 5.프로그램종료");
			System.out.println("[[선택 : "); int 선택 = scanner.nextInt();
			
			//멤버 임시 객체
			Member member = new Member();
			
			
			if(선택 == 1) {
				
			}
			else if(선택 ==2) {
				member.회원가입();
			}
			else if(선택 ==3) {}
			else if(선택 ==4) {}
			else if(선택 ==5) {
				System.err.println("\n[종료] 이용해주셔서 감사합니다.");
				break;
			}
			else {
				System.err.println("알수 없는 번호입니다");
			}
		}
	
	
	
		
		
		
		
		
		
		
	}
}//class끝
