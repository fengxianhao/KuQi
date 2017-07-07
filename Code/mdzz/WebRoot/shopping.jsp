<%@page import="dao.DriverManagers2"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>后台管理界面</title>
		<style type="text/css">
td {
	text-align: center;
	width: 150px;
}

th {
	background: #ccc;
}

table {
	z-index: auto;
	background-image: url(image/11.jpg);
}

body {
	background: url("image/016.jpg");
	background-size: cover;
}
</style>


		<script type="text/javascript">
	function forwordPage() {
		var page = document.getElementById("page").value;
		if (isNaN(page)) {
			alert("请输入一个数字");
		} else {
			if (page != "" && page != " ") {
				window.location.href = "http://localhost:8080/KuQi/shopping.jsp?page="
						+ (page - 1);
			} else {
				alert("内容不能为空！");
			}
		}
	}
	
	/*function rec()  
{  
    var mymessage=confirm("你确定删除吗？");  
    if(mymessage==true)  
    {  
        document.write("确定");  
    }  
    else if(mymessage==false)  
    {  
        document.write("");  
    }  
}  */
	
	
	function confirmAct() 
{ 
  if(confirm('确定要执行此操作吗?')) 
  { 
    return true; 
  } 
  return false; 
} 
	
</script>

<%
	String userName = (String)session.getAttribute("username");
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
			Connection conn = DriverManagers2.getConnection1();

			String sqlTwo = "select count(*) total from manage";
			PreparedStatement ps1 = conn.prepareStatement(sqlTwo);
			ResultSet rstTwo = ps1.executeQuery();
			rstTwo.next();
			int total = rstTwo.getInt("total");
			int z = 0; //总页数
			if (total % 3 == 0) {
				z = total / 3;
			} else {

				z = total / 3 + 1;
			}
			String p = request.getParameter("page");
			int pa = 0;
			if (p != null) {
				pa = Integer.parseInt(p);
			}
			else if ((pa + 1) < 1) {
				pa = 0;
				out.print("<script>alert('亲，这已经是第一页了！');</script>");
				//alert("亲，已经是第一页了！");
			}
			else if ((pa + 1) > z) {
				pa = z - 1;
				out.print("<script>alert('亲,这已经是最后一页了！');</script>");
				//salert("亲,已经是最后一页了！");
			}
			
			
			String sql = "select * from manage limit " + pa * 3 + "," + 3;
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
		%>

		<table border="1" align="center">
			<tr id="tr">
				<th>
					商品编号
				</th>
				<th>
					商品名
				</th>
				<th>
					商品展示
				</th>
				<th>
					商品价格
				</th>
				
				<th>
					操作
				</th>
			</tr>
			<%
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getInt("goodsID")%></td>
				<td><%=rs.getString("gName")%></td>				
				<td>
					<img width="350px" height="250px"
						src="image/<%=rs.getString("gShow")%>"></img>
				</td>
				<td><%=rs.getString("price")%></td>
				
				<td>
					<a href="deleteShopping.jsp?goodsID=<%=rs.getString("goodsID")%>"
						style="text-decoration: none; color: red" onclick="return confirmAct();">删除</a>

					<a href="updateShopping.jsp?goodsID=<%=rs.getString("goodsID")%>"
						style="text-decoration: none; color: red">修改</a>
				</td>
			</tr>
			<%
				}
			%>

			<tr>
				<td colspan="3" style="text-align: center;">
					<a href="shopping.jsp?page=<%=pa - 1%>">上一页</a>
					<a href="shopping.jsp?page=<%=pa + 1%>">下一页</a> 跳转到:
					<input type="text" id="page" style="width: 30px">
					&nbsp;
					<input type="button" value="跳转" onclick="forwordPage()">
					共<%=z%>页
				</td>
				<td></td>
				<td style="left: 30px">
					<a href="add.jsp" style="text-decoration: none; color: red;">添加商品</a>
				</td>

			</tr>
		</table>

	</body>
</html>
