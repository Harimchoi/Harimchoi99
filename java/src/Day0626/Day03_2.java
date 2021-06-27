package Day0626;

import java.util.Scanner;

public class Day03_2 {
	//제어문 : 경우에 따른 판단력
	  // if[논리검사], switch[값 검사],
	
	// if 형태
	public static void main(String[] args) {
		//if 형태
		  //만약에 ~~ 이면
		  //1. if(T / F) 실행문;
		  //2. if(T / F) T실행문;
		  //   else F실행문;
		  //3. if(T / F) { 실행문; 실행문2;}
		  //4. if(T / F) 실행문;
		  //   else if(T / F) 실행문[T2];
		  //   else if(T / F) 실행문[T3];
		  //   else if(T / F) 실행문[T4];
		  //   else
		if(5>3) System.out.println("5가크다");
		
		if(5>10) System.out.println("5가작다");
		
		if(5>3) System.out.println("5가 크다");
		else System.out.println("5가 작다");
		
		if(5>3) {
			System.out.println("true");
			System.out.println("5가크다4");
		}
		else 
			{
			System.out.println("false"); 
			System.out.println("5가작다4");
			}
		
		if(5>10) System.out.println("5가 크다1 ");
		else if(5>8) System.out.println("5가 크다2");
		else if(5>6) System.out.println("5가 크다3");
		else if(5>4) System.out.println("5가 크다4");
		else System.out.println("5보다 작은 데이터가 없다");
		
		//문제1 : 하나의 정수를 입력받아 80점 이상이면 합격 아니면 불합격 출력
		
		/*
		System.out.println("점수를 입력하세요");
		Scanner scanner = new Scanner(System.in); //입력객체
		int score1 = scanner.nextInt();
		
		if(score1 >= 80)
			System.out.println("합격");
		else
			System.out.println("불합격");
		*/
		//문제2 : 하나의 정수를 입력받아 90점 이상이면 a , 80점이상이면 b, 그 외 탈락
		
		/*
		System.out.println("점수2 입력 :");
		int score2 = scanner.nextInt();
		if(score2 >= 90)
			System.out.println("A등급");
		else if(score2 >= 80)
			System.out.println("b등급");
		else
			System.out.println("탈락");
			*/
		
		
		//문제3 : 하나의 정수와 성별을 입력받아
		  //남자이면서 90점 이상이면 A-1 클래스 출력
		  //여자이면서 90점 이상이면 A-2 클래수 출력
		//남자이면서 80점 이상이면 B-1 클래스 출력
		//여자이면서 80점 이상이면 B-2 클래스 출력
		//그 외 C클래스
		Scanner scanner = new Scanner(System.in);
		/*
		System.out.println("점수와 성별을 입력하세요");
		System.out.print("점수 : ");
		int score3 = scanner.nextInt();
		System.out.print("성별 : ");
		String man = scanner.next();
		*/
		/*
		 방법 1번 
		 
		if(man.equals("남자")&& score3>=90) { // 문자는 비교, 산술, 증감연산자 사용불가
			System.out.println("A-1 클래스");
		}
		else if(man.equals("여자") && score3>=90) {
			System.out.println("A-2 클래스");
		}
		else if(man.equals("남자") && score3>=80) {
			System.out.println("B-1 클래스");
		}
		else if(man.equals("여자") && score3>=80) {
			System.out.println("B-2 클래스");
		}
		else {
			System.out.println("C");
		}
		*/
		//남여를 나누어서 한다.
		//방법 2번
		/*
		if(man.equals("남자")) {
			if(score3 >= 90) System.out.println("A-1클래스");
		}
		else if(man.equals("여자")) {
			
		}
		else {
			
		}
		*/
		
		//문제4 : 2개 정수를 입력받아 가장 큰수 출력
		/*
		System.out.println("정수 2개를 입력하세요");
		int num1 = scanner.nextInt();
		int num2 = scanner.nextInt();
		
		if(num1 > num2) {
			System.out.println(num1);
		}
		else if(num1 < num2) {
			System.out.println(num2);
		}
		*/
		
		//문제5 : 3개 정수를 입력받아 가장 큰수 출력
		/*
		int num1 = scanner.nextInt();
		int num2 = scanner.nextInt();
		int num3 = scanner.nextInt();
		
		int max = num1;
		
		if(max < num2)
			max=num2;
		if(max < num3)
			max=num3;
		
		System.out.println("가장 큰수는 : "+max);
		*/
		
		/*
		if(num1 > num2) {
			System.out.println(num1);
		}
		else if(num1 < num2) {
			System.out.println(num2);
		}
		*/
		
		//문제6 : 4개 정수를 입력받아 가장 큰수 출력
		/*
		int num1 = scanner.nextInt();
		int num2 = scanner.nextInt();
		int num3 = scanner.nextInt();
		int num4 = scanner.nextInt();
		
		int max = num1;
		
		if(max < num2)
			max=num2;
		if(max < num3)
			max=num3;
		if(max < num4)
			max=num4;
			
		//왜 if만 쓸까? 
		// if if if => 첫번째 if가 T라도 두번째 if를 검사함
		// if   else if   else if => 첫번째 if가 T이면 두번째 if를 검사 x 
		
		System.out.println("가장 큰수는 : "+max);
		*/
		
		//문제7 : 4개 정수를 입력받아 오름차순 출력 [교체방법]
		/*
		int num1 = scanner.nextInt();
		int num2 = scanner.nextInt();
		int num3 = scanner.nextInt();
		
		int tmp; //교체용 임시변수
		
		System.out.printf("정렬 전 : %d %d %d ", num1,num2,num3);
		
		if(num1 > num2) {
			tmp = num1;
			num1 = num2;
			num2 = tmp;
		}
		if(num1 > num3) {
			tmp = num1;
			num1 = num3;
			num3 = tmp;
		}
		if(num2 > num3) {
			tmp = num2;
			num2 = num3;
			num3 = tmp;
		}
			
			
		System.out.printf("정렬 후 : %d %d %d ", num1,num2,num3);
	*/
		
		
		
		//문제8 : 3개 정수를 입력받아 내림차순 출력 (부등호 반대로)
		
		/*
		int num1 = scanner.nextInt();
		int num2 = scanner.nextInt();
		int num3 = scanner.nextInt();
		
		int tmp; //교체용 임시변수
		
		System.out.printf("정렬 전 : %d %d %d ", num1,num2,num3);
		
		if(num1 < num2) {
			tmp = num1;
			num1 = num2;
			num2 = tmp;
		}
		if(num1 < num3) {
			tmp = num1;
			num1 = num3;
			num3 = tmp;
		}
		if(num2 < num3) {
			tmp = num2;
			num2 = num3;
			num3 = tmp;
		}
			
			
		System.out.printf("정렬 후 : %d %d %d ", num1,num2,num3);
		*/
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
	
}
