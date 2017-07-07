package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DriverManagers;

public class ThumbsUpServlet extends HttpServlet {
//����
	
	private static final long serialVersionUID = 1L;

	public ThumbsUpServlet() {
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
		String sql="SELECT COUNT(`poll`) FROM `polls` WHERE `goodsID`='"+goodsID+"'AND`cName`='"+cName+"'";
		try {
			Connection conn = DriverManagers.getConnection();
			PreparedStatement psd=conn.prepareStatement(sql);
			ResultSet rst=psd.executeQuery();
			int count=rst.getInt("COUNT(`poll`)");
			if(count>=1){
				request.setAttribute("poll", true);
				request.getRequestDispatcher("").forward(request, response);
			}else{
				String sql2="INSERT INTO `polls` (`cName`, `goodsID`, `poll`) VALUES ('"+cName+"', '"+goodsID+"', '1')";
				PreparedStatement psd2=conn.prepareStatement(sql2);
				psd2.executeUpdate();
				String sql3="SELECT COUNT(`poll`) FROM `polls`WHERE `goodsID`='"+goodsID+"'";
				PreparedStatement psd3=conn.prepareStatement(sql3);
				ResultSet rst2=psd3.executeQuery();
				int pollCount=rst2.getInt("COUNT(`poll`)");
				String sql4="UPDATE `goods` SET `pollCount` = '"+pollCount+"' WHERE `goodsID` = '"+goodsID+"'";
				PreparedStatement psd4=conn.prepareStatement(sql4);
				psd4.executeUpdate();
				response.sendRedirect("ShowMessageServlet");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
