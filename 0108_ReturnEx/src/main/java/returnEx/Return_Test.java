package returnEx;

import java.util.Random;

public class Return_Test {
	
	public int test() { //리턴값이 정수형 변수 1개일 경우
		
		int a = 100;
		int b = 200;
		
		return a;
		
	}
	public int[] test2(){
		Random rand = new Random();
		int[] lotto = new int[6];
		for(int i=0;i<6;i++) {
			lotto[i] = rand.nextInt(45)+1; //0~44 +1 -> 1~45
		}
		return lotto;
	}
	
	public Dto test3() {
		Dto dto = new Dto();
		dto.setName("홍길동");
		dto.setKor(90);
		dto.setChk(true);
		
		return dto;
	}
	
	public String test4() {
		int kor = 90;
		int eng = 88;
		int mat = 77;
		
		String tot = kor+"/" + eng + "/" +mat;
		//"90/88/77"
		
		return tot;
	}
}
