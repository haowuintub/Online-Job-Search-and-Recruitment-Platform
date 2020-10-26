<%@ page language="java"  pageEncoding="gb2312" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("gb2312"); 
response.setCharacterEncoding("gb2312"); 
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminyanzheng.jsp' starting page</title>
  </head>
  <body>
  <%
String gongsi=request.getParameter("gongsi");String gangweimingcheng=request.getParameter("gangweimingcheng");String zhaopinrenshu=request.getParameter("zhaopinrenshu");String xingbieyaoqiu=request.getParameter("xingbieyaoqiu");String yuexin=request.getParameter("yuexin");String jianjie=request.getParameter("jianjie");
String id=request.getParameter("id");
String sql="update gangwei set gongsi='"+gongsi+"',gangweimingcheng='"+gangweimingcheng+"',zhaopinrenshu='"+zhaopinrenshu+"',xingbieyaoqiu='"+xingbieyaoqiu+"',yuexin='"+yuexin+"',jianjie='"+jianjie+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='gangwei_list.jsp';</script>");
%>
  </body>
</html>


