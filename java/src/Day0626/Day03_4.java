package Day0626;

import java.util.Scanner;

public class Day03_4 {
	//키오스크 프로그램 [무인 프로그램]
	  //판매제품 : 1. 콜라[500] 2.커피[600] 3.스무디[700] 4.결제
	   //선택한 제품을 장바구니에 담기
			//결제 여부 물어보고 결제시 현금 입력받기 [ 잔돈 출력후 종료]
	  //제품재고 : 콜라[10개] 커피[10개] 스무디[10]
		//재고가 없을경우 재고없음 출력

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		//변수 선언 / 장바구니, 재고
		//지역변수 : {}안에서 선언된 변수는
		while(true) {
		System.out.println("------> 카페 키오스크 메뉴");
		int 콜라구매수 = 0;
		int 커피구매수 = 0;
		int 스무디구매수 = 0;
		int 콜라재고 = 10;
		int 커피재고 = 10;
		int 스무디재고 = 10;
		
		int 총결제액 = 0;
		  
	  while(true) { //무한루프 w s
		  if(콜라구매수 == 0 && 커피구매수 ==0&&스무디구매수 ==0) {
			  System.out.println("***장바구니 비어있음***");
		  }else {
		
		  System.out.println("---------> 장바구니 현황");
		  System.out.println("제품명\t구매수량\t금액");
		  if(콜라구매수 !=0)System.out.println("콜라\t"+콜라구매수+"\t"+콜라구매수*500);
		  if(커피구매수 !=0)System.out.println("커피\t"+커피구매수+"\t"+커피구매수*600);
		  if(스무디구매수 !=0)System.out.println("스무디\t"+스무디구매수+"\t"+스무디구매수*700);
		  총결제액 = (콜라구매수*500)+ (커피구매수*600) +(스무디구매수*700);
		  System.out.println("총 결제액 : "+총결제액);
		  }
		  System.out.println("1.콜라[500] 2.커피[600] 3.스무디[700] 4.결제");
		  int 선택 = scanner.nextInt();
		  
		  if(선택 ==1) {
			  if(콜라재고 <= 0) {System.out.println("재고가 없습니다.");}
			  else {
			  System.out.println("콜라를 담았습니다.");
			  콜라구매수++;
			  }
		  }
		  if(선택 ==2) {
			  if(커피재고 <= 0) {System.out.println("재고가 없습니다.");}
			  else{System.out.println("커피를 담았습니다.");
			  커피구매수++;
			  }
		  }
		  if(선택 ==3) {
			  if(스무디재고 <= 0) {System.out.println("재고가 없습니다.");}
			  else{System.out.println("스무디를 담았습니다.");
			  스무디구매수++;
			  }
		  }if(선택 ==4) {
			  System.out.println("위 장바구니의 제품을 결제 하시겠습니까?[y/n]");
			  String 결제선택 = scanner.next();
			  if(결제선택.equals("y")||결제선택.equals("Y")||결제선택.equals("예")) {
				  System.out.println("--------< 현금을 넣어주세요");
				  int 금액 = scanner.nextInt();
				  
				  //금액이 부족하면 졀제막기
				  if(금액<총결제액) {
					  System.out.println("금액이 부족합니다.");
					  System.out.println("-----> 결제 취소합니다.");
					  break;
				  }else {
					  System.out.println("----->결제성공");
					  // 재고 감소
					   콜라재고 -= 콜라구매수;
					   커피재고 -= 커피구매수;
					   스무디재고 -= 스무디구매수;
					   System.out.println("---->잔돈 :"+(금액 - 총결제액));
					   break;
				  }
			  }else {
				  System.out.println("결제를 취소합니다.");
				  break;
			  }
			//결제 여부 물어보고 결제시 현금 입력받기 [ 잔돈 출력후 종료]
			  //System.out.println("현금을 입력해 주십시오");
			  //int 현금 = scanner.nextInt();
			  
			  //System.out.printf("입력한 현금 : %d",현금);
			  //System.out.println("총 결제액 : "+총결제액);
		  }
	  }
	}//w e
	
	
	}//m e

}//c e
