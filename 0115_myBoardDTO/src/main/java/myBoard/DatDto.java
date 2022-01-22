package myBoard;

public class DatDto {
	private int id, board_id;
	private String name, contenet, pwd, writeday, contentEdit;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContenet() {
		return contenet;
	}
	public void setContenet(String contenet) {
		this.contenet = contenet;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getWriteday() {
		return writeday;
	}
	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}
	public String getContentEdit() {
		return contentEdit;
	}
	public void setContentEdit(String contentEdit) {
		this.contentEdit = contentEdit;
	}
	

}
