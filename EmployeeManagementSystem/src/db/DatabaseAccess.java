package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseAccess {
	public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException
	{
		Connection con = null;
		PreparedStatement ps =  null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Good!");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Driver Error!");
			e.printStackTrace();
		}
		
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost/ems_db", "root", "");
			ps = con.prepareStatement(sql);
			System.out.println("Database OK");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("URL Error!");
		}
		
		return ps;
	}

}
