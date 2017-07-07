<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.DriverManagers2"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'updateLogic.jsp' starting page</title>
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
    	String goodsID=request.getParameter("goodsID");
    	String gName=request.getParameter("gName");
    	String gShow=request.getParameter("gShow");
    	String price=request.getParameter("price");
    	//String gStatus=request.getParameter("gStatus");
    	Connection conn=DriverManagers2.getConnection1();
    	String sql="update manage set gname='"+gName+"',gShow='"+gShow+"',price = '"+price+"' where goodsID='"+goodsID+"' ";
    	PreparedStatement ps=conn.prepareStatement(sql);
    	ps.executeUpdate();
    	response.sendRedirect("shopping.jsp");
    %>
  </body>
</html>
