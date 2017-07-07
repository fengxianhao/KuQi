package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DriverManagers;

public class CommentServlet extends HttpServlet {
//����
	
	private static final long serialVersionUID = 1L;


	public CommentServlet() {
		super();
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session =request.getSession();
		String cName=(String) session.getAttribute("cName");
		String goodsID= request.getParameter("goodsID");
		String comment=request.getParameter("comment");
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String currentTime=sdf.format(new Date());
		String sql="INSERT INTO `comments` (`cName`, `goodsID`, `gComment`,`commData`) VALUES ('"+cName+"', '"+goodsID+"', '"+comment+"','"+currentTime+"'); ";
		try {
			Connection conn = DriverManagers.getConnection();
			PreparedStatement psd=conn.prepareStatement(sql);
			psd.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("ShowMessageServlet");
	}

	

}
