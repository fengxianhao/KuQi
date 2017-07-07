package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.GoodsInfo;


public class DriverManagers {
	private static String url = "jdbc:mysql://localhost:3306/kuqi??useUnicode=true&characterEncoding=utf-8";
	private static String userName = "root";
	private static String passWord = "root1234";
	private static Connection  conn = null;
	
	public static Connection getConnection() throws Exception{
		//�������Ϊ�գ��򴴽�һ���µ����ӣ����򲻴���
		if(null == conn){
			//����������
			Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(url,userName,passWord);
		}
		return conn;
	}
	//返回改变行数
	public int executeNoneQuery(String sql) throws Exception{
		PreparedStatement psd = getConnection().prepareStatement(sql);
		int count = psd.executeUpdate();
		return count;
	}
	//返回查询数据
	public ResultSet executeQuery(String sql) throws Exception{
		PreparedStatement psd = getConnection().prepareStatement(sql);
		ResultSet rst = psd.executeQuery();
		return rst;
	}
	
	public static void main(String[] args) throws Exception {
		
		
	}
}
