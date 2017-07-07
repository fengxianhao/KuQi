<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>添加商品</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<!--<link rel="stylesheet" type="text/css" href="styles.css">
	
	-->
		<style type="text/css">
body {
	background: url("image/017.jpg");
	background-size: cover;
}
</style>


<script type="text/javascript" language="javascript">
    function checkRate(input)
{
     var re = /^[0-9]+.?[0-9]*$/;   //判断字符串是否为数字(0到9之间的所有正整数，如果不是则弹出提示)     //判断正整数 /^[1-9]+[0-9]*]*$/  
    var nubmer = document.getElementById(input).value;    //得到在input下的value里面的ID
    
     if (!re.test(nubmer))
    {
        alert("请输入数字");
        document.getElementById(input).value = "";  //默认可以为空
        return false;
     }
}
</script> 



		<%
			String userName = (String) session.getAttribute("userName");
			String passWord = (String) session.getAttribute("passWord");
			if (userName == null && passWord == null) {
				out.print("未登录"); //session中没有正确的用户名和密码则跳转到登录页面
				response.sendRedirect("login.jsp");
			} else {
				//out.print("已登录");    //session中没有正确的用户名和密码则不做任何处理
			}
		%>

	</head>
			
	<body>
		<!--<img  src="image/017.jpg" width="100%" height="100%">
  	-->
  		<h1>添加商品信息</h1>
		<form action="OptionServlet" method="post">
			<table>

				<tr>
					<td>
						商品名称:
					</td>
					<td>
						<input type="text" name="gName" />
					</td>
					
				</tr>
				

				<tr>
					<td>
						图片:
					</td>
					<td>
						<input type="file" name="gShow">
						<input type="hidden" name="opt" value="add">
					</td>
				</tr>
					
				<tr>
					<td>
						商品价格:
					</td>
					<td>
						<input type="text" name="price"   id="txt_checkingPhone" onkeyup="checkRate(this.id)"/>&nbsp;(请输入数字)
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="submit" value="提交" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
