package Day0711;

import java.util.ArrayList;

public class Day08_6 {
	public static void main(String[] args) {
		회원 유저1 = new 회원("qwe","qwe");
		VIP 유저2 = new VIP("asd", "asd", "골드");
		관리자 유저3 = new 관리자("wer","wer","대리");
		
		
		유저1.회원정보();
		System.out.println("---------------");
		유저2.회원정보();
		System.out.println("---------------");
		유저3.회원정보();
		
		
		//리스트
		ArrayList<회원> 회원목록 = new ArrayList<>(); //슈퍼클래스 리스트
		ArrayList<VIP> vip목록 = new ArrayList<>(); //서브클래스 리스트
		ArrayList<관리자> 관리자목록 = new ArrayList<>(); //서브클래스 리스트
		
		회원목록.add(유저1);
		회원목록.add(유저2);
		회원목록.add(유저3);
			회원목록.get(0).회원정보();
			회원목록.get(1).회원정보();
			회원목록.get(2).회원정보();
		System.out.println("---------------");	
		//vip목록.add(유저1); 슈퍼클래스는 담을수가 없다.
		vip목록.add(유저2);
		//vip목록.add(유저3); 다른 서브클래스도 담을수가 없다.
		System.out.println("---------------");
		
		//관리자목록.add(유저1);
		//관리자목록.add(유저2);
		관리자목록.add(유저3);
		
		//* 상속 받았을 때 리스트
			// 1. 리스트를 사용 시 슈퍼클래스로 선언된 리스트는 하위클래스를 담을 수 있다.
			// 2. 하위클래스 선언된 리스트는 상위클래스를 담을 수 없다.
		
	}
	
	
	
	
	
}
