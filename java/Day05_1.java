package Day0703;

public class Day05_1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//��� : if[��(t/f)����], switch[ ������ �˻� ]
			//if : ����� ���� ���������� �ʴ°��
				//true�̸� ���๮ó���� ��� if����
			// switch : ����� ���� �������ִ� ���[�ӵ�����]
				//case�� �˻��� �Ʒ� ��� case ó�� => break;[�ݺ��� Ȥ�� switch Ż��]
		
		
		if(5>3) System.out.println("5��ũ��");
		else System.out.println("5���۴�");
		
		switch(5) { 
			case 5: System.out.println("5�Դϴ�.");
			case 3 : System.out.println("3�Դϴ�");
		}
///////////////////////////////////////////////////////////////////////
		int ��ȣ = 3;
		if(��ȣ == 1) System.out.println("1�Դϴ�.");
		else if(��ȣ == 2) System.out.println("2�Դϴ�");
		else if(��ȣ == 3) System.out.println("3�Դϴ�.");
		
		switch(��ȣ) {
			case 1 : System.out.println("1�Դϴ�.");
			case 2 : System.out.println("2�Դϴ�.");
			case 3 : System.out.println("3�Դϴ�.");
		}
//////////////////////////////////////////////////////////////////////
		
		int ���� = 80;
		
		switch(����) {//switch�� break�� ��Ʈ!!
			case 90 : System.out.println("a���"); break;
			case 80 : System.out.println("b���"); break;
			case 70 : System.out.println("c���"); break;
			default : System.out.println("Ż��");
		}
//////////////////////////////////////////////////////////////////////
		
		int ����1 = 80;
		int ����2 = 90;
		int ����3 = 100;
		
		System.out.println("�� ������ ����� ���մϴ�. : ");
		int sum = ����1 + ����2 +����3;
		int avg = sum / 3;
		
		/*
		if(avg>=90) {
			System.out.println("a���");
		}
		else if(avg>=80) {
			System.out.println("b���");
		}
		else if(avg>=70) {
			System.out.println("c���");
		}
		else
			System.out.println("Ż��");
		*/

		//90�� �̻� :a 80�̻� :b 70�̻� :c
		
		switch(avg/10){
			case 10:
			case 9 : System.out.println("a���"); break;
			case 8 : System.out.println("b���"); break;
			case 7 : System.out.println("c���"); break;
			default : System.out.println("Ż��");
		}
		
//////////////////////////////////////////////////////////////////////
		//�ݺ��� : for, while
			//for : �ڵ� ���Ἲ 
		// while : ���ѷ��� => while(true) {}
		for(int i=0; i<10; i++) {
			//�ʱⰪ ; ���ǹ� ; ������
			System.out.print(i+"\t");
		}
		
		System.out.println();
		
		int i = 0; // �ʱⰪ
		
		while(i<10) { //���ǹ�
			System.out.print(i+"\t");
			i++; //������
		}
		
		System.out.println();
		
//////////////////////////////////////////////////////////////////////
		
		int j = 0;
		while(true) {//while(���ǹ�)
			
			System.out.println("���ѹݺ�" + j);
			if( j == 10) break;
			j++;
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		//�ݺ��� :for, while
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
