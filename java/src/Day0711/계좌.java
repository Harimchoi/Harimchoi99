package Day0711;

public class ���� {
	//�ʵ�
	
	private String ���¹�ȣ;
	//"-" ����
	private int ��й�ȣ;
	private String ������;
	private int �ݾ�;
	
	
	//������
	
	public ����() {
		
	}

	public ����(String ���¹�ȣ, int ��й�ȣ, String ������, int �ݾ�) {
		super();
		this.���¹�ȣ = ���¹�ȣ;
		this.��й�ȣ = ��й�ȣ;
		this.������ = ������;
		this.�ݾ� = �ݾ�;
	}
	
	public ����(String ���¹�ȣ, int ��й�ȣ, String ������) {
		super();
		this.���¹�ȣ = ���¹�ȣ;
		this.��й�ȣ = ��й�ȣ;
		this.������ = ������;
		this.�ݾ� = 0;
	}
	
	
	
	public void ���»���() {
		System.out.println("[[[ ���»��� ȭ�� ]]]");
		System.out.println("���¹�ȣ : "); //���� : �ߺ�����
		String ���¹�ȣ = Day08_7_ATM.scanner.next();
		System.out.println("��й�ȣ : "); //���� : 4�ڸ� ����
		int ��й�ȣ = Day08_7_ATM.scanner.nextInt();
		System.out.println("������ : "); 
		String ������ = Day08_7_ATM.scanner.next();
	
	//��ü ����
		���� ���� = new ����(���¹�ȣ, ��й�ȣ, ������);
		//����Ʈ ���
		Day08_7_ATM.���¸��.add(����);
	
	
	}
	
	public void �Ա�() {
		System.out.println("[[[ �Ա� ȭ�� ]]]");
		System.out.println("���¹�ȣ : "); //���� : �ߺ�����
		String ���¹�ȣ = Day08_7_ATM.scanner.next();
		System.out.println("��й�ȣ : "); //���� : 4�ڸ� ����
		int ��й�ȣ = Day08_7_ATM.scanner.nextInt();
		System.out.println("�Աݾ� : "); 
		int �Աݾ� = Day08_7_ATM.scanner.nextInt();
		
		for(���� temp : Day08_7_ATM.���¸��) {
			if(temp.get���¹�ȣ().equals(���¹�ȣ)&& temp.get��й�ȣ() == ��й�ȣ){
				temp.�Ա�ó��(�Աݾ�);
				return;
			}
		}
		System.out.println("��й�ȣ�� �ٸ��ϴ�.");
	}
	
	public void ���() {
		System.out.println("[[[ ��� ȭ�� ]]]");
		System.out.println("���¹�ȣ : "); //���� : �ߺ�����
		String ���¹�ȣ = Day08_7_ATM.scanner.next();
		System.out.println("��й�ȣ : "); //���� : 4�ڸ� ����
		int ��й�ȣ = Day08_7_ATM.scanner.nextInt();
		System.out.println("��ݾ� : "); 
		int ��ݾ� = Day08_7_ATM.scanner.nextInt();
		
		for(���� temp : Day08_7_ATM.���¸��) {
			if(temp.get���¹�ȣ().equals(���¹�ȣ)&& temp.get��й�ȣ() == ��й�ȣ){
				temp.���ó��(��ݾ�);
				return;
			}
		}
		System.out.println("��й�ȣ�� �ٸ��ϴ�.");
	}
	
	public void ��ü() {
		System.out.println("[[[ ��ü ȭ�� ]]]");
		System.out.println("���¹�ȣ : "); //���� : �ߺ�����
		String ���¹�ȣ = Day08_7_ATM.scanner.next();
		System.out.println("��й�ȣ : "); //���� : 4�ڸ� ����
		int ��й�ȣ = Day08_7_ATM.scanner.nextInt();
		
		for(���� temp : Day08_7_ATM.���¸��) {
			if(temp.get���¹�ȣ().equals(���¹�ȣ)&& temp.get��й�ȣ() == ��й�ȣ){
	
		System.out.println("��ü�ݾ� : "); 
		int ��ü�ݾ� = Day08_7_ATM.scanner.nextInt();
		if(temp.�ݾ�<��ü�ݾ�) {
			System.out.println("���ݾ� ������");
			return;
		}
		System.out.println("�޴� ��� ���¹�ȣ : ");
		String ���¹�ȣ2 = Day08_7_ATM.scanner.next();
		
		for(���� temp2 : Day08_7_ATM.���¸��) {
			if(temp2.���¹�ȣ.equals(���¹�ȣ2)) {
				System.out.println("[[Ȯ��]] : �޴»���� : "+temp2.������);
				temp2.�ݾ� += ��ü�ݾ�;
				System.err.println("��ü�Ϸ�");
			}
				
		}
	
	}
			System.err.println("�޴� ��� ���¹�ȣ�� �����ϴ�.");
}
}
	public void ����ã��() {
	
	}
	//0, get, set
			public String get���¹�ȣ() {
				return this.���¹�ȣ;
			}
			
			public int get��й�ȣ() {
				return this.��й�ȣ;
			}
			
			public void �Ա�ó��(int �Աݾ�) {
				this.�ݾ� +=�Աݾ�;
				System.out.println("�Ա�ó�� �Ϸ�");
			}	
			
			public void ���ó��(int ��ݾ�) {
				if(this.�ݾ�<��ݾ�) {
					System.err.println("���ݾ� ����");
					return;
				}
				
				this.�ݾ� -= ��ݾ�;
				System.err.println("���ó�� �Ϸ�");
			}
			


}
