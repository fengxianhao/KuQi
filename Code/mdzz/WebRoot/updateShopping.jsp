<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.DriverManagers2"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>修改商品</title>
    
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
  <style type="text/css">
body {
	background: url("image/017.jpg");
	background-size: cover;
}
</style>

<script>
$(function(){
	//有全选且点文字可以选中
	$("#checkbox").selectCheck();
	//无全选且只能点击勾选框
	$("#checkbox1").selectCheck({
		allId:null,
		parentSelect:null
	});
	//点文字可选中
	$("#radiobox").selectRadio();
	//只能点击单选框
	$("#radiobox1").selectRadio({parentSelect:null});
});
</script>
  
  <body style="text-align: center;">
    <%
    	request.setCharacterEncoding("utf-8");
    	String goodsID=request.getParameter("goodsID");
    	Connection conn=DriverManagers2.getConnection1();
    	String sql="select * from manage where goodsID='"+goodsID+"'";
    	PreparedStatement ps=conn.prepareStatement(sql);
    	ResultSet rs=ps.executeQuery();
    %>
    <form action="updateLogic.jsp" method="post">
    <%
    	if(rs.next()){
    %>
    	<h1>修改商品信息</h1>
    	<p>商品名称：
    	<input type="text" name="gName" value="<%=rs.getString("gname")%>" /></p>
    	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商品展示：
    	<input type="file" name="gShow"  value="<%=rs.getString("gShow")%>" /></p>
    	商品价格：
    	<input type="text" name="price" value="<%=rs.getString("price")%>" /><br>
    	
    	
    	
    	
    	
    
    
    	<input type="hidden" name="goodsID" value="<%=rs.getString("goodsID")%>" />
    	<br>
    	<input type="submit" name="goodsID" value="确定" />
    	
    <%
    	}
    %>
    </form>
  </body>
</html>

