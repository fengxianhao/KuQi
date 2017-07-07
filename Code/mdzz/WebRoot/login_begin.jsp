<!DOCTYPE html>
<html>
<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="refresh" content="2;url=RegistServlet">
  <title>正在登录...</title>
  <link rel="stylesheet" href="css/style4.css" media="screen" type="text/css" />
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
	
<div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
<h4 style=" position: absolute; left: 660px; color: white;">正在登录中...</h4>
</div>
  <canvas id="canvas">
  </canvas>
  <script src="js/index4.js"></script>
</body>
</html>