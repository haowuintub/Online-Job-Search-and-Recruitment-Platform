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
String yonghuming=request.getParameter("yonghuming");String mima=request.getParameter("mima");String gongsimingcheng=request.getParameter("gongsimingcheng");String zhucezijin=request.getParameter("zhucezijin");String dianhua=request.getParameter("dianhua");String dizhi=request.getParameter("dizhi");String guimo=request.getParameter("guimo");String xingye=request.getParameter("xingye");String jianjie=request.getParameter("jianjie");

String sql="update gongsi set yonghuming='"+yonghuming+"',mima='"+mima+"',gongsimingcheng='"+gongsimingcheng+"',zhucezijin='"+zhucezijin+"',dianhua='"+dianhua+"',dizhi='"+dizhi+"',guimo='"+guimo+"',xingye='"+xingye+"',jianjie='"+jianjie+"' where yonghuming='"+request.getSession().getAttribute("username")+"'";
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='gongsi_updt2.jsp';</script>");
%>
  </body>
</html>


