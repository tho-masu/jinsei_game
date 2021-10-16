package game;

//碁盤のマスの1つのオブジェクト
public class MapMass {

	//オブジェクトに入れる情報(色　コメント）

	//色：0＝白　1＝ピンク　2=(1人目のプレイヤー）青　3=(2人目のプレイヤー）紫　4=(3人目のプレイヤー）緑　5=（4人目のプレイヤー）オレンジ）
	private int color = 0;
	//ます目の画像
	private String png = null;
	//ます目のイベント
	private String event = null;

	private int no = 0;

	public int getColor() {
		return color;
	}

	public void setColor(int color) {
		this.color = color;
	}

	public String getPng() {
		return png;
	}

	public void setPng(String png) {
		this.png = png;
	}

	public String getEvent() {
		return event;
	}

	public void setEvent(String event) {
		this.event = event;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

}
