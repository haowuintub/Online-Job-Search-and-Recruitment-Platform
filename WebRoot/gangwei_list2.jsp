
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
    
    <title>��λ</title><LINK href="CSS.css" type=text/css 
rel=stylesheet>
    

  </head>

  <body >
  <p>���и�λ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:��˾:
     <input name="bianhao" type="text" id="bianhao" />
     ��λ����
     <input name="mingcheng" type="text" id="mingcheng" />
     <input type="submit" name="Submit" value="����" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>��˾</td><td bgcolor='#CCFFFF'>��λ����</td><td bgcolor='#CCFFFF'>��Ƹ����</td><td bgcolor='#CCFFFF'>�Ա�Ҫ��</td><td bgcolor='#CCFFFF'>��н</td><td bgcolor='#CCFFFF'>���</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <%
  String sql="";
  sql="select * from gangwei where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and gongsi like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null )
  {}
  else
  {
  	sql=sql+" and gangweimingcheng like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String gongsi="";String gangweimingcheng="";String zhaopinrenshu="";String xingbieyaoqiu="";String yuexin="";String jianjie="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
gongsi=RS_result.getString("gongsi");gangweimingcheng=RS_result.getString("gangweimingcheng");zhaopinrenshu=RS_result.getString("zhaopinrenshu");xingbieyaoqiu=RS_result.getString("xingbieyaoqiu");yuexin=RS_result.getString("yuexin");jianjie=RS_result.getString("jianjie");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=gongsi %></td><td><%=gangweimingcheng %></td><td><%=zhaopinrenshu %></td><td><%=xingbieyaoqiu %></td><td><%=yuexin %></td><td><%=jianjie %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="gangwei_updt.jsp?id=<%=id%>"></a>  <a href="del.jsp?id=<%=id %>&tablename=gangwei" onClick="confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
�������ݹ�<%=i %>��
  </body>
</html>

