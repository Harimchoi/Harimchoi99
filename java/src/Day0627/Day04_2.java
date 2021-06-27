package Day0627;

import java.util.Scanner;

public class Day04_2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner scanner = new Scanner(System.in);
		// 반복문을 이용한 별 출력
		// 문제1 : 입력한 개수만큼 별[*] 출력
		/*
		System.out.println("수를 입력하세요 : ");
		int 문제1 = scanner.nextInt(); //입력객체에서 데이터 가져오기
		
		for(int i=1;i<문제1;i++) {
			System.out.print("*");
		}
		*/
		//문제2 : 입력한 개수만큼 별 출력 /단 5개마다 줄바꿈
		/*
	    int 문제2 = scanner.nextInt();
	    
	    for(int i =1;i<=문제2;i++) {
	    		System.out.print("*");
	    		if(i % 5 == 0) 
	    			System.out.println();
	    	
	    }
	    */
	    //문제3: 입력한 줄만큼 별삼각형 출력
	    /*
	     *
	     **
	     ***
	     ****
	     */
		/*
	    System.out.println("줄을 입력하세요");
	    int 문제3 = scanner.nextInt();
	    for(int i =1; i<=문제3;i++) {
	    	for(int j = 1;j<=i;j++) {
	    		System.out.print("*");
	    	}
	    	System.out.println("");
	    }
	    */
		
	    //문제 4 : 입력한 줄만큼 별삼각형 출력
	    /*
	     ****
	     ***
	     **
	     *
	     */
		/*
		System.out.println("수 입력 : ");
		int 문제4 = scanner.nextInt();
		for(int i =1;i<=문제4;i++) {
			for(int j=1;j<=문제4-i;j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		*/
	    //문제 5 : 입력한 줄 만큼 별삼각형 출력
	    /*
	           *
	          **
	         *** 
	        ****
	          
	     */
		//System.out.println("줄을 입력하세요");
	    //int 문제3 = scanner.nextInt();
	    
	    /*
	    for(int i =1; i<=문제3;i++) {
	    	for(int j = 1;j<=문제3-i;j++) {
	    		System.out.print(" ");
	    	}
	    	
	    for(int j = 1;j<=i;j++) {
    		System.out.print("*");
    	}
    	System.out.println("");
	    }
	    */
	    //문제6 : 입력한 줄만큼 별삼각형 출력
			/*
			 *****
			  ****
			   ***
			    **
			     * 
			 */
		/*
	    System.out.println("줄을 입력하세요");
	    int 문제3 = scanner.nextInt();
	    for(int i =1; i<=문제3;i++) {
	    	for(int j = 1;j<=i;j++) {
	    		System.out.print(" ");
	    	}
	    	for(int j=1;j<=문제3-i;j++) {
				System.out.print("*");
			}
			System.out.println();
	    	
	    }
		*/
	    
	    //문제 7 
	    /*
	     피라미드
	  aaaa*aaaa
	  aaa***aaa
	  aa*****aa
	  a*******a
*/
		/*
		 System.out.println("줄을 입력하세요");
		    int 문제3 = scanner.nextInt();
		    for(int i =1; i<=문제3;i++) {
		    	for(int j=1;j<=문제3-i;j++) {
					System.out.print(" ");
				}
			    
		    	
		    	for(int j=1;j<=(i*2)-1;j++) {
		    		System.out.print("*");
		    	}
		    	System.out.println("");
		    }
		  */
		
		
		
		
			// 문제8 : 입력한 줄 만큼 별삼각형 출력 
						/*  예 ) 5 
						 		1
						 	   222
						 	  33333
						 	 4444444
						 	555555555
						 */
		/*			
		System.out.println("줄을 입력하세요");
	    int 문제3 = scanner.nextInt();
	    for(int i =1; i<=문제3;i++) {
	    	for(int j=1;j<=문제3-i;j++) {
				System.out.print(" ");
			}
		    
	    	
	    	for(int j=1;j<=(i*2)-1;j++) {
	    		System.out.print(i);
	    	}
	    	System.out.println("");
	    }
		*/
					// 문제9 : 입력한 줄 만큼 별삼각형 출력 
						/*  예 ) 5 
						 	*********
						 	 *******
						 	  *****
						 	   ***
						 	    *
						 */
		/*
		System.out.println("줄을 입력하세요");
	    int 문제3 = scanner.nextInt();
	    for(int i =1; i<=문제3;i++) {
	    	for(int j=1;j<=i-1;j++) {
				System.out.print(" ");
			}
		    
	    	for(int j=1;j<=(문제3*2)-(i*2-1);j++) {
	    		System.out.print("*");
	    	}
	    	System.out.println("");
	    }
	    */
					// 문제10 : X 모양 출력 
						/*  예 ) 5 
						 	 *     *
						 	  *   *
						       * *
						        *
						 	   * *
						 	  *   *
						 	 *     *
						 */
		
		System.out.println("정수 입력 : ");
		int 문제10 = scanner.nextInt();
		
		
		for(int i=1;i<=문제10;i++) {//i는 행
			for(int j=1;j<=문제10;j++) {//j는 열
				if(i == j) System.out.print("*");
				else if((i+j)==(문제10+1)) System.out.print("*");
				else System.out.print(" ");
			}
			System.out.println();
		}
	
	
	/*
	  줄 수 : 7
	  7개씩 7줄
	  
	 */
	
	
	
	
	
	
	
	
	
	
	
	}

}
