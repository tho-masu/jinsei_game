package game;

import java.sql.SQLException;
import java.util.Comparator;
import java.util.List;

import database.Bean;
import database.DAO;

public class PlayerObject implements Comparable <PlayerObject>{
	private String name,job;
	private int money,currentSquare;
	private boolean isGameOver;
	private String finalBet;

	public PlayerObject(String name){
		this.name=name;
		this.money=10000;
		this.currentSquare=0;
		this.isGameOver=false;
		this.finalBet=null;
		this.job="サラリーマン";
	}
	public PlayerObject(String name,String job,String finalBet,int money){
		this.name=name;
		this.money=money;
		this.currentSquare=0;
		this.isGameOver=false;
		this.finalBet=finalBet;
		this.job=job;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getJob() {
		if(money>=10000 && money<=300000){
			return "サラリーマン";
		}else if(money>300000 && money<750000){
			return "中堅リーマン";
		}else if(money>=750000 && money<1500000){
			return "富裕層";
		}else if(money>=1500000){
			return "石油王";
		}else if(money<10000 && money>-100000){
			return "ケチな人";
		}else if(money<=-100000 && money>-500000){
			return "貧困層";
		}else{
			/*if(money<=-500000)*/
			return "借金地獄";
		}
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}

	public void addMoney(int money){
		this.money += money;
	}

	public int getCurrentSquare(){
		return currentSquare;
	}
	public void setCurrentSquare(int currentSquare) {
		this.currentSquare = currentSquare;
	}

	public void addCurrentSquare(int dice){
		this.currentSquare+=dice;
	}

	public List<Bean> getSquareList(){
		List<Bean> squareList=null;
		try {
			squareList = DAO.getSquareList(this.currentSquare);
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		return squareList;
	}

	public boolean getIsGameOver(){
		return isGameOver;
	}
	public void gameOver(){
		this.isGameOver = true;
	}

	public void setFinalBet(String finalBet){
		this.finalBet = finalBet;
	}
	public String getFinalBet(){
		return finalBet;
	}

	@Override
	public int compareTo(PlayerObject o) {
		if(this.money<o.getMoney()){
			return 1;
		}else if(this.money>o.getMoney()){
			return -1;
		}
		return 0;
	}
}
