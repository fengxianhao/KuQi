package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import db.Dbmanage;

import entity.User;

public class UserDao {
	//ͨ��admin�����û�,���ж������Ƿ���ȷ
	public static User findUserById(String admin,String password){
		  User user=new User();
		  ResultSet rst=Dbmanage.runSelectSql("select * from customer where cName='"+admin+"'");
		  try {
			if (rst.next()) {//�ж��û��Ƿ����
				if (rst.getString(2).equals(password)) {//�ж��û������Ȩ���Ƿ�ƥ��
					user.setcName(rst.getString(1));
					user.setPassword(rst.getString(2));
				}	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
	//ͨ��admin�����û�,���ж������Ƿ���ȷ
	public static User findUserByIds(String admin){
		  User user=new User();
		  ResultSet rst=Dbmanage.runSelectSql("select * from customer where cName='"+admin+"'");
		  try {
			if (rst.next()) {//�ж��û��Ƿ����			
					user.setcName(rst.getString(1));
					user.setPassword(rst.getString(2));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
}
