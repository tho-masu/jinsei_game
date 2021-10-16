package database;

public class MapBean {
//mass_index のMapDAOに対応
	private int id,no,mass_index;
	private String png;

	public MapBean(){

	}

	public MapBean(int id,String no,String png,int mass_index){

		//this.id=id;
		try{
			this.no = Integer.parseInt(no);
		}catch(Exception e){
			this.no = Integer.MIN_VALUE; //NULLの代わり（０と表現されないように）
		}
		this.id=id;
		this.png=png;
		this.mass_index=mass_index;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getMass_index() {
		return mass_index;
	}

	public void setMass_index(int mass_index) {
		this.mass_index = mass_index;
	}

	public String getPng() {
		return png;
	}

	public void setPng(String png) {
		this.png = png;
	}
}
