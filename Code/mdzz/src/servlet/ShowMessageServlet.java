package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DriverManagers;
import model.CommentsInfo;

public class ShowMessageServlet extends HttpServlet {
//����������Ϣ�͵�������
	
	private static final long serialVersionUID = 1L;

	public ShowMessageServlet() {
		super();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String goodsID= request.getParameter("goodsID");
		//�������鱣������
		List<CommentsInfo> list=new ArrayList<CommentsInfo>();
		String nub = request.getParameter("nub");
		int count;
		int Commentsnub = 5;
		Commentsnub+=Integer.parseInt(nub);
		//��ѯ��Ʒ���۴�������
		String sql="SELECT `cName`, `gComment`,`commData` FROM `comments` WHERE `goodsID`='"+goodsID+"' LIMIT "+Commentsnub;
		try {
			Connection conn = DriverManagers.getConnection();
			PreparedStatement psd=conn.prepareStatement(sql);
			ResultSet rst=psd.executeQuery();
			while (rst.next()) {
				CommentsInfo commentsInfo=new CommentsInfo();
				commentsInfo.setcName(rst.getString("cName"));
				commentsInfo.setgComment(rst.getString("gComment"));
				commentsInfo.setCommData(rst.getString("commData"));
				list.add(commentsInfo);
			}
			String sql2="SELECT `pollCount` FROM `goods` WHERE `goodsID`='"+goodsID+"'";
			PreparedStatement psd2=conn.prepareStatement(sql2);
			ResultSet rst2=psd2.executeQuery();
			int pollCount=rst2.getInt("pollCount");
			//��������
			request.setAttribute("pollCount", pollCount);
			//��������
			request.setAttribute("Commentsnub", Commentsnub);
			//��������
			request.setAttribute("comments", list);
			//����ת��
			request.getRequestDispatcher("").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
