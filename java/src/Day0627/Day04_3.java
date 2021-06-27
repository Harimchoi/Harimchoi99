package Day0627;

import java.util.Random;
import java.util.Scanner;

public class Day04_3 {
	//가위바위보 게임
	  // 1. 가위 바위 보 중 하나를 입력받아 승패 결정
	  // 2. 컴퓨터는 랜덤 사용
	  // 3. 게임 여러번 진행해서 최종 승리자
	/*
	4번 입력하면 반복문 종료
	 1.게임횟수 출력
	 2. 가장 많이 이긴 최종승리자
	 */
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int 게임횟수 = 0;
		int 플레이어승리 = 0;
		int 컴퓨터승리 = 0;
		while(true) {//무한루프
			
			//플레이어
			System.out.println("가위[0] 바위[1] 보[2] 중 선택 : ");
			int 플레이어 = scanner.nextInt();
			if(플레이어 == 0)
				System.out.println("가위를 선택했습니다.");
			else if(플레이어 ==1)
				System.out.println("바위를 선택했습니다.");
			else if(플레이어 ==2)
				System.out.println("보를 선택했습니다.");
			else if(플레이어 ==4) {
				System.out.println("게임 횟수 : "+게임횟수);
				System.out.println("플레이어 승리 : "+플레이어승리);
				System.out.println("컴퓨터 승리 : "+컴퓨터승리);
				
				if(플레이어승리>컴퓨터승리) {
					System.out.println("최종승리자 : 플레이어");
				}
				else if(컴퓨터승리>플레이어승리) {
					System.out.println("최종승리자 : 컴퓨터");
				}
				else {
					System.out.println("우열을 가릴 수 없습니다.");
				}
				
				break;
			}
			else
				System.out.println("[경고] 알 수 없는 번호입니다.");
			
			
			//컴퓨터 => 랜덤 이용한 난수 생성[Random : 랜덤 관련된 메소드 제공]
			Random random = new Random(); // 랜덤 객체 만들기
			int 컴퓨터 = random.nextInt(3); //랜덤 객체에서 난수 가져오기 [ .nextInt(숫자) 0~숫자전까지 난수생성 ]
			if(컴퓨터 == 0)
				System.err.println("가위를 선택했습니다.");
			else if(컴퓨터 ==1)
				System.err.println("바위를 선택했습니다.");
			else if(컴퓨터 ==2)
				System.err.println("보를 선택했습니다.");
			
			//이기는 경우의 수
			//플레이어
			if((플레이어==0&&컴퓨터==2)||(플레이어==1&&컴퓨터==0)||(플레이어==2&&컴퓨터==1)) {
				System.out.println("플레이어가 이겼습니다.");
				플레이어승리++;
			}
			else if((플레이어==0&&컴퓨터==0)||(플레이어==1&&컴퓨터==1)||(플레이어==2&&컴퓨터==2)) {
				System.out.println("비겼습니다.");
			
				
			}
			else {
				System.out.println("컴퓨터가 이겼습니다.");
				컴퓨터승리++;
			}
			게임횟수++;
		}
		/*
		4번 입력하면 반복문 종료
		 1.게임횟수 출력
		 2. 가장 많이 이긴 최종승리자
		 */
		
		
			
		}//w end
	
	}


