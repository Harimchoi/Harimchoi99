package Day0704;

import java.util.Scanner;

public class �Խù� {
	//static Scanner �Է°�ü = new Scanner(System.in);
	//�ʵ�
		String ����;
		String ����;
		String �ۼ���;
		int ��ȸ��;
	
	
	//������
		//1.�� ������
		public �Խù�() {
		}
		
		//2.Ǯ ������
		public �Խù�(String ����, String ����, String �ۼ���, int ��ȸ��) {
			this.���� = ����;
			this.���� = ����;
			this.�ۼ��� = �ۼ���;
			this.��ȸ�� = ��ȸ��;
		}
	
	//�޼ҵ�[�̸� �ۼ��� �ڵ� => �ڵ��� ��Ȱ��]
		//1. �Խù� ���
		public static void �Խù����() {
			System.out.println("------> �Խù� ��� ȭ��");
			System.out.println("���� : "); String ���� = Day06_4_�Խ���.�Է°�ü.next();
			System.out.println("���� : "); String ���� = Day06_4_�Խ���.�Է°�ü.next();
			System.out.println("�ۼ��� : "); String �ۼ��� = Day06_4_�Խ���.�Է°�ü.next();
			
			�Խù� temp = new �Խù�(����,����,�ۼ���,0);
			Day06_4_�Խ���.�Խù����.add(temp);
				//����Ʈ��.add(��ü��) : ����Ʈ�� ��ü �߰�
			
			
		}
		//2. �Խù� ���
		public static void �Խù����() {
			for(int i = 0; i<Day06_4_�Խ���.�Խù����.size();i++) {
			System.out.println(i+"\t"+ Day06_4_�Խ���.�Խù����.get(i).����+"\t"+ Day06_4_�Խ���.�Խù����.get(i).�ۼ���+"\t"+ Day06_4_�Խ���.�Խù����.get(i).��ȸ��+"\t");
			}
		}
		
		
		//3. �Խù� ����
		//4. ��ȸ�� ����
		public void ��ȸ������() {
			this.��ȸ��++;
		}
		//5. �ش� �Խù� �󼼺���
		public static void �Խù��󼼺���(int ��ȣ) {
			//�������ϴ� �Խù��� ��ȣ
			
			
			�Խù� temp = Day06_4_�Խ���.�Խù����.get(��ȣ);
			//���õ� �Խù��� ��ȸ�� ����
				temp.��ȸ������();
			System.out.println("[����] : "+temp.����);
			System.out.println("[�ۼ���] : "+temp.�ۼ���+"   [��ȸ��] : "+temp.��ȸ��);
			System.out.println("[����] : "+temp.����);
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
}
