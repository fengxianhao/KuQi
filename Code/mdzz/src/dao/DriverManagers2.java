package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Manage;
import model.UserInfo;


public class DriverManagers2 {
	private static String url = "jdbc:mysql://localhost:3306/kuqi??useUnicode=true&characterEncoding=utf-8";
	private static String userName = "root";
	private static String passWord = "root1234";
	private static Connection  conn = null;
	
	static Connection getConnection() throws Exception{
		//�������Ϊ�գ��򴴽�һ���µ����ӣ����򲻴���
		if(null == conn){
			//����������
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, userName, passWord);
		}
		return conn;
	}
	
	public static Connection getConnection1(){
		try {
			return DriverManager.getConnection(url, userName, passWord);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public int executeNoneQuery(String sql) throws Exception{
		PreparedStatement psd = getConnection().prepareStatement(sql);
		int count = psd.executeUpdate();
		return count;
	}
	
	public ResultSet executeQuery(String sql) throws Exception{
		PreparedStatement psd = getConnection().prepareStatement(sql);
		ResultSet rst = psd.executeQuery();
		return rst;
	}
	
	public static void main(String[] args) throws Exception {
		System.out.println(DriverManagers2.getConnection());
		//System.out.println("���ݿ����ӳɹ���");
		/*String sql = "select * from userInfo";*/
		String sql = "select * from manage";
		DriverManagers dm = new DriverManagers();
		ResultSet rst = dm.executeQuery(sql);
		/*UserInfo userInfo  = null;*/
		Manage manage = null;
		while(rst.next()){
	/*		int id = rst.getInt("id");
			String userName = rst.getString("userName");
			String passWord = rst.getString("passWord");
			userInfo = new UserInfo(id, userName, passWord);*/
			
			int goodsID=rst.getInt("goodsID");
			String gName=rst.getString("gName");
			String gShow= rst.getString("gShow");
			String price= rst.getString("price");
		}
	}
}
