package database;

import game.PlayerObject;

import java.sql.SQLException;
import java.util.List;

public class DAO {
	public static List<Bean> getSquareList(int currentSquare)throws SQLException{
		String sql="SELECT NO,EVENT,COMMAND FROM jinsei_map WHERE NO BETWEEN "+currentSquare+" AND "+(currentSquare+6)+" ORDER BY NO ASC;";
		return DBManager.findAll(sql, new BeanMapping());
	}

	public static List<Bean> getAllSquareList()throws SQLException{
		String sql="SELECT NO,EVENT,COMMAND FROM jinsei_map ORDER BY NO ASC;";
		return DBManager.findAll(sql, new BeanMapping());
	}

	public static int insert(PlayerObject playerObject)throws SQLException{
		String sql="INSERT INTO jinsei_ranking"+
				"(name,job,final_bet,money) VALUES("+
				"'"+playerObject.getName()+"','"+playerObject.getJob()+"','"+playerObject.getFinalBet()+"',"+playerObject.getMoney()
				+");";
		return DBManager.simpleUpdate(sql);
	}

	public static List<PlayerObject> getRanking()throws SQLException{
		String sql="SELECT name,job,final_bet,money FROM jinsei_ranking ORDER BY money DESC;";
		return DBManager.findAll(sql, new RankingBeanMapping());
	}

	public static int rankingCount()throws SQLException{
		String sql="select count(*) from jinsei_ranking;";
		return DBManager.count(sql);
	}

	public static int rankingKickOut(int n)throws SQLException{
		String sql="delete from jinsei_ranking where money in"+
				" (select money from jinsei_ranking order by money asc limit "+n+");";
		return DBManager.simpleUpdate(sql);
	}

	public static int rankingDelete(String name,String job,String finalBet,int money)throws SQLException{
		String sql="delete from jinsei_ranking where name='"+name+"' and job='"+job+"' and final_bet='"+finalBet+"' and money="+money+";";
		return DBManager.simpleUpdate(sql);
	}
}
