package Day0703;

public class Day05_1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//제어문 : if[논리(t/f)제어], switch[ 데이터 검사 ]
			//if : 경우의 수가 정해져있지 않는경우
				//true이면 실행문처리후 모든 if종료
			// switch : 경우의 수가 정해져있는 경우[속도빠름]
				//case를 검사후 아래 모든 case 처리 => break;[반복문 혹은 switch 탈출]
		
		
		if(5>3) System.out.println("5가크다");
		else System.out.println("5가작다");
		
		switch(5) { 
			case 5: System.out.println("5입니다.");
			case 3 : System.out.println("3입니다");
		}
///////////////////////////////////////////////////////////////////////
		int 번호 = 3;
		if(번호 == 1) System.out.println("1입니다.");
		else if(번호 == 2) System.out.println("2입니다");
		else if(번호 == 3) System.out.println("3입니다.");
		
		switch(번호) {
			case 1 : System.out.println("1입니다.");
			case 2 : System.out.println("2입니다.");
			case 3 : System.out.println("3입니다.");
		}
//////////////////////////////////////////////////////////////////////
		
		int 점수 = 80;
		
		switch(점수) {//switch와 break는 세트!!
			case 90 : System.out.println("a등급"); break;
			case 80 : System.out.println("b등급"); break;
			case 70 : System.out.println("c등급"); break;
			default : System.out.println("탈락");
		}
//////////////////////////////////////////////////////////////////////
		
		int 점수1 = 80;
		int 점수2 = 90;
		int 점수3 = 100;
		
		System.out.println("세 점수의 평균을 구합니다. : ");
		int sum = 점수1 + 점수2 +점수3;
		int avg = sum / 3;
		
		/*
		if(avg>=90) {
			System.out.println("a등급");
		}
		else if(avg>=80) {
			System.out.println("b등급");
		}
		else if(avg>=70) {
			System.out.println("c등급");
		}
		else
			System.out.println("탈락");
		*/

		//90점 이상 :a 80이상 :b 70이상 :c
		
		switch(avg/10){
			case 10:
			case 9 : System.out.println("a등급"); break;
			case 8 : System.out.println("b등급"); break;
			case 7 : System.out.println("c등급"); break;
			default : System.out.println("탈락");
		}
		
//////////////////////////////////////////////////////////////////////
		//반복문 : for, while
			//for : 코드 간결성 
		// while : 무한루프 => while(true) {}
		for(int i=0; i<10; i++) {
			//초기값 ; 조건문 ; 증감식
			System.out.print(i+"\t");
		}
		
		System.out.println();
		
		int i = 0; // 초기값
		
		while(i<10) { //조건문
			System.out.print(i+"\t");
			i++; //증감식
		}
		
		System.out.println();
		
//////////////////////////////////////////////////////////////////////
		
		int j = 0;
		while(true) {//while(조건문)
			
			System.out.println("무한반복" + j);
			if( j == 10) break;
			j++;
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		//반복문 :for, while
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
