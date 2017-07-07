package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.Dbmanage;

public class ShopingServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
             request.setCharacterEncoding("utf-8");
             String method=request.getParameter("method");
             String id=request.getParameter("id");
             if(method.equals("addGood")){
            	      ResultSet rst=Dbmanage.runSelectSql("select * from goods2 where id="+Integer.parseInt(id)+"");
            	      try {
						if (rst.next()) {
							   Dbmanage.runUpdate("insert into gouwuche values(null,'"+rst.getString("name")+"',"+rst.getFloat("price")+",1,'"+rst.getString("imgAddress")+"')");
							   request.setAttribute("massage",""+rst.getString("name")+"已添加进购物车");
							   request.setAttribute("url","Myservlet");
							   request.getRequestDispatcher("massage.jsp").forward(request, response);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
             }else if (method.equals("jiesuan")) {
				     Dbmanage.runUpdate("delete from gouwuche");
				     request.setAttribute("massage","结算成功，返回商城。");
					 request.setAttribute("url","Myservlet");
					 request.getRequestDispatcher("massage.jsp").forward(request, response);
			}
		
	}

}
