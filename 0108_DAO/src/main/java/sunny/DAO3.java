package sunny;

public class DAO3 {
	
    public DTO3 test() {
    	String name = "홍길동";
    	String age = "24";
    	int kor = 100;
    	int eng = 80;
    	int hap = kor + eng;
    	
    	DTO3 dto = new DTO3();
    	dto.setName(name);
    	dto.setAge(age);
    	dto.setHap(hap);
    	
    	
    	return dto;
	}
}
