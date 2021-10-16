package database;

import java.sql.SQLException;
import java.util.List;

public class MapDAO {

	public static List<MapBean> getMapList()throws SQLException{
		String sql="SELECT ID,NO,PNG,MASS_INDEX FROM mass_index order by mass_index asc" ;
		return MapDBManager.findAll(sql, new MapBeanMapping());
	}

}
