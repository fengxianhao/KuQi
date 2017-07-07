package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import db.Dbmanage;
import entity.User;

public class ZhuCeServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//����ҳ������ʽ
		 request.setCharacterEncoding("utf-8");
	     response.setCharacterEncoding("utf-8");
	    //��ȡֵ
	     String name=request.getParameter("name");
	     String pwd=request.getParameter("password");
	     User user=UserDao.findUserByIds(name);
	     if (user.getcName()!=null) {
	    	 request.setAttribute("massage","注册失败，请重新注册。");
			 request.setAttribute("url","MyZhuCe.jsp");
			 request.getRequestDispatcher("massage.jsp").forward(request, response);
		 }else {
			  Dbmanage.runUpdate("insert into customer (cName,psd)values('"+name+"','"+pwd+"')");
			  request.setAttribute("massage","注册成功，可以登录了。");
			  request.setAttribute("url","login.jsp");
			  request.getRequestDispatcher("massage.jsp").forward(request, response); 
		}
	
	}

}
