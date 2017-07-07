package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DriverManagers;
import model.GoodsInfo;


public class MyFirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("opt");
		if(a==null){
			a="";
		}
		String opt=new String(a.getBytes("ISO-8859-1"),"UTF-8");
	
	
	System.out.println(opt);
	String sql = "SELECT `goodsID`,`gStatus`,`gName`,`gShow` FROM goods WHERE `gType` LIKE '%"+opt+"%' OR `gName` LIKE '%"+opt+"%'";
	System.out.println(sql);
	DriverManagers dm = new DriverManagers();
	List<GoodsInfo> list = new ArrayList<GoodsInfo>();
	try {
		ResultSet rst = dm.executeQuery(sql);
		
		while(rst.next()){
			GoodsInfo userInfo = new GoodsInfo();
			userInfo.setGoodsID(rst.getInt("goodsID"));
			userInfo.setgStatus(rst.getString("gStatus"));
			userInfo.setgName(rst.getString("gName"));
			userInfo.setgShow(rst.getString("gShow"));
			list.add(userInfo);
		}
			request.setAttribute("userInfoList", list);
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	request.getRequestDispatcher("page.jsp").forward(request, response);
	}}
