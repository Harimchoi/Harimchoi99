package Day0711;

import java.util.ArrayList;
import java.util.Scanner;

public class Day08_7_ATM {
	//main 밖에 작성한 이유 : main 외에서도 사용[호출] 하기 위해
	public static Scanner scanner = new Scanner(System.in);
	//static : main메모리 우선할당 : 정적변수
	public static ArrayList<계좌> 계좌목록 = new ArrayList<>();
	
	
	public static void main(String[] args) {
		
		start();
		
	}
	
	public static void start() {
		while(true) {
			System.out.println("[[[ATM]]]");
			System.out.println("[[1.계좌생성 2.입금 3.출금 4.이체 5.계좌찾기 6.종료");
			int 선택 = scanner.nextInt();
			if(선택 == 1) {
				System.out.println("[1.신한은행 2.국민은행] : ");
				int 선택2 = scanner.nextInt();
				if(선택2 == 1) {
					신한은행 신한은행 = new 신한은행();
					신한은행.계좌생성();
				}
			}
			else if(선택 == 2) {
				if(선택 == 2) {
					System.out.println("[1.신한은행 2.국민은행] : ");
					int 선택2 = scanner.nextInt();
					if(선택2 == 1) {
						신한은행 신한은행 = new 신한은행();
						신한은행.입금();
					}
				}
			}
			else if(선택 == 3) {
				
					System.out.println("[1.신한은행 2.국민은행] : ");
					int 선택2 = scanner.nextInt();
					if(선택2 == 1) {
						신한은행 신한은행 = new 신한은행();
						신한은행.출금();
					}
				}
			
			else if(선택 == 4) {
			
					System.out.println("[1.신한은행 2.국민은행] : ");
					int 선택2 = scanner.nextInt();
					if(선택2 == 1) {
						신한은행 신한은행 = new 신한은행();
						신한은행.이체();
					}
				}
				
			
			else if(선택 == 5) {}
			else if(선택 == 6) {
				System.out.println("[[[ [종료] 이용해주셔서 감사합니다 ]]]");
				break;
			}
			else {System.out.println("알 수 없는 번호입니다.");}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//main
}//class
