package database;
import java.sql.*;

public interface ResultSetBeanMapping<T> {
	public T createFromResultSet(ResultSet rs)throws SQLException;
}
