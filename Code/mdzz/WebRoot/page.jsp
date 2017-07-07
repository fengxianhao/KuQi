
<%@ page import="model.GoodsInfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<title>酷奇网 - 中国最大的智能硬件体验平台</title>
<script type="text/javascript" src="js/jquery1.42.min.js"></script>
<script type="text/javascript">
			//搜索
			function a(){
				var opt=$("#opt").val();
				window.location.href="MyFirstServlet?opt="+opt;
			}
		</script>
<link rel="stylesheet" href="css/qikoo.css">
<style type="text/css">
.one {
	position: relative;
	top: -325px;
	left: 800px;
}
</style>

</head>
<body>
	<div class="mod-header">
		<div class="header-container">
			<a class="header-logo" href="MyFirstServlet"> <img
				src="image/t0137d45493656b77d1.png">
			</a>
			<div class="header-search" id="qHeaderSearch">
				<input class="search-input" placeholder="输入酷品关键词" id="opt">
				<a class="search-submit" id="shous" onclick="a()">搜&nbsp;&nbsp;&nbsp;索</a>

			</div>
			<div>
				<% 
				if(session.getAttribute("userName")!=null){
					%>
				<a style="color: white">用户：<%=session.getAttribute("userName") %></a>
				<a href="logout.jsp" style="color: white">注销</a>
				<%
				}else{
					%>
				<a href="login.jsp" style="color: white">登录</a> <a href="MyZhuCe.jsp" style="color: white">注册</a>
				<% 
				}
			 %>
				<a href="loginback.jsp" style="color: white">后台登录</a>
			</div>
		</div>
	</div>

	<div class="i_content c m-t-20" id="page_index">

		<div class="f f28 b black m-t-30">

			<a href="#" class="catetitle_more"></a>
		</div>

		<div class="category f m-t-20">
			<div class="fl" style="width: 600px">
				<div class="s_a fl">
					<a href="MyFirstServlet">全部</a>
				</div>
				<span class="cut"></span>
				<div class="s_k fl">
					<a href="MyFirstServlet?opt=智能家居">智能家居</a> <a
						href="MyFirstServlet?opt=健康医疗">健康医疗</a> <a
						href="MyFirstServlet?opt=运动休闲">运动休闲</a> <a
						href="MyFirstServlet?opt=娱乐生活">娱乐生活</a>
				</div>

			</div>
		</div>

		<div class="f m-t-20" id="div1">
			<ul class="mod2">
				<c:forEach var="varName" items="${userInfoList }">
					<li class="mod-product" data-hover-binded="1"><a
						href="${ varName.goodsID}.jsp" target="_blank" class="product-img">
							<img src="image/${varName.gShow}">
					</a>
						<div class="product-info">
							<div class="product-title f f16">
								<a href="" target="_blank" class="white">${ varName.gName} </a>
							</div>

						</div>
						<div class="status s_pink">${ varName.gStatus}</div></li>
				</c:forEach>
				<li class="rel m-l-35"><a href="Myservlet" target="_blank"
					class="mod_img" module-tag="h_viewmore"> <img
						src="image/t0143c805c9d49cb48a.jpg">
				</a></li>
			</ul>
		</div>
	</div>




	<div class="mod-footer">
		<div class="footer-copyright">酷奇网©2013-2014&nbsp; |
			京ICP备11014623号-3</div>
	</div>


</body>
</html>
