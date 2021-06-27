package Day0627;

import java.nio.file.spi.FileSystemProvider;

public class Day04_1 {

	public static void main(String[] args) {
		//제어문 = if
		//반복문 = for, while, do~while
		
		//for 형태
		  // 어디서부터 어디까지 반복
		  //for(초기값; 조건문; 증감식){실행문;}
		  //for(어디서부터; 어디까지; 이동단위){실행코드;}
		    // 초기값 : 반복의 시작값 [for 시작할때 1번 검사]
		    // 조건문 : 반복실행의 조건 [비교연산자, 실행코드 실행전 검사]
		    // 증감식 : 실행코드 실행후 초기값 증감단위
		
		//예1
		/*
		for(int 변수 = 0; 변수<10; 변수++) {
			System.out.println(변수);
			  //반복문 실행순서
			  //변수 = 0 -> 변수<10 => T => 코드실행
			  //변수++ => 변수=1 => 변수<10 => T => 코드실행
			  // ~~~~~~~~~~~~~~~~~~~~~
			  // 변수++ => 변수=10 => 변수<10 =>F => 반복문종료
		}//변수는 0부터 10미만까지 1씩 증가하면서 반복
		*/
		
		//예2 : 1~50까지의 출력
		/*
		for(int i=1; i<=50;i++) {
			System.out.println(i);
			
		}
		*/
		
		//예3 : 1~50까지의 3배수 출력
		/*
		for(int i=3; i<=50;i+=3) {
			
			System.out.println(i);
		}
		for(int i=1;i<=50;i++) {
			if(i%3==0) System.out.println(i);
		}
		*/
		
		//예4 : 1부터50까지 누적합계
		/*
		int 누적합계 = 0;
		for(int i =1; i<=50;i++) {
			누적합계 +=i;
		}//반복문 끝
		System.out.println("1~50 누적합계 : "+누적합계);
		*/
		
		//예5 : 1~50까지 3배수들의 누적합계
		/*
		int 누적합계 = 0;
		for(int i =1; i<=50;i++) {
			if(i%3==0) 
				누적합계 += i;
		}
		System.out.println("1~50 3배수들의 누적합계 : "+누적합계);
		*/
		
		//예6 : 2단 구구단[단:2 (상수) 곱:1~9(변수)] 출력
		/*
		  for(int 곱=1;곱<=9;곱++) {
			  System.out.println("2x"+곱+"="+(2*곱));
		  }
		*/
		
		//예7 : 구구단[단:2~9(변수) 곱:1~9(변수)] 출력
		  //단이 2일 경우 곱 9번 실행
		  //단이 3일 경우 곱 9번 실행
		  //~~~~~~~~~~~~~~~~~~~~~~
		  //단이 9일 경우 곱 9번 실행
		//for중첩
		  //for1(){for2(){for3()}}
		    //for 1번실행시 for2 모두실행
		       //for2 1번 실행시 for3 모두 실행
		         // for3 실행횟수 : for1*for2*for3
		  /*
		  for(int 단=2;단<=9;단++) {
			  
			  System.out.println("---------->"+단+"단--------");
			  for(int 곱=1;곱<=9;곱++) {
				  System.out.println(단+"x"+곱+"="+(단*곱));
			  }
		  }
		  */
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
