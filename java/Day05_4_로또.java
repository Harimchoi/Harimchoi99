package Day0703;

import java.util.Random;
import java.util.Scanner;

public class Day05_4_�ζ� {
	//1. 6������ �Է¹޾� �迭 ����
			//2. ���� 6�� ���ڸ� ���� �����ؼ� �迭 ����
			//3. �� �迭�� ���ؼ� ������ ���� ����
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scanner = new Scanner(System.in);
		
		//1.�ζ� ��ȣ �迭
		int[] �ζ� = new int[6]; //int�� 6���� ������ �� �ִ� �迭
		int[] ��÷��ȣ = new int[6];
		int �������� = 0;
		Random random = new Random();
		
		
			//6���� �Է¹޾� �迭�� ����
			for(int i =0; i<6;i++) {
				
				System.out.println((i+1)+"��° ���� �Է�: ");
				int ��ȣ = scanner.nextInt();
				if(��ȣ<=0||��ȣ>45) {
					System.out.println("[���] 1~45���̸� �Է� ����");
					i--; //�Է��� ���������� ���޾��� ��� i�� 1����
				}
				else {
					//�ߺ����� = �迭�� �ִ� ��� ��Ҹ� �ϳ��� ��
					int �ߺ�üũ = 0;
					for(int j =0; j<6;j++) { //�ߺ�üũ ���� for��
						if(�ζ�[j] == ��ȣ) {
							//������� == ���� �Էµ� ����
							System.out.println("[���] �̹� �Էµ� �� �Դϴ�.");
							i--;
							�ߺ�üũ = 1; //�ߺ� ������� 1
							
						}
					}
					//for ����ÿ��� �ߺ�üũ�� 0�̸� ��ȣ�� �迭�� ����
					if(�ߺ�üũ == 0)
						�ζ�[i] = ��ȣ;
				}
			}
		
			//�迭 ���
			for(int i=0; i<6; i++) {
				System.out.print((i+1)+"��° ��ȣ : "+�ζ�[i]+"\t");
			}
			System.out.println();
			//��÷��ȣ
			for(int i=0; i<6; i++) {
				//�ߺ�����
				int ��ȣ = random.nextInt(45)+1;
				int �ߺ�üũ = 0;
				for(int j=0; j<6; j++) {
					if(��÷��ȣ[j]==��ȣ) {
						�ߺ�üũ = 1; i--;
					}
				}
				if(�ߺ�üũ == 0) ��÷��ȣ[i] = ��ȣ;
			}
			
			for(int i=0; i<6; i++) {
				System.out.print((i+1)+"��÷��ȣ : "+��÷��ȣ[i]+"\t");
			}
			System.out.println();
			
			for(int i=0; i<6; i++) {
				for(int j=0;j<6;j++) {
					if(��÷��ȣ[i]==�ζ�[j]) {
						��������++;
					}	
				}
				
			}
			System.out.print("�������� : "+�������� );
			//1. 1~45���̸� �Է¹ޱ� �ƴϸ� �ٽ� �Է�
			//2. �ߺ��� ���� ��� �ٽ� �Է�
		
			
			//���� : 2��������Ʈ => ����Ƚ�� �Է¹޾� �Է¹��� ���Ӽ���ŭ �ζ�
			
			
	}

}
