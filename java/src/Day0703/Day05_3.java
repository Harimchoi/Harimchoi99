package Day0703;


import java.util.Random;
import java.util.Scanner;

public class Day05_3 {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		
		//�� ���� = ���ڿ� 9���� ������ �� �ִ� �迭
		
		String[] ������ = {"[ ]","[ ]","[ ]",
				"[ ]","[ ]","[ ]",
				"[ ]","[ ]","[ ]"};
		
		String �¸��� = " "; //�¸� ���� �����ϱ� ���� ����
		
		
		
		while(true) { //���� ��ü�� ���ѷ��� [��� ���� �ξ�����, �¸��ڰ� ���ð�� ����]
			
		//������ ���
		for( int i= 0; i<������.length;i++) {
			//3�� �� ��� �ٹٲ�
			System.out.print(������[i]);
			if(i%3==2) System.out.println();
			}
		//���� 
		if(�¸���.equals("[0]")) {
			System.out.println("[��������] : �÷��̾� �¸�");
			break;
			}
		if(�¸���.equals("[x]")) {
			System.out.println("[��������] : ��ǻ�� �¸�");
			break;			
			}
		
		while(true) {
		//�÷��̾ �Է¹޾� �ش� ��ġ�� �� �α�
		System.out.println("[����] : �ΰ����ϴ� ��ġ : ");
		int �÷��̾� = scanner.nextInt(); //�ε���
		/*
		if(�÷��̾�>=0&&�÷��̾�<=8)
			������[�÷��̾�] = "[O]"; //�Է� ���� �ε����� �� �ٱ���
		*/
		if(�÷��̾�<0||�÷��̾�>8) 
			System.out.println("�˼����� ��ȣ�Դϴ�.");
		else if(!������[�÷��̾�].equals("[ ]")) {
			System.out.println("[���] �̹� ���� �����մϴ�.");
		}else {
			������[�÷��̾�] = "[0]"; //�Է� ���� �ε����� �� �ٱ���	
			break; //���� ����� �ݺ��� Ż��
		}	
	}//���� while
		
		int ����˼� = 0;
		for(int i =0;i<9;i++) {
			if(!������[i].equals("[ ]")) ����˼�++;
		}
		if(����˼� == 9) {
			System.out.println("���º�");
			break; //while ���ӹ��ѷ��� ����
		}
		
		while(true){
		Random random = new Random();
		int ��ǻ�� = random.nextInt(9);
		//Random random = new Random(); // ���� ��ü ����
		//int ��ǻ�� = random.nextInt(9); // ��ü���� ���� ���� ��������
			//random.nextInt(); 0~2�� ���������� ���� ����
			//random.nextInt(); 0~9 ���� ����
			//random.nextInt(��������ȣ); + ���۹�ȣ
			//random.nextInt(10)+10; 10~19���� ����
		if(������[��ǻ��].equals("[ ]")) {������[��ǻ��] = "[x]"; break;}
		}
		
		//���η� �̱�� ��
		for(int i=0; i<=6;i+=3) {
			if(������[i].equals(������[i+1])&&������[i+1].equals(������[i+2])) {
				if(!������[i].equals("[ ]")) �¸��� = ������[i];
			}
		}
		//���η� �̱�� ��
		for(int i=0; i<=2;i++) {
			if(������[i].equals(������[i+3])&&������[i+3].equals(������[i+6])) {
				if(!������[i].equals("[ ]")) �¸��� = ������[i];
			}
		}
		
		//�밢������ �̱�¼�
		if(������[0].equals(������[4])&&������[4].equals(������[8])) {
			if(!������[0].equals("[ ]")) �¸��� = ������[0];
		}
		if(������[2].equals(������[4])&&������[4].equals(������[6])) {
			if(!������[2].equals("[ ]")) �¸��� = ������[2];
		}
		
		
		}//ū while	

	}//method

}//class








/*
else if(������[i]==������[�÷��̾�]  ) {
	System.out.println("�Ȱ��� ���ڸ� �Է����� ������");
	continue;
}
*/
/*
else if(�÷��̾�>=9)
	System.out.println("0~8������ ���ڸ� �Է¹�������");
	continue;
*/
//while


//�̹� ���� �ִ� �ε����̸� �ٽ� �Է� �ޱ�
//0~8���̸� �Է� ���� �� �ְ� ����
//��ǻ�� [���� �����ؼ� �� �α�]
//���� ���� Ŭ���� = Random
