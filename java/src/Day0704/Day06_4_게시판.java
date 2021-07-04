package Day0704;

import java.util.ArrayList;
import java.util.Scanner;

public class Day06_4_게시판 {

	//main밖에 선언하는 이유 : 다른 클래스에서 해당 메모리[변수/객체] 접근하기 위해
		//단점 : main부터 실행되기 때문에 main메소드가 해당메모리 인식X
			//static : main메소드 보다 메모리 우선할당
				//프로그램 종료시까지 메모리 할당
				//전반적인 모든 코드에 사용되는 메모리 할당 시 
	static Scanner 입력객체 = new Scanner(System.in);
	//리스트
	static ArrayList<게시물> 게시물목록 = new ArrayList<>();
		// ArrayList<리스트에 담을 클래스> 객체명 = new ArrayList<>();
			// <> : 제네릭
			//리스트명.add(객체명) : 리스트에 객체 추가
			//리스트에 
	//게시판 프로그램
	public static void main(String[] args) {
		
		
		
		
		while(true) {
		System.out.println("-----커뮤니티 게시판-----");
		System.out.println("번호\t제목\t작성자\t조회수");
		//모든 게시물 출력
			for(int i = 0; i<게시물목록.size();i++) {
				System.out.println(i+"\t"+게시물목록.get(i).제목+"\t"+게시물목록.get(i).작성자+"\t"+게시물목록.get(i).조회수+"\t");
			}
		
		System.out.println("1.글쓰기 2.게시물보기 3.게시물삭제");
		int 선택 = 입력객체.nextInt();
		if(선택 == 1) {
			게시물.게시물등록();
		}
		if(선택 == 2) {
			System.out.println("---->게시물 번호 선택 : ");
			int 번호 = 입력객체.nextInt();
			게시물.게시물상세보기(번호);
		}
		if(선택 == 3) {}
		
		
		}
	}//main
	
}//class
