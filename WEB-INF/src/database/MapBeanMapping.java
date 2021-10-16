package database;

import java.sql.ResultSet;
import java.sql.SQLException;

	public class MapBeanMapping implements ResultSetBeanMapping<MapBean> {

		public MapBean createFromResultSet(ResultSet rs)throws SQLException{
			MapBean mbean=new MapBean(rs.getInt("id"),rs.getString("no"),rs.getString("png"),rs.getInt("mass_index"));
			return mbean;
		}
	}

