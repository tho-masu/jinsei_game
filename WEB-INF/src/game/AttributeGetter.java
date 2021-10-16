package game;

import java.util.List;

import javax.servlet.http.HttpSession;

import database.Bean;

public class AttributeGetter {

	//playerのリストを引っ張ってくるgetter
	public static List<PlayerObject> getPlayer(HttpSession session){
		return (List<PlayerObject>)(session.getAttribute("player"));
	}

	//squareListを引っ張ってくるgetter
	public static List<Bean> getSquareList(HttpSession session){
		return (List<Bean>)(session.getAttribute("squareList"));
	}

	//gameProcessの値を取ってくるgetter
	public static int getGameProcess(HttpSession session) {
		int gp = (Integer)session.getAttribute("gameProcess");
		return gp;
	}

	//numberOfPlayerの値を取ってくるgetter
	public static int getNumberOfPlayer(HttpSession session){
		int numberOfPlayer = (Integer)session.getAttribute("numberOfPlayer");
		return numberOfPlayer;
	}

	//現在順番が回ってきてるプレイヤーの番号を割り出すgetter
	public static int getPlayerOrder(HttpSession session) {
		int n = ((Integer)(session.getAttribute("gameProcess")))%getNumberOfPlayer(session);
		return n;
	}

	//現在順番が回ってきてるプレイヤーのPlayerObjectを返すgetter
	public static PlayerObject getCurrentPlayerObject(HttpSession session) {
		return getPlayer(session).get(getPlayerOrder(session));
	}

	//diceの値を取ってくるgetter
	public static int getDice(HttpSession session) {
		int n = (Integer)(session.getAttribute("dice"));
		return n;
	}

}
