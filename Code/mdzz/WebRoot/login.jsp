<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyLogin.jsp' starting page</title>
    
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
						
						pwd:{required:true,minlength:6}
						
					},
					//自定义消息提醒
					messages:{
						userName:{
							required:"请输入用户名",
							rangelength:"用户名的长度在2和10之间",
							regex:"用户名只能包含汉字、字母、下划线、数字"
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
				margin-top: -160px;
			}
			#regFrm{
				width:400px;
			   	position: relative;
			   	top:240px;
			}
			form#regFrm fieldset{
				border: 5px solid red;
				padding: 15px 15px 15px 15px;
			}
			fieldset legend{
				margin-left: 15px;
				color:yellow;
				font-size: 25px;
			}
			#p1{
				margin-left: 0px;
				margin-top: 30px;
			}
			#p2{
				margin-left: 0px;
			}
			#name{
				color: yellow;
				font-size: 30px;
			}
			#userName{
				height: 30px;
			}
			#pwd{
				height: 30px;
			}
			#pwdd{
				color: yellow;
				font-size: 30px;
			}
			.submit1{
				margin-left: 0px;
				height: 25px;
				width: 60px;
			}
			.submit2{
				margin-left: 40px;
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
    <form id="regFrm"  name="regFrm" action="LoginServlet" method="post">
			<fieldset style="margin-top: 150px">
				<legend>请输入登陆信息</legend>
				<p id="p1"><label for="userName" id="name">用户名</label>
					<input id="userName" name="userName"  type="text"/ >
				</p>
				
				<p id="p2"><label for="pwd" id="pwdd">密码：</label>
					<input id="pwd" name="pwd" type="password"/>
				</p>
				<input class="submit1" type="submit" value="登陆"/>
				
			</fieldset>
		</form>
   </div> 
   </center>
  </body>
</html>
