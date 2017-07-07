package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import entity.User;

public class LoginServlet extends HttpServlet {


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//����ҳ������ʽ
		     request.setCharacterEncoding("utf-8");
		     response.setCharacterEncoding("utf-8");
		     HttpSession session=request.getSession();
	 //��ȡֵ
		     String name=request.getParameter("userName");
		     String pwd=request.getParameter("pwd");
		     User user=UserDao.findUserById(name, pwd);
		     if (user.getcName()!=null) {
		    	 session.setAttribute("userName", name);
				 response.sendRedirect("MyFirstServlet");
			 }else {
				 request.setAttribute("massage","登录失败，请重新登录。");
				 request.setAttribute("url","login.jsp");
				 request.getRequestDispatcher("massage.jsp").forward(request, response);
			}
	}

}
