package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import db.Dbmanage;

import entity.User;

public class UserDao {
	//通过admin查找用户,并判断密码是否正确
	public static User findUserById(String admin,String password){
		  User user=new User();
		  ResultSet rst=Dbmanage.runSelectSql("select * from customer where cName='"+admin+"'");
		  try {
			if (rst.next()) {//判断用户是否存在
				if (rst.getString(2).equals(password)) {//判断用户密码和权限是否匹配
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
	//通过admin查找用户,并判断密码是否正确
	public static User findUserByIds(String admin){
		  User user=new User();
		  ResultSet rst=Dbmanage.runSelectSql("select * from customer where cName='"+admin+"'");
		  try {
			if (rst.next()) {//判断用户是否存在			
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
