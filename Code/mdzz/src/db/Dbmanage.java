package db;


import java.sql.*;

import javax.swing.table.DefaultTableModel;

public class Dbmanage {
     private static final String DRIVERNAME="com.mysql.jdbc.Driver";
     private static final String URL="jdbc:mysql://localhost:3306/kuqi?characterEncoding=utf8";
     private static final String USER="root";
     private static final String PASSWORD="root1234";
     private static Connection conn=null;
     private static PreparedStatement pst=null;
     private static ResultSet rst=null;
     
     public static Connection getCon(){
    	 try {
			Class.forName(DRIVERNAME);
		    conn=DriverManager.getConnection(URL,USER,PASSWORD);
		 
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}
    	 return conn;
    	
     }
  
     public static ResultSet runSelectSql(String sql){
    	 try {
			conn=getCon();
			pst=conn.prepareStatement(sql);
			rst=pst.executeQuery();
			 
		} catch (Exception e) {
			
			e.printStackTrace();
		}
    
    	 return rst;
     }
     
     public static boolean runUpdate(String sql){
    	 try {
    		conn=getCon();
 			pst=conn.prepareStatement(sql);
 			pst.executeUpdate();
 			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
     }

   }