<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录失败</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery.js"></script>
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
	<p>&nbsp;</p>
<h1 style="text-align:center;">抱歉，您登录失败！</h1>
<h2 style="text-align:center;"><a href="loginback.jsp" style="color: red; text-decoration: none">点击返回登录</a></h2>
<div id="rocket">&nbsp;</div>
<p>&nbsp;</p>
<p><hgroup></hgroup></p>

<p><!-- Internet Explorer HTML5 enabling script: --><!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="css/styles.css" /><script src="js/script.js"></script></p>
<p>&nbsp;</p>
</body>
</html>
