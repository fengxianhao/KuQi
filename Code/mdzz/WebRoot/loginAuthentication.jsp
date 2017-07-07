<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- 在需要验证的页面添加 <%@ include file="loginAuthentication.jsp"%> --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginAuthentication.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function logA(){
			alert("未登录");
		}
	</script>
  </head>
  
  <body >
    <%if(session.getAttribute("user")==null){
    	%>
    	<div onload="logout()">
		3秒后跳转到登录页面
		<p>
		如果没有跳转，请点<a href="login.jsp">这里</a></p>
		</div>
		<%
		response.setHeader("refresh","3;URL=login.jsp");
		return;
		}
	%>
  </body>
</html>
