package FoodiePackage;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DataFetcher {
	public static String dataverify(String email) {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "system";
		String pwd = "system";
		String query = "select pass from hotelcustomer where mail = ?";
		String dbpass = "";
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,user,pwd);
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			rs.next();
			dbpass = rs.getString(1);
			System.out.println(dbpass);
			
			ps.executeUpdate();
			
		}
		catch(Exception ex)
		{
			System.out.println("login issue");
			ex.printStackTrace();
			
			
		}
		finally {
		return dbpass;
		}
	}
	public static List UserInfo()
	{
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "system";
		String pwd = "system";
		String query = "select name,phone,mail from hotelcustomer ";
		List ulist = new ArrayList();
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,user,pwd);
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next())
			{
				String temp=rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3);
				ulist.add(temp);
			}
			
			
			
		}
		catch(Exception ex)
		{
			System.out.println("problem in fetching data");
			ex.printStackTrace();
			
			
		}
		finally {
		return ulist;
		}
	}
	
	public static List fetchproductinfo()
	{
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "system";
		String pwd = "system";
		String query = "select pid,pname,pdesc,pprice,pimg from items";
		List ilist = new ArrayList();
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,user,pwd);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next())
			{
				String temp=rs.getInt(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getInt(4)+":"+rs.getString(5);
				ilist.add(temp);
			}
		}
		catch(Exception ex)
		{
			System.out.println("Problem in fetching product ");
			ex.printStackTrace();
			
			
		}
		finally
		{
		return ilist;
		}
	
	}
}
