package Day0711;

public class VIP extends ȸ��  {
	
	String ȸ�����;

	public VIP() {
		super();
		// TODO Auto-generated constructor stub
	}

	public VIP(String ���̵�, String ��й�ȣ, String ȸ�����) {
		super(���̵�, ��й�ȣ);
		this.ȸ����� = ȸ�����;
	}

	@Override
	public void ȸ������() {
		super.ȸ������();
		System.out.println("vipȸ������ ��� : "+this.ȸ�����);
	}
	
	
	
}
