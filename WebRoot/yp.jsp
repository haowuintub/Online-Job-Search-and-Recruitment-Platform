<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminyanzheng.jsp' starting page</title>
    

  </head>
  
  <body>
  <%

if((String)request.getSession().getAttribute("username")!=null &&  request.getSession().getAttribute("cx").equals("毕业生"))
{
	String id=request.getParameter("id");
	String mc=new String(request.getParameter("mc").getBytes("8859_1"));
	String gs=new String(request.getParameter("gs").getBytes("8859_1"));
	String sql="insert into ypjl(xh,xm,gwid,gwmc,gs) values('" + request.getSession().getAttribute("username") + "','" + request.getSession().getAttribute("gongsi") + "','" + id + "','" + mc + "','"+gs+"')";
	//out.print(sql);
	connDbBean.executeUpdate(sql);
	out.print("<script>alert('应聘成功，请耐心等待答复!!');location.href='"+request.getHeader("Referer")+"';</script>");
 
}
else

	{
	out.print("<script>alert('对不起，您还没登陆或您不是毕业生!!');location.href='"+request.getHeader("Referer")+"';</script>");

	}

	

  	  


 %>
  </body>
</html>

