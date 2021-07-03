package Day0703;


import java.util.Random;
import java.util.Scanner;

public class Day05_3 {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		
		//판 생성 = 문자열 9개를 저장할 수 있는 배열
		
		String[] 게임판 = {"[ ]","[ ]","[ ]",
				"[ ]","[ ]","[ ]",
				"[ ]","[ ]","[ ]"};
		
		String 승리자 = " "; //승리 알을 저장하기 위한 변수
		
		
		
		while(true) { //게임 전체의 무한루프 [모든 알을 두었을때, 승리자가 나올경우 종료]
			
		//게임판 출력
		for( int i= 0; i<게임판.length;i++) {
			//3개 씩 출력 줄바꿈
			System.out.print(게임판[i]);
			if(i%3==2) System.out.println();
			}
		//종료 
		if(승리자.equals("[0]")) {
			System.out.println("[게임종료] : 플레이어 승리");
			break;
			}
		if(승리자.equals("[x]")) {
			System.out.println("[게임종료] : 컴퓨터 승리");
			break;			
			}
		
		while(true) {
		//플레이어에 입력받아 해당 위치에 알 두기
		System.out.println("[선택] : 두고자하는 위치 : ");
		int 플레이어 = scanner.nextInt(); //인덱스
		/*
		if(플레이어>=0&&플레이어<=8)
			게임판[플레이어] = "[O]"; //입력 받은 인덱스에 말 바구기
		*/
		if(플레이어<0||플레이어>8) 
			System.out.println("알수없는 번호입니다.");
		else if(!게임판[플레이어].equals("[ ]")) {
			System.out.println("[경고] 이미 알이 존재합니다.");
		}else {
			게임판[플레이어] = "[0]"; //입력 받은 인덱스에 말 바구기	
			break; //가장 가까운 반복문 탈출
		}	
	}//작은 while
		
		int 현재알수 = 0;
		for(int i =0;i<9;i++) {
			if(!게임판[i].equals("[ ]")) 현재알수++;
		}
		if(현재알수 == 9) {
			System.out.println("무승부");
			break; //while 게임무한루프 종료
		}
		
		while(true){
		Random random = new Random();
		int 컴퓨터 = random.nextInt(9);
		//Random random = new Random(); // 랜덤 객체 생성
		//int 컴퓨터 = random.nextInt(9); // 객체에서 정수 난수 가져오기
			//random.nextInt(); 0~2억 정도까지의 난수 생성
			//random.nextInt(); 0~9 난수 생성
			//random.nextInt(마지막번호); + 시작번호
			//random.nextInt(10)+10; 10~19까지 생성
		if(게임판[컴퓨터].equals("[ ]")) {게임판[컴퓨터] = "[x]"; break;}
		}
		
		//가로로 이기는 수
		for(int i=0; i<=6;i+=3) {
			if(게임판[i].equals(게임판[i+1])&&게임판[i+1].equals(게임판[i+2])) {
				if(!게임판[i].equals("[ ]")) 승리자 = 게임판[i];
			}
		}
		//세로로 이기는 수
		for(int i=0; i<=2;i++) {
			if(게임판[i].equals(게임판[i+3])&&게임판[i+3].equals(게임판[i+6])) {
				if(!게임판[i].equals("[ ]")) 승리자 = 게임판[i];
			}
		}
		
		//대각선으로 이기는수
		if(게임판[0].equals(게임판[4])&&게임판[4].equals(게임판[8])) {
			if(!게임판[0].equals("[ ]")) 승리자 = 게임판[0];
		}
		if(게임판[2].equals(게임판[4])&&게임판[4].equals(게임판[6])) {
			if(!게임판[2].equals("[ ]")) 승리자 = 게임판[2];
		}
		
		
		}//큰 while	

	}//method

}//class








/*
else if(게임판[i]==게임판[플레이어]  ) {
	System.out.println("똑같은 숫자를 입력하지 마세요");
	continue;
}
*/
/*
else if(플레이어>=9)
	System.out.println("0~8까지의 숫자만 입력받으세요");
	continue;
*/
//while


//이미 알이 있는 인덱스이면 다시 입력 받기
//0~8사이만 입력 받을 수 있게 제어
//컴퓨터 [난수 생성해서 알 두기]
//난수 생성 클래스 = Random
