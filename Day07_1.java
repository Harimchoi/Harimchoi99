package Day0710;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Scanner;

public class Day07_1 {
	//�޸� ���� ���
	//1.���� : �ڷ���[�޸�ũ�Ⱑ ������]�� �̿��� �޸� �Ҵ�
		//�޸� ������ �ֱ� ������ new ������ x
		int ������ =30;
		//Integer ������2 = new Integer();
	//2.��ü : Ŭ����[���赵]�� �̿��� �޸� �Ҵ�
		//�޸��� ũ�Ⱑ ������ ���� �ʱ� ������ new ������ x
		//Scanner ��ü = new Scanner();
	//�޸� ���� ���
		//1. �迭 : ������ �ڷ���/Ŭ������ ������ �޸� ����/����
		int[]�迭 = new int[30];
		//2. ����Ʈ : ������ �ڷ��� / Ŭ������ ������ �޸𸮸� ������ �� �ִ� ��ü(�÷��������ӿ�ũ)(����)
			ArrayList<Integer> ����Ʈ = new ArrayList<>(); //<���׸�>
			
	//�޸� ���� ���� ��� => �޸�(�ֱ����ġ) => ���������ġ
			//1.����ó��
			//2.�����ͺ��̽�
			//3.Ŭ����
			
	//Ŭ���� [java 100% ��ü����]
		//1.�ֻ��� Ŭ������ object Ŭ������ ����
			//��� Ŭ������ object ����� �޴´�
		// ����� Ŭ���� �����
			//��� : 1.�ʵ� 2.������ 3.�޼ҵ�
	public static void main(String[] args) {
		
		//�迭
		String[] �迭 = new String[3];
		�迭[0] = "���缮";  System.out.println(�迭[0]);
		�迭[1] = "��ȣ��";  System.out.println(�迭[1]);
		�迭[2] = "�ŵ���";  System.out.println(�迭[2]);
		
		//����Ʈ
		ArrayList<String> ����Ʈ = new ArrayList<>();
		����Ʈ.add("���缮");  System.out.println(����Ʈ.get(0));
		����Ʈ.add("��ȣ��");  System.out.println(����Ʈ.get(1));
		����Ʈ.add("�ŵ���");  System.out.println(����Ʈ.get(2));
		
		//��ü �����[������ �̿�]
			//1.Ŭ������[��ü�� ���赵]
			//2.��ü��[������ ��]
			//3.new [��ü �޸� �Ҵ�] �ʼ�
			//4.������
			//��ü�� Ŭ������ ���[�ʵ�,�޼ҵ�]�� �����ϴ� ���[ . ������]
		//1. �� �����ڸ� �̿��� ��ü
		�л� temp1 = new �л�(); //���빰 ����
			temp1.�̸�="��ȣ��";
			temp1.���� = 30;
		//2. ��� �ʵ带 ���� �����ڸ� �̿��� ��ü
		�л� temp2 = new �л�("���缮",20);//���빰 ����
		
		//�޼ҵ� ȣ��
		System.out.println(temp1.�̸����());
		System.out.println(temp1.�������());
		
		temp1.ȸ������();
		System.out.println("����"+temp1.�л�����(20));
		
		temp1.���̾�����Ʈ(40);
		System.out.println(temp1.����);
		
		//����ó��
			// ��Ʈ�� : �ܺ���ġ�� ������ ���
				/// !!! :  ������ ��� ���� : ����Ʈ
					//bit[0,1] => 8bit => 1����Ʈ
			//1. �������� [FileOutputStream Ŭ����]
		
		//����ó�� : �����߻��� => ����ó�� ����� ��
		
		try {//try �ȿ��� ���ܹ߻��� => catch �̵�
				//try �ȿ��� ���ܰ� ���� ���� �״�� ����
			FileOutputStream fileOutputStream = new FileOutputStream("c:/java/test.txt");
			
			String ���ڿ� = "java�Դϴ�.";
			fileOutputStream.write(���ڿ�.getBytes()); //���ڿ��� �ƴѰ��
				//write(����Ʈ) : ���[��������] : 
					//���ڿ�.getBytes() : ���ڿ� => ����Ʈ
		} catch (Exception e) { //Exception : ��� ���� ó�� Ŭ����
			// TODO Auto-generated catch block
			System.out.println("���ϰ�ΰ� �������� �ʽ��ϴ�.");
		}
			
		
			//2. �о����
		
			try {
				FileInputStream fileInputStream = new FileInputStream("c:/java/test.txt");
				//��Ʈ���� �̵����� ����Ʈ
				byte[] ����Ʈ = new byte[1024];	//1024����Ʈ => 1kbyte
				fileInputStream.read(����Ʈ);
					//read : ���� ��Ʈ�� �о���� => ����Ʈ �迭�� ���� 
				System.out.println(new String(����Ʈ));
				//����Ʈ => ���ڿ�
					//new String(����Ʈ) : ����Ʈ => ���ڿ�
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}