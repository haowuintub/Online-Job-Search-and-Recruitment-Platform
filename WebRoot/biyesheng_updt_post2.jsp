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
String xuehao=request.getParameter("xuehao");String xingming=request.getParameter("xingming");String xingbie=request.getParameter("xingbie");String minzu=request.getParameter("minzu");String chushengnianyue=request.getParameter("chushengnianyue");String jiatingzhuzhi=request.getParameter("jiatingzhuzhi");String ruxiaoshijian=request.getParameter("ruxiaoshijian");String xibu=request.getParameter("xibu");String techang=request.getParameter("techang");String zhuanye=request.getParameter("zhuanye");String mima=request.getParameter("mima");String jianli=request.getParameter("jianli");

String sql="update biyesheng set xuehao='"+xuehao+"',xingming='"+xingming+"',xingbie='"+xingbie+"',minzu='"+minzu+"',chushengnianyue='"+chushengnianyue+"',jiatingzhuzhi='"+jiatingzhuzhi+"',ruxiaoshijian='"+ruxiaoshijian+"',xibu='"+xibu+"',techang='"+techang+"',zhuanye='"+zhuanye+"',mima='"+mima+"',jianli='"+jianli+"' where xuehao='"+request.getSession().getAttribute("username")+"'";
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='biyesheng_updt2.jsp';</script>");
%>
  </body>
</html>


