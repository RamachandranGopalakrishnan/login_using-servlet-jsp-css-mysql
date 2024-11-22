package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class logInDataBase {
	static final String url="jdbc:mysql://localhost:3306/cakewebsite";
    static  final String name="root";
    static  final String  pass="17062001";
	
    
	public static int checkLogIn(String userName,String password) throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connect=DriverManager.getConnection(url, name, pass);
		String query="select * from login where name=? and password=?";
		PreparedStatement pst=connect.prepareStatement(query);
		pst.setString(1, userName);
		pst.setString(2,password);
		ResultSet rs=pst.executeQuery();
		if(rs.next()) {
			return 1;
		}
		return 0;
		
	}
	public  static int signUp(String username,String password) throws SQLException, ClassNotFoundException {
		System.out.println("started");
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connect=DriverManager.getConnection(url, name, pass);
		String query="insert into login(name,password)values(?,?);";
		PreparedStatement pst=connect.prepareStatement(query);
		pst.setString(1, username);
		pst.setString(2,password);
		if(pst.executeUpdate()>0) {
			System.out.println("hello it return 1");
			return 1;
		}
		else {
			System.out.println("return 0");
			return 0;
			
			}
		
		}
}
