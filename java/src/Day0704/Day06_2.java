package Day0704;

import java.util.Scanner;

public class Day06_2 {

	//ȸ���� ���α׷�
		//1.�ִ� 100���� ȸ���� �����ϴ� �迭 ����[2�����迭]
			//1.���̵�, ��й�ȣ
		//2.���ѷ��� [�޴�]
			//1. ȸ������
			//2. �α���
			//3. ����
		//3.���ѷ��� �α��ν�
			//1.ȸ��Ż��, �н����庯��, �α׾ƿ�
	
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		
		//ȸ��100���� ���̵�� ��й�ȣ
		
		String[][] ȸ����� = new String[100][2]; //��[ȸ����] [��=���̵�,���]
		//�ʱ�޴� => ���ѷ���
		while(true) {
			System.out.println("------ȸ���� ���α׷� -------");
			System.out.println("1.ȸ������ 2.�α��� 3.����");
			int ���� = scanner.nextInt();
			
			if(����==1) { //ȸ������: ���̵�� ��й�ȣ �Է¹޾� �迭�� ����
				//System.out.println(ȸ�����[0][0]);
				System.out.println("---- ȸ������ ȭ�� ----");
				System.out.println("-> ���̵� : "); String ���̵� = scanner.next();
				//���̵� �ߺ�üũ
					int �ߺ�üũ = 0;
					for(int i=0;i<ȸ�����.length;i++) {
						if(ȸ�����[i][0]!=null && ȸ�����[i][0].equals(���̵�)) { //ȸ���� �ƹ��� ������ ����
							System.err.println("�ߺ��� ���̵� �ֽ��ϴ�");
							�ߺ�üũ = 1; //�ߺ��� �ִ� ��� 1
							break;
						}
					}
					
				if(�ߺ�üũ == 0) { //�ߺ��� ���� ��� 0 =>ȸ������ ����
				System.out.println("-> ��й�ȣ : "); String ��й�ȣ = scanner.next();
				
				for(int i =0; i<ȸ�����.length;i++) {
					//i�� 0���� �ִ�ȸ������ŭ 1�� ���� �ݺ�
					if(ȸ�����[i][0]==null) { // i��° ���� ���̵� null �̸� 
						ȸ�����[i][0] = ���̵�; //���̵� ����
						ȸ�����[i][1] = ��й�ȣ; //��й�ȣ ����
						System.err.println("ȸ������ �Ϸ�");
						break; // ������ �ݺ��� ������
					}
				}
			
			}
		}
			else if(����==2) {
				System.out.println("---- ȸ������ ȭ�� ----");
				System.out.println("-> ���̵� : "); String ���̵� = scanner.next();
				System.out.println("-> ��й�ȣ : "); String ��й�ȣ = scanner.next();
				
				
				int �α��ο��� = 0;
				for(int i =0; i<ȸ�����.length;i++) {
					if(ȸ�����[i][0]!=null&&ȸ�����[i][0].equals(���̵�)&&ȸ�����[i][1].equals(��й�ȣ)) {
						�α��ο��� = 1; //����ġ����
						System.err.println("�α��� ����");
					
					while(true) {
						System.out.println("------ȸ�����------");
						System.out.println("\t���̵�\t��й�ȣ");
						
							for(int j=0;j<ȸ�����.length;j++) {		
								if(ȸ�����[j][0]!=null)
									System.out.println("ȸ����� : "+ȸ�����[j][0]+"\t"+ȸ�����[j][1]);
							}
						
						
						System.out.println("1.ȸ��Ż�� 2.�н����庯�� 3.�α׾ƿ�"); 
						int ����2 = scanner.nextInt();
						if(����2 == 1) {//���� ȸ���� null�� ���� [Ż��� ȸ���������� ��ȸ���� ��ĭ�� ����]
								//i�� ���� �α��ε� ȸ���� �ε����� ��ȣ
							ȸ�����[i][0] = null; //����ȸ���� null�� ����
							ȸ�����[i][1] = null;
							
							// Ż���� ȸ�� �������� �ڿ� �ִ� ȸ������ ��ĭ�� ����
							for(int h = i; h<ȸ�����.length;h++) {
								if(ȸ�����[h+1][0] != null) {
									ȸ�����[h][0] = ȸ�����[h+1][0]; //��ĭ�� ������ ����
									ȸ�����[h][1] = ȸ�����[h+1][1]; //��ĭ�� ������ ����
								}
								else {
									ȸ�����[h][0] = null;
									ȸ�����[h][1] = null;
									break;
								}
							}
							System.err.println("ȸ��Ż�� �Ǿ����ϴ�.");
							break; //�α׾ƿ�
							
						}
						if(����2 == 2) {
							System.out.println("---- �н����� ���� ȭ�� ----");
							System.out.println("-> ���ο� ��й�ȣ : "); 
							ȸ�����[i][1] = scanner.next();
							System.out.println("[�н����� ����Ϸ�] �н����尡 ����Ǿ����ϴ�.");
							break;
						}
						if(����2==3) {
							System.err.println("�α׾ƿ� �Ǿ����ϴ�.");
							break;
						}
					}
					
				}
			}
				if(�α��ο��� == 0) System.out.println("������ ���̵� Ȥ�� ��й�ȣ�� �����ϴ�.");
			}
			else if(����==3) {
				System.err.println("���α׷��� ����Ǿ����ϴ�."); 
				break; //���� ����� �ݺ��� Ż��
			}
		}
		
		
		
	}
	

}