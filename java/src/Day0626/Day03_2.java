package Day0626;

import java.util.Scanner;

public class Day03_2 {
	//��� : ��쿡 ���� �Ǵܷ�
	  // if[���˻�], switch[�� �˻�],
	
	// if ����
	public static void main(String[] args) {
		//if ����
		  //���࿡ ~~ �̸�
		  //1. if(T / F) ���๮;
		  //2. if(T / F) T���๮;
		  //   else F���๮;
		  //3. if(T / F) { ���๮; ���๮2;}
		  //4. if(T / F) ���๮;
		  //   else if(T / F) ���๮[T2];
		  //   else if(T / F) ���๮[T3];
		  //   else if(T / F) ���๮[T4];
		  //   else
		if(5>3) System.out.println("5��ũ��");
		
		if(5>10) System.out.println("5���۴�");
		
		if(5>3) System.out.println("5�� ũ��");
		else System.out.println("5�� �۴�");
		
		if(5>3) {
			System.out.println("true");
			System.out.println("5��ũ��4");
		}
		else 
			{
			System.out.println("false"); 
			System.out.println("5���۴�4");
			}
		
		if(5>10) System.out.println("5�� ũ��1 ");
		else if(5>8) System.out.println("5�� ũ��2");
		else if(5>6) System.out.println("5�� ũ��3");
		else if(5>4) System.out.println("5�� ũ��4");
		else System.out.println("5���� ���� �����Ͱ� ����");
		
		//����1 : �ϳ��� ������ �Է¹޾� 80�� �̻��̸� �հ� �ƴϸ� ���հ� ���
		
		/*
		System.out.println("������ �Է��ϼ���");
		Scanner scanner = new Scanner(System.in); //�Է°�ü
		int score1 = scanner.nextInt();
		
		if(score1 >= 80)
			System.out.println("�հ�");
		else
			System.out.println("���հ�");
		*/
		//����2 : �ϳ��� ������ �Է¹޾� 90�� �̻��̸� a , 80���̻��̸� b, �� �� Ż��
		
		/*
		System.out.println("����2 �Է� :");
		int score2 = scanner.nextInt();
		if(score2 >= 90)
			System.out.println("A���");
		else if(score2 >= 80)
			System.out.println("b���");
		else
			System.out.println("Ż��");
			*/
		
		
		//����3 : �ϳ��� ������ ������ �Է¹޾�
		  //�����̸鼭 90�� �̻��̸� A-1 Ŭ���� ���
		  //�����̸鼭 90�� �̻��̸� A-2 Ŭ���� ���
		//�����̸鼭 80�� �̻��̸� B-1 Ŭ���� ���
		//�����̸鼭 80�� �̻��̸� B-2 Ŭ���� ���
		//�� �� CŬ����
		Scanner scanner = new Scanner(System.in);
		/*
		System.out.println("������ ������ �Է��ϼ���");
		System.out.print("���� : ");
		int score3 = scanner.nextInt();
		System.out.print("���� : ");
		String man = scanner.next();
		*/
		/*
		 ��� 1�� 
		 
		if(man.equals("����")&& score3>=90) { // ���ڴ� ��, ���, ���������� ���Ұ�
			System.out.println("A-1 Ŭ����");
		}
		else if(man.equals("����") && score3>=90) {
			System.out.println("A-2 Ŭ����");
		}
		else if(man.equals("����") && score3>=80) {
			System.out.println("B-1 Ŭ����");
		}
		else if(man.equals("����") && score3>=80) {
			System.out.println("B-2 Ŭ����");
		}
		else {
			System.out.println("C");
		}
		*/
		//������ ����� �Ѵ�.
		//��� 2��
		/*
		if(man.equals("����")) {
			if(score3 >= 90) System.out.println("A-1Ŭ����");
		}
		else if(man.equals("����")) {
			
		}
		else {
			
		}
		*/
		
		//����4 : 2�� ������ �Է¹޾� ���� ū�� ���
		/*
		System.out.println("���� 2���� �Է��ϼ���");
		int num1 = scanner.nextInt();
		int num2 = scanner.nextInt();
		
		if(num1 > num2) {
			System.out.println(num1);
		}
		else if(num1 < num2) {
			System.out.println(num2);
		}
		*/
		
		//����5 : 3�� ������ �Է¹޾� ���� ū�� ���
		/*
		int num1 = scanner.nextInt();
		int num2 = scanner.nextInt();
		int num3 = scanner.nextInt();
		
		int max = num1;
		
		if(max < num2)
			max=num2;
		if(max < num3)
			max=num3;
		
		System.out.println("���� ū���� : "+max);
		*/
		
		/*
		if(num1 > num2) {
			System.out.println(num1);
		}
		else if(num1 < num2) {
			System.out.println(num2);
		}
		*/
		
		//����6 : 4�� ������ �Է¹޾� ���� ū�� ���
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
			
		//�� if�� ����? 
		// if if if => ù��° if�� T�� �ι�° if�� �˻���
		// if   else if   else if => ù��° if�� T�̸� �ι�° if�� �˻� x 
		
		System.out.println("���� ū���� : "+max);
		*/
		
		//����7 : 4�� ������ �Է¹޾� �������� ��� [��ü���]
		/*
		int num1 = scanner.nextInt();
		int num2 = scanner.nextInt();
		int num3 = scanner.nextInt();
		
		int tmp; //��ü�� �ӽú���
		
		System.out.printf("���� �� : %d %d %d ", num1,num2,num3);
		
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
			
			
		System.out.printf("���� �� : %d %d %d ", num1,num2,num3);
	*/
		
		
		
		//����8 : 3�� ������ �Է¹޾� �������� ��� (�ε�ȣ �ݴ��)
		
		/*
		int num1 = scanner.nextInt();
		int num2 = scanner.nextInt();
		int num3 = scanner.nextInt();
		
		int tmp; //��ü�� �ӽú���
		
		System.out.printf("���� �� : %d %d %d ", num1,num2,num3);
		
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
			
			
		System.out.printf("���� �� : %d %d %d ", num1,num2,num3);
		*/
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
	
}
