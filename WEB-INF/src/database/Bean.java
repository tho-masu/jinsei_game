package database;

public class Bean {
	public static int ranking_count = 0;
	private String no,event,command;

	public Bean(){
	}
	public Bean(String no,String event,String command){
		this.no=no;
		this.event=event;
		this.command=command;
	}

	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	public String getCommand() {
		return command;
	}
	public void setCommand(String command) {
		this.command = command;
	}



}
