package Day0711;

public class �������� extends ���� {
	
	private final int �����ڵ� = 10;

	
	
	public ��������() {
		super();
		
	}

	public ��������(String ���¹�ȣ, int ��й�ȣ, String ������, int �ݾ�) {
		super(���¹�ȣ, ��й�ȣ, ������, �ݾ�);
		
	}

	public ��������(String ���¹�ȣ, int ��й�ȣ, String ������) {
		super(���¹�ȣ, ��й�ȣ, ������);
		
	}
	
	@Override
	public void ���»���() {
		System.out.println("[[[ �������� ���� ���� ]]]");

		System.out.println("[[[ ���»��� ȭ�� ]]]");
		System.out.println("���¹�ȣ : "); 
		String ���¹�ȣ = Day08_7_ATM.scanner.next();
		for(���� temp : Day08_7_ATM.���¸��) {
			if(temp.get���¹�ȣ().equals(���¹�ȣ)) {
				System.out.println("������ ���¹�ȣ�� �ֽ��ϴ�.");
				return;
			}
		}
		
		System.out.println("��й�ȣ : "); 
		int ��й�ȣ = Day08_7_ATM.scanner.nextInt();
		//���� 4�ڸ���
		String s��й�ȣ = Integer.toString(��й�ȣ);
			//Integer.toString(����); ���ڿ� => ���ڿ�
		
		if(s��й�ȣ.length() != 4) {
				//���ڿ�.length : ���ڿ� ����[ ���ڼ� ]
			System.err.println("[����] ��й�ȣ�� 4�ڸ� �Դϴ�");
			return;
		}
		//System.out.println(s��й�ȣ);
		
		System.out.println("������ : "); 
		String ������ = Day08_7_ATM.scanner.next();
	
		�������� temp = new ��������(���¹�ȣ, ��й�ȣ, ������);
		Day08_7_ATM.���¸��.add(temp);
		System.err.println("[�Ϸ�] �������� ���� ������ �Ǿ����ϴ�");
	
	}
	@Override
	public void �Ա�() {
		System.out.println("�������� �Ա� ȭ��");
		super.�Ա�();
	}

	@Override
	public void ���() {
		System.out.println("�������� ��� ȭ��");
		super.���();
	}

	@Override
	public void ��ü() {
		System.out.println("�������� ��ü ȭ��");
		super.��ü();
	}
	
	
	
	



}
