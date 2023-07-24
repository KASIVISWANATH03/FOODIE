package FoodiePackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DataInjector {
	public static void RegData(String name,String phone,String mail,String pass)
	{
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uname = "system";
		String passw = "system";
		String sql = "INSERT INTO HOTELCUSTOMER VALUES(?,?,?,?)";
		try
		{
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,uname,passw);
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, phone);
			ps.setString(3, mail);
			ps.setString(4, pass);
			ps.executeUpdate();
			System.out.println("register success");
			
		}
		catch (Exception e)
		{
			
		}
	}
	
	public static void addProduct(String pid,String pname,String pdesc,String pprice,String pimg)
	{
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uname = "system";
		String passw = "system";
		String sql = "INSERT INTO ITEMS VALUES(?,?,?,?,?)";
		try
		{
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,uname,passw);
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, pid);
			ps.setString(2, pname);
			ps.setString(3, pdesc);
			ps.setString(4, pprice);
			ps.setString(5, pimg);
			ps.executeUpdate();
			System.out.println("added products successfully");
			
		}
		catch (Exception e)
		{
			
		}
	}
}

