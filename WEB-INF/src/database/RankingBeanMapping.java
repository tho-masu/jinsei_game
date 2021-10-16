package database;

import game.PlayerObject;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RankingBeanMapping implements ResultSetBeanMapping<PlayerObject> {
	public PlayerObject createFromResultSet(ResultSet rs)throws SQLException{
		PlayerObject rbean=new PlayerObject(rs.getString("name"),rs.getString("job"),rs.getString("final_bet"),rs.getInt("money"));
		return rbean;
	}
}
