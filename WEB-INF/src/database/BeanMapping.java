package database;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BeanMapping implements ResultSetBeanMapping<Bean> {
	public Bean createFromResultSet(ResultSet rs)throws SQLException{
		Bean sbean=new Bean(rs.getString("no"),rs.getString("event"),rs.getString("command"));
		return sbean;
	}
}
