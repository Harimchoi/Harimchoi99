package Day0627;

import java.util.Scanner;

public class Day04_2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner scanner = new Scanner(System.in);
		// �ݺ����� �̿��� �� ���
		// ����1 : �Է��� ������ŭ ��[*] ���
		/*
		System.out.println("���� �Է��ϼ��� : ");
		int ����1 = scanner.nextInt(); //�Է°�ü���� ������ ��������
		
		for(int i=1;i<����1;i++) {
			System.out.print("*");
		}
		*/
		//����2 : �Է��� ������ŭ �� ��� /�� 5������ �ٹٲ�
		/*
	    int ����2 = scanner.nextInt();
	    
	    for(int i =1;i<=����2;i++) {
	    		System.out.print("*");
	    		if(i % 5 == 0) 
	    			System.out.println();
	    	
	    }
	    */
	    //����3: �Է��� �ٸ�ŭ ���ﰢ�� ���
	    /*
	     *
	     **
	     ***
	     ****
	     */
		/*
	    System.out.println("���� �Է��ϼ���");
	    int ����3 = scanner.nextInt();
	    for(int i =1; i<=����3;i++) {
	    	for(int j = 1;j<=i;j++) {
	    		System.out.print("*");
	    	}
	    	System.out.println("");
	    }
	    */
		
	    //���� 4 : �Է��� �ٸ�ŭ ���ﰢ�� ���
	    /*
	     ****
	     ***
	     **
	     *
	     */
		/*
		System.out.println("�� �Է� : ");
		int ����4 = scanner.nextInt();
		for(int i =1;i<=����4;i++) {
			for(int j=1;j<=����4-i;j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		*/
	    //���� 5 : �Է��� �� ��ŭ ���ﰢ�� ���
	    /*
	           *
	          **
	         *** 
	        ****
	          
	     */
		//System.out.println("���� �Է��ϼ���");
	    //int ����3 = scanner.nextInt();
	    
	    /*
	    for(int i =1; i<=����3;i++) {
	    	for(int j = 1;j<=����3-i;j++) {
	    		System.out.print(" ");
	    	}
	    	
	    for(int j = 1;j<=i;j++) {
    		System.out.print("*");
    	}
    	System.out.println("");
	    }
	    */
	    //����6 : �Է��� �ٸ�ŭ ���ﰢ�� ���
			/*
			 *****
			  ****
			   ***
			    **
			     * 
			 */
		/*
	    System.out.println("���� �Է��ϼ���");
	    int ����3 = scanner.nextInt();
	    for(int i =1; i<=����3;i++) {
	    	for(int j = 1;j<=i;j++) {
	    		System.out.print(" ");
	    	}
	    	for(int j=1;j<=����3-i;j++) {
				System.out.print("*");
			}
			System.out.println();
	    	
	    }
		*/
	    
	    //���� 7 
	    /*
	     �Ƕ�̵�
	  aaaa*aaaa
	  aaa***aaa
	  aa*****aa
	  a*******a
*/
		/*
		 System.out.println("���� �Է��ϼ���");
		    int ����3 = scanner.nextInt();
		    for(int i =1; i<=����3;i++) {
		    	for(int j=1;j<=����3-i;j++) {
					System.out.print(" ");
				}
			    
		    	
		    	for(int j=1;j<=(i*2)-1;j++) {
		    		System.out.print("*");
		    	}
		    	System.out.println("");
		    }
		  */
		
		
		
		
			// ����8 : �Է��� �� ��ŭ ���ﰢ�� ��� 
						/*  �� ) 5 
						 		1
						 	   222
						 	  33333
						 	 4444444
						 	555555555
						 */
		/*			
		System.out.println("���� �Է��ϼ���");
	    int ����3 = scanner.nextInt();
	    for(int i =1; i<=����3;i++) {
	    	for(int j=1;j<=����3-i;j++) {
				System.out.print(" ");
			}
		    
	    	
	    	for(int j=1;j<=(i*2)-1;j++) {
	    		System.out.print(i);
	    	}
	    	System.out.println("");
	    }
		*/
					// ����9 : �Է��� �� ��ŭ ���ﰢ�� ��� 
						/*  �� ) 5 
						 	*********
						 	 *******
						 	  *****
						 	   ***
						 	    *
						 */
		/*
		System.out.println("���� �Է��ϼ���");
	    int ����3 = scanner.nextInt();
	    for(int i =1; i<=����3;i++) {
	    	for(int j=1;j<=i-1;j++) {
				System.out.print(" ");
			}
		    
	    	for(int j=1;j<=(����3*2)-(i*2-1);j++) {
	    		System.out.print("*");
	    	}
	    	System.out.println("");
	    }
	    */
					// ����10 : X ��� ��� 
						/*  �� ) 5 
						 	 *     *
						 	  *   *
						       * *
						        *
						 	   * *
						 	  *   *
						 	 *     *
						 */
		
		System.out.println("���� �Է� : ");
		int ����10 = scanner.nextInt();
		
		
		for(int i=1;i<=����10;i++) {//i�� ��
			for(int j=1;j<=����10;j++) {//j�� ��
				if(i == j) System.out.print("*");
				else if((i+j)==(����10+1)) System.out.print("*");
				else System.out.print(" ");
			}
			System.out.println();
		}
	
	
	/*
	  �� �� : 7
	  7���� 7��
	  
	 */
	
	
	
	
	
	
	
	
	
	
	
	}

}
