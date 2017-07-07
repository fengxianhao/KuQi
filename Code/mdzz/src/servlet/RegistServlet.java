package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Manage;
import model.UserInfo;

import dao.DriverManagers;



/**
 * �������Ӧ�ĺ�̨�߼�����
 * @author hhhh
 *
 */
public class RegistServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		DriverManagers dms = new DriverManagers();
		//�����û����ϣ����ڴ���û�
		List<Manage> list = new ArrayList<Manage>();
		String pageStr = request.getParameter("page");
		int page = 0;
		int pageSize = 20;
		if(null == pageStr){
			page = 1;
		}else{
			page = Integer.parseInt(pageStr);
		}
		int stratPoint = (page-1)*pageSize;
		
		
		String sql = "select goodsID,gName,gShow,price from manage limit "+stratPoint+","+pageSize;
		try {
			ResultSet rst = dms.executeQuery(sql);
			while(rst.next()){
				Manage manage = new Manage("GoodsID","gName","gShow","price");
				manage.setGoodsID(rst.getInt("GoodsID"));
				manage.setgName(rst.getString("gName"));
				manage.setgShow(rst.getString("gShow"));
				manage.setPrice(rst.getString("price"));
			
				list.add(manage);
			}
			//����ѯ�õ��Ľ�������뵽������
			request.setAttribute("userInfoList", list);
			//��ѯ�ж���ҳ
			String sqlTwo = "select count(*) total from manage";
			ResultSet rstTwo = dms.executeQuery(sqlTwo);
			rstTwo.next();
			int total = rstTwo.getInt("total");
			
			if(page-1 < 1){
				request.setAttribute("before", 1);
			}else{
				request.setAttribute("before", page-1);
			}
			
			int totalPage = 0;
			//������ҳ��
			if(total%pageSize == 0){
				totalPage = total/pageSize;
			}else{
				totalPage = total/pageSize+1;
			}
			request.setAttribute("totalPage", totalPage);
			if(page+1 > totalPage){
				request.setAttribute("after", totalPage);
			}else{
				request.setAttribute("after", page+1);
			}
			
			
			//����ת����index.jspҳ��
			request.getRequestDispatcher("shopping.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	
	
}
