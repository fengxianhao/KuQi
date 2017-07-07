<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.Dbmanage"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车</title>

<link rel="stylesheet" href="css/style.css"/>

<script type="text/javascript" src="js/demo.js"></script>

</head>
<%
if(session.getAttribute("userName")!=null)
{
%>
<body>
<div class="catbox">

	<table id="cartTable">
		<thead>
			<tr>
				<th><label><input class="check-all check" type="checkbox"/>&nbsp;全选</label></th>
				<th>商品</th>
				<th>单价</th>
				<th>数量</th>
				<th>小计</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<%
		          request.setCharacterEncoding("utf-8");
		          ResultSet rst=Dbmanage.runSelectSql("select * from gouwuche");
		          while(rst.next()){
		 %>
			<tr>
				<td class="checkbox"><input class="check-one check" type="checkbox"/></td>
				<td class="goods"><img src="image2/<%=rst.getString("gshow") %>" alt=""/><span><%=rst.getString("gName") %></span></td>
				<td class="price"><%=rst.getFloat("price") %></td>
				<td class="count"><span class="reduce"></span><input class="count-input" type="text" value="1" id="num"/><span class="add">+</span></td>
				<td class="subtotal"><%=rst.getFloat("price")%></td>
				<td class="operation"><span class="delete">删除</span></td>
			</tr>
			<%
		   	 }
			 %>	
		</tbody>
	</table>
	
	<div class="foot" id="foot">
		<label class="fl select-all"><input type="checkbox" class="check-all check"/>&nbsp;全选</label>
		<div class="fr closing"><a href="ShopingServlet?method=jiesuan" >结算</a> </div>
		<div class="fr total">合计：￥<span id="priceTotal">0.00</span></div>
		<div class="fr selected" id="selected">已选商品<span id="selectedTotal">1</span>件<span class="arrow up">︽</span><span class="arrow down">︾</span></div>
		<div class="selected-view">
			<div id="selectedViewList" class="clearfix">
				<div><img src="image/1.jpg"><span>取消选择</span></div>
			</div>
			<span class="arrow">◆<span>◆</span></span>
		</div>
	</div>

</div>

</body>
<%
}
else
{%>
<script type="text/JavaScript">
<jsp:forward page="login.jsp"/>
</script>
<%}
%>
</html>