package servlet;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserInfo;
import dao.DriverManagers;

public class MyFirstServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MyFirstServlet2() {
        super();
    }

	//����GET����
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	//����POST����
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		HttpSession session=request.getSession();
		session.setAttribute("username",userName);
		session.setAttribute("passWord",passWord);
		String sql = "select * from userInfo where userName='"+userName+"' and passWord='"+passWord+"'";
		DriverManagers dm = new DriverManagers();
		ResultSet rst;
		try {
			rst = dm.executeQuery(sql);
			UserInfo userInfo  = null;
			while(rst.next()){
				int id = rst.getInt("Id");
				String name = rst.getString("userName").trim();
				String pass = rst.getString("passWord").trim();
				userInfo = new UserInfo(id, name, pass);
			}
			if(null != userInfo){
				response.sendRedirect("login_begin.jsp");
			}else{
				response.sendRedirect("error.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
