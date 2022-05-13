package shopDBConn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ShopDBConn {
	
private Connection con;
	
	public Connection getConnection(){
		return con;
	}
	
	public ShopDBConn() throws ClassNotFoundException, SQLException{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "shop","1234");
	}

}
