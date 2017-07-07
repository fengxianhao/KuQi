package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbhlper {
	//��
		static{
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		//����
		public static Connection getConnection(){
			Connection connection;
			try {
				return connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/kuqi","root","root1234");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
			
		}
		//����
		public static void main(String[] args) {
			Connection connection=getConnection();
			System.out.println(connection);
		}

}
