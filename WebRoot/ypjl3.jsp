
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>岗位</title><LINK href="CSS.css" type=text/css 
rel=stylesheet>
    

  </head>

  <body >
  <p>所有应聘记录列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:岗位名称:
     <input name="bianhao" type="text" id="bianhao" />
     公司:
     <input name="gs" type="text" id="gs" />
      <input type="submit" name="Submit" value="查找" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>学号</td>
    <td bgcolor='#CCFFFF'>姓名</td>
    <td bgcolor='#CCFFFF'>岗位名称</td>
    <td bgcolor='#CCFFFF'>所在公司</td>
    <td width="138" align="center" bgcolor="CCFFFF">应聘时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <%
  String sql="";
  sql="select * from ypjl where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and gwmc like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("gs")=="" ||request.getParameter("gs")==null )
  {}
  else
  {
  	sql=sql+" and gs like '%"+new String(request.getParameter("gs").getBytes("8859_1"))+"%'";
  }
  
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String xh="";String xm="";String gwmc="";String gs="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
xh=RS_result.getString("xh");xm=RS_result.getString("xm");gwmc=RS_result.getString("gwmc");gs=RS_result.getString("gs");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=xh %></td><td><%=xm %></td><td><%=gwmc %></td><td><%=gs %></td><td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center">  <a href="del.jsp?id=<%=id %>&tablename=ypjl" onClick="confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
以上数据共<%=i %>条
  </body>
</html>

