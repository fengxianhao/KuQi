package servlet;

//导入必需的 java 库
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


//扩展 HttpServlet 类
public class ErrorHandler extends HttpServlet {

	// 处理 GET 方法请求的方法
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Throwable throwable = (Throwable)
		request.getAttribute("javax.servlet.error.exception");
		Integer statusCode = (Integer)
		request.getAttribute("javax.servlet.error.status_code");
		String servletName = (String)
		request.getAttribute("javax.servlet.error.servlet_name");
		if (servletName == null){
			servletName = "Unknown";
		}
		String requestUri = (String)
		request.getAttribute("javax.servlet.error.request_uri");
		if (requestUri == null){
			requestUri = "Unknown";
		}
		// 设置响应内容类型
		response.setContentType("text/html;charset=UTF-8");
	
		PrintWriter out = response.getWriter();
		String title = "您的网页返回给您了一错误，但是您的网页并不打算处理这个错误！";
	   
		String docType = "<!DOCTYPE html>\n";
		out.println(docType +
	    	"<html>\n" +
	     	"<head><title>" + title + "</title></head>\n" +
	     	"<body bgcolor=\"#f0f0f0\">\n");
	   	out.println("<h1>错误信息丢失</h1>");
	   	if (throwable == null && statusCode == null){
	      	out.println("<h2>错误信息丢失</h2>");
	      	out.println("请返回 <a href=\"" + 
	        response.encodeURL("http://localhost:8080/EasyUi_admin/loginback.jsp") + 
	        	"\">主页</a>。");
	   	}else if (statusCode != null) {
	      	out.println("错误代码 : " + statusCode);
	      	out.println("<br><br><br>" + "这是一个错误后的页面，当看到这个页面后请检查您指定访问的位置是否是一个空位置！");
		}else{
		   	out.println("<h2>错误信息</h2>");
	      	out.println("Servlet Name : " + servletName + 
	                          "</br></br>");
	      	out.println("异常类型 : " + 
	                          throwable.getClass( ).getName( ) + 
	                          "</br></br>");
	      	out.println("请求 URI: " + requestUri + 
	                          "<br><br>");
	      	out.println("异常信息: " + 
	                              throwable.getMessage( ));
	      	out.println("<br><br><br> " + "这是一个错误后的异常界面，当看到这个页面后请检查您刚才的操作是否有问题。如果您无法解决此问题，请点击");
	      	out.println("<h1><a href='http://localhost:8080/EasyUi_admin/loginback.jsp'>点我返回一个正确的页面！</a></h1>");
	   	}
	   	out.println("</body>");
	   	out.println("</html>");
	}
	// 处理 POST 方法请求的方法
	public void doPost(HttpServletRequest request,
	                  HttpServletResponse response)
	   throws ServletException, IOException {
		doGet(request, response);
	}
}