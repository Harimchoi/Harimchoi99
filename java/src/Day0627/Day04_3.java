package Day0627;

import java.util.Random;
import java.util.Scanner;

public class Day04_3 {
	//���������� ����
	  // 1. ���� ���� �� �� �ϳ��� �Է¹޾� ���� ����
	  // 2. ��ǻ�ʹ� ���� ���
	  // 3. ���� ������ �����ؼ� ���� �¸���
	/*
	4�� �Է��ϸ� �ݺ��� ����
	 1.����Ƚ�� ���
	 2. ���� ���� �̱� �����¸���
	 */
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int ����Ƚ�� = 0;
		int �÷��̾�¸� = 0;
		int ��ǻ�ͽ¸� = 0;
		while(true) {//���ѷ���
			
			//�÷��̾�
			System.out.println("����[0] ����[1] ��[2] �� ���� : ");
			int �÷��̾� = scanner.nextInt();
			if(�÷��̾� == 0)
				System.out.println("������ �����߽��ϴ�.");
			else if(�÷��̾� ==1)
				System.out.println("������ �����߽��ϴ�.");
			else if(�÷��̾� ==2)
				System.out.println("���� �����߽��ϴ�.");
			else if(�÷��̾� ==4) {
				System.out.println("���� Ƚ�� : "+����Ƚ��);
				System.out.println("�÷��̾� �¸� : "+�÷��̾�¸�);
				System.out.println("��ǻ�� �¸� : "+��ǻ�ͽ¸�);
				
				if(�÷��̾�¸�>��ǻ�ͽ¸�) {
					System.out.println("�����¸��� : �÷��̾�");
				}
				else if(��ǻ�ͽ¸�>�÷��̾�¸�) {
					System.out.println("�����¸��� : ��ǻ��");
				}
				else {
					System.out.println("�쿭�� ���� �� �����ϴ�.");
				}
				
				break;
			}
			else
				System.out.println("[���] �� �� ���� ��ȣ�Դϴ�.");
			
			
			//��ǻ�� => ���� �̿��� ���� ����[Random : ���� ���õ� �޼ҵ� ����]
			Random random = new Random(); // ���� ��ü �����
			int ��ǻ�� = random.nextInt(3); //���� ��ü���� ���� �������� [ .nextInt(����) 0~���������� �������� ]
			if(��ǻ�� == 0)
				System.err.println("������ �����߽��ϴ�.");
			else if(��ǻ�� ==1)
				System.err.println("������ �����߽��ϴ�.");
			else if(��ǻ�� ==2)
				System.err.println("���� �����߽��ϴ�.");
			
			//�̱�� ����� ��
			//�÷��̾�
			if((�÷��̾�==0&&��ǻ��==2)||(�÷��̾�==1&&��ǻ��==0)||(�÷��̾�==2&&��ǻ��==1)) {
				System.out.println("�÷��̾ �̰���ϴ�.");
				�÷��̾�¸�++;
			}
			else if((�÷��̾�==0&&��ǻ��==0)||(�÷��̾�==1&&��ǻ��==1)||(�÷��̾�==2&&��ǻ��==2)) {
				System.out.println("�����ϴ�.");
			
				
			}
			else {
				System.out.println("��ǻ�Ͱ� �̰���ϴ�.");
				��ǻ�ͽ¸�++;
			}
			����Ƚ��++;
		}
		/*
		4�� �Է��ϸ� �ݺ��� ����
		 1.����Ƚ�� ���
		 2. ���� ���� �̱� �����¸���
		 */
		
		
			
		}//w end
	
	}


