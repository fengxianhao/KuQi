package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DriverManagers;




public class OptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public OptionServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String opt = request.getParameter("opt");
		String sql = "";
		if(opt.equals("delete")){
			//ɾ������
			String goodsID = request.getParameter("goodsID");
			sql = "delete from manage where goodsID = "+goodsID;
			
		}else if(opt.equals("add")){
			String gName = request.getParameter("gName");
			gName = new String(gName.getBytes("ISO-8859-1"),"UTF-8");
			String gShow = request.getParameter("gShow");
			String price = request.getParameter("price");
			//String gStatus = request.getParameter("gStatus");
			sql = "insert into manage (goodsID,gName,gShow,price) values (null,'"+gName+"','"+gShow+"','"+price+"')";
			
		}else if(opt.equals("update")){
			String gName = request.getParameter("gName");
			String price = request.getParameter("price");
			//String gStatus = request.getParameter("gStatus");
			gName = new String(gName.getBytes("ISO-8859-1"),"UTF-8");
			String gShow = request.getParameter("gShow");
			String goodsID = request.getParameter("goodsID");
			sql = "update manage set gName = '"+gName+"',gShow = '"+gShow+"',price = '"+price+"' where goodsID="+goodsID;
			
		}
		DriverManagers dms = new DriverManagers();
		try {
			dms.executeNoneQuery(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("RegistServlet");
	}

}
