<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyZhuCe.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<script type="text/javascript" src="js/jquery-1.3.2.min.js" ></script>
		<script type="text/javascript" src="js/jquery.metadata.js" ></script>
		<script type="text/javascript" src="js/jquery.validate.js" ></script>
		<script type="text/javascript" src="js/jquery.validate.messages_cn.js" ></script>
		<script type="text/javascript">
			jQuery.validator.addMethod("regex",function(value,element,params){
				var exp=new RegExp(params);
				return exp.test(value);
			},"格式错误");
			$(function(){
				$("#regFrm").validate({
					//验证规则
					rules:{
						userName:{required:true,regex: /^[\u4e00-\u9fa5\w]+$/},

						pwd:{required:true,minlength:6},
				
					},
					//自定义消息提醒
					messages:{
						userName:{
							required:"请输入用户名",
							rangelength:"用户名的长度在2和10之间",
							regex:"用户名只能包含汉子、字母、下划线、数字"
						},
						pwd:{
							required:"请输入密码",
							rangelength:jQuery.format("密码在6个字符及其以上")
						}
					}
				});
			});
		</script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
			body{
				font-size: 12px;
			}
		#div{
				width: 1366px;
				height: 768px;
				background-image: url("image/login.jpg");
				margin-top: -10px;
			}
			#regFrm{
				width:400px;
			   	position: relative;
			   	top:240px;
			}
			form#regFrm fieldset{
				border: 5px solid red;
				padding: 15px;
			}
			fieldset legend{
				margin-left: 15px;
				color:yellow;
				font-size: 25px;
			}
			#usernamee{
				color: yellow;
				font-size: 30px;
			}
			#userName{
				height: 30px;
			}
			#pwdd{
				color: yellow;
				font-size: 30px;
			}
			#pwd{
				height: 30px;
			}
			.submit{
				height: 25px;
				width:60px;
			}
			#adss{
				color: white;
			}
			input.txt{4
				border: 2px solid #c39;
				width: 200px;
			}
			input.btn{
				border: 2px solid #c39;
				width: 50px;
			}
		</style>
	

  </head>
  <body>
  	
     <center>
     <div id="div">
    <form id="regFrm" action="ZhuCeServlet" method="post">
			<fieldset>
				<legend>请输入注册信息</legend>
				<p><label for="userName" id="usernamee">用户名:</label>
					<input id="userName" name="name" />
				</p>
				<p><label for="pwd"n id="pwdd">密&nbsp码:</label>
					<input id="pwd" name="password" type="password"/>
				</p>
				<p><input class="submit" type="submit" value="注册"/></p>
			</fieldset>
		</form>
		</div>
	</center>
  </body>
</html>