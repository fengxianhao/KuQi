<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.DriverManagers2"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<title>删除商品</title>
	<%
	String userName = (String)session.getAttribute("userName");
	String passWord = (String)session.getAttribute("passWord");
	if(userName==null&&passWord==null){
	      out.print("未登录");  //session中没有正确的用户名和密码则跳转到登录页面
	      response.sendRedirect("loginback.jsp");
	}else{
	      //out.print("已登录");    //session中没有正确的用户名和密码则不做任何处理
	} 
%>
	</head>

	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String goodsID = request.getParameter("goodsID");
			Connection conn = DriverManagers2.getConnection1();
			String sql = "delete from manage where goodsID="
					+ Integer.parseInt(goodsID);
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.executeUpdate();
			response.sendRedirect("shopping.jsp");
			
		%>

	</body>
</html>
