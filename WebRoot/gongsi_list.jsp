
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
    
    <title>��˾</title><LINK href="CSS.css" type=text/css 
rel=stylesheet>
    

  </head>

  <body >
  <p>���й�˾�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:��ҵ:
     <input name="bianhao" type="text" id="bianhao" />
     ��˾����
     <input name="mingcheng" type="text" id="mingcheng" />
     <input type="submit" name="Submit" value="����" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�û���</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>��˾����</td><td bgcolor='#CCFFFF'>ע���ʽ�</td><td bgcolor='#CCFFFF'>�绰</td><td bgcolor='#CCFFFF'>��ַ</td><td bgcolor='#CCFFFF'>��ģ</td><td bgcolor='#CCFFFF'>��ҵ</td><td bgcolor='#CCFFFF'>���</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <%
  String sql="";
  sql="select * from gongsi where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and xingye like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null )
  {}
  else
  {
  	sql=sql+" and gongsimingcheng like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String yonghuming="";String mima="";String gongsimingcheng="";String zhucezijin="";String dianhua="";String dizhi="";String guimo="";String xingye="";String jianjie="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
yonghuming=RS_result.getString("yonghuming");mima=RS_result.getString("mima");gongsimingcheng=RS_result.getString("gongsimingcheng");zhucezijin=RS_result.getString("zhucezijin");dianhua=RS_result.getString("dianhua");dizhi=RS_result.getString("dizhi");guimo=RS_result.getString("guimo");xingye=RS_result.getString("xingye");jianjie=RS_result.getString("jianjie");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=yonghuming %></td><td><%=mima %></td><td><%=gongsimingcheng %></td><td><%=zhucezijin %></td><td><%=dianhua %></td><td><%=dizhi %></td><td><%=guimo %></td><td><%=xingye %></td><td><%=jianjie %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="gongsi_updt.jsp?id=<%=id%>">�޸�</a>  <a href="del.jsp?id=<%=id %>&tablename=gongsi" onClick="confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
�������ݹ�<%=i %>��
  </body>
</html>

